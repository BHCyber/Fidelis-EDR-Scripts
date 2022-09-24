Set wshShell = CreateObject("WScript.Shell")
wshProgramDataEnv = wshShell.ExpandEnvironmentStrings("%windir%")

Set strArrayList = CreateObject("System.Collections.ArrayList")
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(wshProgramDataEnv & "\System32\drivers\etc\hosts", 1)
row = 0
Do Until file.AtEndOfStream
  line = file.Readline
  

  If StrComp(Mid(line,1,1),"#") <> 0 Then
	strArrayList.Add Replace(Replace(line," ",",",1,1),"#",",",1,1)

  End If
  
  
Loop

file.Close

For Each line in strArrayList
  WScript.StdOut.WriteLine line
Next

WScript.Quit 0
