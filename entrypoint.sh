#!/bin/sh

VERSION="$(cat VERSION)"
echo "Version: $VERSION"
if gh release view "v$VERSION" --repo="$GITHUB_REPOSITORY" > /dev/null 2>&1; then
  echo "Release v$VERSION already exists"
else
  gh release create "v$VERSION" \
    --repo="$GITHUB_REPOSITORY" \
    --title="Version $VERSION" \
    --generate-notes
fi
