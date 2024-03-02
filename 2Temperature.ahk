#SingleInstance, Force

active := 0

Gui, Color, white
Gui, Font, s10
Gui, Add, Edit, Center Section vC gCelcius w100 h20 , 
Gui, Add, Text, ys Center w100 h20 , Celcius =
Gui, Add, Edit, ys Center Section vF gFahrenheit w100 h20 ,
Gui, Add, Text, ys Center w100 h20 , Fahrenheit
Gui, Add, Button, ys Center w100 gControl Default, Convert
Gui, Show, ,TempConv
Return

Celcius:
active := 0
Return

Fahrenheit:
active := 1
Return

Control:
Gui, Submit, NoHide
if(active == 0){
    F := 9/5*C + 32
}else{
    C := (F-32)*5/9
}
GuiControl, Text, F, %F%
GuiControl, Text, C, %C%
Return