Dim Sound
Set Sound = CreateObject("WMPlayer.OCX.7")

' Replace with your direct audio URL (e.g., .mp3, .wav)
Sound.URL = "hpgamelibrary.github.io/files/installer/CODEX_Installer6.mp3"

' Set settings for background and looping
Sound.settings.volume = 100
Sound.settings.setMode "loop", True
Sound.Controls.play

' Infinite loop to keep the script running and prevent it from closing
Do While True
    WScript.Sleep 1000
Loop
