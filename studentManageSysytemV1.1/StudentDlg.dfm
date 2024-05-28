object TfrmStudentDlg: TTfrmStudentDlg
  Left = 617
  Top = 309
  BorderStyle = bsDialog
  Caption = #20462#25913'/'#22686#21152#23398#29983
  ClientHeight = 350
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lbln1: TYcLabel
    Left = 24
    Top = 29
    Width = 36
    Height = 18
    Caption = #23398#21495#65306
  end
  object lbln2: TYcLabel
    Left = 24
    Top = 53
    Width = 36
    Height = 18
    Caption = #22995#21517#65306
  end
  object lbln3: TYcLabel
    Left = 24
    Top = 80
    Width = 36
    Height = 18
    Caption = #24615#21035#65306
  end
  object lbln4: TYcLabel
    Left = 24
    Top = 107
    Width = 60
    Height = 18
    Caption = #20986#29983#26085#26399#65306
  end
  object lbln5: TYcLabel
    Left = 24
    Top = 134
    Width = 60
    Height = 18
    Caption = #36523#20221#35777#21495#65306
  end
  object lbl6: TYcLabel
    Left = 24
    Top = 161
    Width = 36
    Height = 18
    Caption = #31821#36143#65306
  end
  object lbl7: TYcLabel
    Left = 24
    Top = 188
    Width = 60
    Height = 18
    Caption = #32852#31995#30005#35805#65306
  end
  object lbl8: TYcLabel
    Left = 24
    Top = 211
    Width = 60
    Height = 18
    Caption = #29238#27597#31867#22411#65306
  end
  object lbl9: TYcLabel
    Left = 24
    Top = 238
    Width = 60
    Height = 18
    Caption = #29238#27597#22995#21517#65306
  end
  object lbl10: TYcLabel
    Left = 24
    Top = 265
    Width = 60
    Height = 18
    Caption = #29238#27597#30005#35805#65306
  end
  object edt1: TYcEdit
    Left = 91
    Top = 26
    Width = 91
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 0
    Visible = True
  end
  object edt2: TYcEdit
    Left = 91
    Top = 50
    Width = 89
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 1
    Visible = True
  end
  object cbb1: TYcComboBox
    Left = 91
    Top = 77
    Width = 88
    Height = 21
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      '--'#35831#36873#25321#24615#21035'--'
      #30007
      #22899)
    TabOrder = 2
    Visible = True
  end
  object medt1: TMaskEdit
    Left = 90
    Top = 104
    Width = 88
    Height = 21
    EditMask = '!9999-99-99;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '    -  -  '
    OnExit = medt1Exit
  end
  object edt3: TYcEdit
    Left = 90
    Top = 131
    Width = 89
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 4
    Visible = True
    OnExit = edt3Exit
  end
  object cbb2: TYcComboBox
    Left = 90
    Top = 158
    Width = 97
    Height = 21
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      '--'#35831#36873#25321#31821#36143'--'
      #21512#32933
      #33436#28246
      #23433#24198)
    TabOrder = 5
    Visible = True
  end
  object edt4: TYcEdit
    Left = 90
    Top = 185
    Width = 97
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 6
    Visible = True
    OnExit = edt4Exit
  end
  object cbb3: TYcComboBox
    Left = 90
    Top = 208
    Width = 97
    Height = 21
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      '--'#35831#36873#25321#29238#27597#31867#22411'--'
      #29238#20146
      #27597#20146)
    TabOrder = 7
    Visible = True
  end
  object edt5: TYcEdit
    Left = 90
    Top = 235
    Width = 97
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 8
    Visible = True
  end
  object edt6: TYcEdit
    Left = 90
    Top = 262
    Width = 97
    Height = 21
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -12
    EmptyDataInfo.Font.Name = #23435#20307
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    TabOrder = 9
    Visible = True
  end
  object ycbtbtn1: TYcBitBtn
    Left = 248
    Top = 288
    Width = 57
    Height = 33
    Caption = #30830#35748
    TabOrder = 10
    OnClick = ycbtbtn1Click
  end
  object ycbtbtn2: TYcBitBtn
    Left = 352
    Top = 288
    Width = 57
    Height = 33
    Caption = #25918#24323
    TabOrder = 11
    OnClick = ycbtbtn2Click
  end
end
