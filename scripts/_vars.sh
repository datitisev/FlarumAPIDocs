#!/bin/bash -l

set -e

export style="\e[1;34m"
export reset="\e[0m"

export SCRIPTS_PATH=$(dirname $0)
export REPO_PATH=$(cd $SCRIPTS_PATH; cd ..; pwd)
export FLARUM_PATH="${REPO_PATH}/flarum";

echo -e "${style}Using flarum/core @ $FLARUM_PATH$reset"

echo "FLARUM_SHA=$(cd $FLARUM_PATH && git rev-parse --verify HEAD --short)" >> $GITHUB_ENV