#!/usr/bin/env bash
# Moves the floating tags of a release vX.Y.Z to its commit:
# vX.Y.x when it is the latest release of X.Y, and vX.x.x when it is the latest of X.
# A tag that is not vX.Y.Z moves nothing.
set -euo pipefail

release=$1
remote=${2:-origin}

if [[ ! $release =~ ^v([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
	echo "$release is not of the form vX.Y.Z: no floating tag moves."
	exit 0
fi
major=${BASH_REMATCH[1]}
minor=${BASH_REMATCH[2]}
commit=$(git rev-parse "$release^{commit}")

latest() {
	git tag --list "$1" | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' | sort -V | tail -n 1
}

moved=()
if [[ $(latest "v$major.$minor.*") == "$release" ]]; then
	moved+=("v$major.$minor.x")
fi
if [[ $(latest "v$major.*") == "$release" ]]; then
	moved+=("v$major.x.x")
fi

for tag in "${moved[@]}"; do
	git tag --force "$tag" "$commit"
	git push --force "$remote" "refs/tags/$tag"
	echo "$tag -> $release ($commit)"
done
if [[ ${#moved[@]} -eq 0 ]]; then
	echo "$release is older than the latest release of v$major.$minor: no floating tag moves."
fi
