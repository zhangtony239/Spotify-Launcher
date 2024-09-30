#Requires AutoHotkey v2
#NoTrayIcon

Run(EnvGet("USERPROFILE") "\AppData\Roaming\Spotify\Spotify.exe")

SetTimer(CheckSpotify, 1000)

CheckSpotify() {
    if !ProcessExist("Spotify.exe") {
        ExitApp
    }
}

#HotIf WinActive("ahk_exe Spotify.exe")
!F4::
{
    Send("{Alt down}{Space}")
    Sleep(100)
    Send("c")
    Send("{Alt up}")
}
#HotIf