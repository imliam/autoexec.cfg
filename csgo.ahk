;
; Counter Strike: Global Offensive AHK Scripts
;
; These scripts will only be active when csgo.exe is the active window.
; They are meant purely to play around with, not to use in public games.
;

SetTitleMatchMode 2

#IfWinActive, Counter-Strike: Global Offensive
{

    ;
    ; Jump and shoot at the apex of the jump by tapping the F key
    ;
    Hotkey, right, JUMPSCOUT
    return

    JUMPSCOUT:
        Send {Space}
        Sleep 340
        Send {LButton down}
        Send {LButton up}
    return

    ;
    ; Bunnyhop by holding spacebar
    ;
    bhop = true

    *~space::
        if (bhop = true) {
            Loop
            {
                GetKeyState, state, space, P
                if state = U
                break

                Send,{space}
                Sleep,20
            }
        }
    return

    left::
        if (bhop = "true") {
            bhop = false
        } else {
            bhop = true
        }
    return
}
