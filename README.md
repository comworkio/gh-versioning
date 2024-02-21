# GitHub Versionning

👋 Welcome to GitHub Versionning!

This action checks if a GitHub release exists for the version specified in the `VERSION` file of your repository. If the release does not exist, it creates a new one.

## Inputs

This action does not require any inputs.

## Outputs

This action does not produce any outputs.

## Example usage

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v3

  - name: Check and create release
    uses: comworkio/gh-versioning@version
    env:
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
