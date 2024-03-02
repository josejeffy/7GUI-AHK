#SingleInstance, Force

i := 0

Gui, Color, white
Gui, Font, s10
Gui, Add, Text, Center Section vCurrentCount w100 h20 , %i% 
Gui, Add, Button, ys gCount w100, Count
Gui, Show, ,Counter

Return

Count:
Gui, Submit, NoHide
i := i + 1
GuiControl, Text, CurrentCount, %i%
Return
