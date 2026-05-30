#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

git add index.html .gitignore publish.sh

if git diff --cached --quiet; then
  echo "LATORA: no changes to publish."
  exit 0
fi

git commit -m "Update LATORA landing page"
git push origin main

echo "LATORA published: https://valeriiagolovina.github.io/latora/"
