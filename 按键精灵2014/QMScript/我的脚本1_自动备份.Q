[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=1daf5c51-9b23-4653-9b5d-a11686d66bf1
Description=我的脚本1_自动备份
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]


//Hwnd1 = 463852
Hwnd = 527544
Import "e:\obj.vbs"
set dm = createobject("dm.dmsoft")
base_path = dm.GetBasePath()
TracePrint base_path
dm_ret = dm.Reg("killergui2147a5bb90ae5085c0ea30d6968e7657","")
TracePrint dm_ret
dm_ret = dm.SetPath(base_path)
TracePrint dm_ret
dm_ret = dm.SetDict(0, "dm_soft.txt")
TracePrint dm_ret
dm_ret = dm.BindWindow(Hwnd, "dx2", "dx", "normal", 0)
TracePrint dm_ret

title = dm.GetWindowTitle(Hwnd)
test = Left(title,8)
TracePrint test
dm_ret = dm.FindStrFast(3, 55, 130, 450, test, "ffffff-111111|e8c0ff-111111|ede0e0-111111|f3ffc0-111111|f9e09e-111111|ede0ff-111111|f3ffe0-111111|e29ee0-111111", 1, intX, intY)

TracePrint intX

dm_ret = dm.FindMultiColor(263,953,423,1012,"3c7ac5-0","96|-6|3c7ac5-0,97|-44|3c7ac5-0,-16|-38|3c7ac5-0",0.9, 1,intX,intY)

TracePrint dm_ret

//276,89,326,365
s = dm.Ocr(276, intY - 20, 326, intY + 20, "ffffff-111111|e8c0ff-111111|ede0e0-111111|f3ffc0-111111|f9e09e-111111|ede0ff-111111|f3ffe0-111111|e29ee0-111111", 1)
TracePrint s
//Delay 1500
//dm_ret = dm.Capture(0, 0, 2000, 2000, "123.bmp")
//dm_ret = dm.FindStr(0, 0, 628, 1041, "叼", "111111-111111|050505-111111|363636-111111",0.8, intX, intY)
TracePrint intX&","&intY
Sub OnScriptExit()
    TracePrint "解除绑定"
    dm_ret = dm.UnBindWindow()
    Set dm = nothing'释放对象
End Sub
