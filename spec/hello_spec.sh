# shellcheck shell=sh

Describe 'hello.sh'
  Include src/hello.sh
  Describe 'hello()'
    It 'says hello'
      When call hello shellspec
      The output should equal 'Hello shellspec!'
    End
  End
End
