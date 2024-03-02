#SingleInstance, Force

Gui, Color, white
Gui, Add, DropDownList, vMode gUpdate ,one-way|with-return
Gui, Add, DateTime, vFirst gReturnSelection, LongDate
Gui, Add, DateTime, vSecond Disabled gReturnSelection, LongDate
Gui, Show, , Book Flights
Return

Update:
Gui, Submit, NoHide
if(Mode == "one-way"){
    GuiControl, Disable, Second
}else{
    GuiControl, Enable, Second
}
Return

ReturnSelection:
Gui, Submit, NoHide
if(Second<First){
    msgbox Error - Returning before intial flight
}
Return