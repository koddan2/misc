Import-Module "$PSScriptRoot\..\Common.psm1" -Force
& (Get-DockerCommand) run --rm -itv ${pwd}:/workdir -w /workdir docker.io/node:19-alpine $args