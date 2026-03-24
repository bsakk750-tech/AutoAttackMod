#!/usr/bin/env sh

GRADLE_VERSION=7.2
BASE_DIR=$(dirname "$0")

# Find the project's root directory
if [ -x "$BASE_DIR/gradle" ]; then
  export GRADLE_HOME="$BASE_DIR/gradle"
else
  echo "Gradle directory 'gradle' not found in project root."
  exit 1
fi

exec "$GRADLE_HOME/bin/gradle" "$@"