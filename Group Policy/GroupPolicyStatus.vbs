groupPolicyID = Wscript.Arguments.Item(0)


strComputer = "."
Set objWMIService = GetObject _
    ("winmgmts:\\" & strComputer & "\root\rsop\computer")

Set colItems = objWMIService.ExecQuery("Select * from RSOP_PolicySetting")

For Each objItem in colItems
	If 	InStr(objItem.GPOID,groupPolicyID) > 0  Then
		WScript.StdOut.WriteLine "Enabled,Windows 10 Security Baseline"
		WScript.Quit 0
	End If		
Next

WScript.StdOut.WriteLine "Disabled,None"
WScript.Quit 0