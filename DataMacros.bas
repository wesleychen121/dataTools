Attribute VB_Name = "DataMacros"
Sub RaymondSimon()
Attribute RaymondSimon.VB_Description = "Fill in for lawyer Raymond S"
Attribute RaymondSimon.VB_ProcData.VB_Invoke_Func = "R\n14"
'
' RaymondSimon Macro
'

'
    ActiveCell.FormulaR1C1 = "Raymond F. Simon"
    ActiveCell.Offset(0, 1).Range("A1").Select
    ActiveCell.FormulaR1C1 = "511 Civic Center"
End Sub
Sub NoJury()
Attribute NoJury.VB_Description = "No Jury trial + all associated cells"
Attribute NoJury.VB_ProcData.VB_Invoke_Func = "J\n14"
'
' NoJury Macro
'
' Keyboard Shortcut: Ctrl+Shift+J
'
    ActiveCell.Select
    ActiveCell.FormulaR1C1 = "No"
    ActiveCell.Select
    ActiveCell.FormulaR1C1 = "No"
    ActiveCell.Offset(0, 11).Range("A1").Select
    ActiveCell.FormulaR1C1 = "Not filed"
    ActiveCell.Offset(0, 2).Range("A1").Select
    ActiveCell.FormulaR1C1 = "No"
    ActiveCell.Select
End Sub
Sub NoThirdNoA()
Attribute NoThirdNoA.VB_Description = "Enters No for Third_Party_Intervention and Appealed"
Attribute NoThirdNoA.VB_ProcData.VB_Invoke_Func = "P\n14"
'
' NoThirdNoA Macro
' Enters No for Third_Party_Intervention and Appealed
'
' Keyboard Shortcut: Ctrl+Shift+T
'
    ActiveCell.FormulaR1C1 = "No"
    ActiveCell.Offset(0, 1).Range("A1").Select
    ActiveCell.FormulaR1C1 = "No"
    ActiveCell.Select
End Sub
Sub FinalLiability()
Attribute FinalLiability.VB_Description = "Copies defendants to final_liability cell"
Attribute FinalLiability.VB_ProcData.VB_Invoke_Func = "F\n14"
'
' FinalLiability Macro
' Copies plaintiffs to final_liability cell
'
' Keyboard Shortcut: Ctrl+Shift+F
'
    ActiveCell.Offset(0, -25).Range("A1").Select
    Selection.Copy
    ActiveCell.Offset(0, 25).Range("A1").Select
    ActiveSheet.Paste
End Sub
Sub FinalJudgement()
Attribute FinalJudgement.VB_Description = "Copies jury verdict text to the final judgement text cell"
Attribute FinalJudgement.VB_ProcData.VB_Invoke_Func = "T\n14"
'
' FinalJudgement Macro
' Copies jury verdict text to the final judgement text cell
'
' Keyboard Shortcut: Ctrl+Shift+T
'
    ActiveCell.Offset(0, -11).Range("A1").Select
    Selection.Copy
    ActiveCell.Offset(0, 11).Range("A1").Select
    ActiveSheet.Paste
End Sub
