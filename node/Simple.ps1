Import-Module "$PSScriptRoot\..\Common.psm1" -Force
& (Get-DockerCommand) run --rm `
    -it `
    -v ${pwd}:/workdir `
    -w /workdir `
    docker.io/node:19-alpine @args