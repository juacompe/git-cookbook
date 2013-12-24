#!/usr/bin/env bats

@test "git binary is found in path" {
    run which git
    [ "$status" -eq 0 ]
}
