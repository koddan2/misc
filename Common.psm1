$LocalEnv = Import-LocalizedData -BaseDirectory "$PSScriptRoot" -FileName ".env.psd1"

function Get-DockerCommand {
    return $LocalEnv.DOCKER_COMMAND
}
Export-ModuleMember -Function Get-DockerCommand