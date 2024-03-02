#SingleInstance, Force

Gui, Color, white
Gui, Add, Text, w100 Section,Duration
Gui, Add, Slider, w300 ys
Gui, Add, Text, ys w100 Right, 0s
Gui, Add, Progress, xs w500, 100
Gui, Add, Button, xs, Reset
Gui, Show, ,Timer
Return