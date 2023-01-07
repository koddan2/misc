Import-Module "$PSScriptRoot\..\Common.psm1" -Force
& (Get-DockerCommand) run -it --rm `
    -v ${pwd}:/mnt/volume `
    --workdir=/mnt/volume `
    docker.io/anatolelucet/neovim:stable