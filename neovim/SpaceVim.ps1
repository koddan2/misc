using namespace System.IO

Import-Module "$PSScriptRoot\..\Common.psm1" -Force

$_spaceVimDirectory = "${HOME}/.SpaceVim.d"

if (-not [Directory]::Exists($_spaceVimDirectory)) {
    [Directory]::CreateDirectory($_spaceVimDirectory);
}

& (Get-DockerCommand) run -it --rm `
    -v ${_spaceVimDirectory}:/home/spacevim/.SpaceVim.d `
    -v ${pwd}:/home/spacevim/workdir `
    -w /home/spacevim/workdir `
    docker.io/spacevim/spacevim nvim @args