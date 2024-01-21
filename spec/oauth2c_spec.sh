# shellcheck shell=sh

Describe 'oauth2c'
  Include src/oauth2c.sh
  Describe 'oauth2c()'
    It 'shows version'
      When call oauth2c
      The stderr should equal 'oauth2c version master (commit none, built at unknown)'
    End
  End
End
