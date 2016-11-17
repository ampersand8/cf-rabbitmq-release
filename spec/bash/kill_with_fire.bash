#!/usr/bin/env bash

# basht macro, shellcheck fix
export T_fail

# shellcheck disable=SC1091
. spec/bash/test_helpers

# . jobs/rabbitmq-server/templates/kill_with_fire.bash

in_tmp_dir() {
  local tmp_dir
  tmp_dir="$(mktemp -d 2>/dev/null || mktemp -d -t kill_with_fire)" || exit
  cd "$tmp_dir" || exit
}

# /inexistent
# ""
# 0
# [actual pid], gets killed
