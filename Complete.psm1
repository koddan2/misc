function Start-SpaceVim {
    & $PSScriptRoot\neovim\SpaceVim.ps1 $args
}
New-Alias -Name _nvim -Value Start-SpaceVim

function Start-NodeJs {
    & $PSScriptRoot\node\Simple.ps1 $args
}
New-Alias -Name _node -Value Start-NodeJs

Export-ModuleMember `
    -Function Start-SpaceVim, Start-NodeJs `
    -Alias _nvim, _node