object TfrmStudentList: TTfrmStudentList
  Left = 480
  Top = 231
  BorderWidth = 1
  Caption = #23398#29983#31649#29702#31995#32479
  ClientHeight = 559
  ClientWidth = 782
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object YcPanel1: TYcPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 559
    Align = alClient
    AutoSize = True
    BorderWidth = 1
    Color = clWhite
    GradientColorStart = clBtnFace
    TabOrder = 0
    object YcDBGrid5: TYcDBGrid
      AlignWithMargins = True
      Left = 207
      Top = 1
      Width = 580
      Height = 482
      DataSource = UniDataSource1
      DynProps = <>
      EvenRowColor = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Font.Charset = ANSI_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = []
      FooterParams.ParentFont = False
      FooterParams.HorzLines = False
      GridLineParams.ColorScheme = glcsClassicEh
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = []
      IndicatorParams.FillStyle = cfstThemedEh
      OddRowColor = clWindow
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentFont = False
      SelectionDrawParams.DrawFocusFrame = True
      SelectionDrawParams.DrawFocusFrameStored = True
      SortLocal = True
      TabOrder = 1
      TitleParams.MultiTitle = True
      TitleParams.FillStyle = cfstThemedEh
      VertScrollBar.VisibleMode = sbNeverShowEh
      YcMenuItem.Strings = (
        #26597#25214'(&C)'
        '-'
        'Excel'#23548#20986'(&X)'
        '-'
        #21015#23646#24615'(&L)')
      YcSelected.Strings = (
        'ID=ID#ID#17#1##0#fvtNon##0#0#8#8#0#0#0#'
        'NAME=NAME#NAME#17#1##0#fvtNon##0#0#8#8#0#0#0#'
        'SEX=SEX#SEX#1#1##0#fvtNon##0#0#8#8#0#0#0#'
        'BIRTHDAY=BIRTHDAY#BIRTHDAY#15#1##0#fvtNon##0#0#8#8#0#0#0#'
        'ID_NO=ID_NO#ID_NO#15#1##0#fvtNon##0#0#8#8#0#0#0#'
        
          'NATIVE_PLACE=NATIVE_PLACE#NATIVE_PLACE#8#1##0#fvtNon##0#0#8#8#0#' +
          '0#0#'
        
          'CONTACT_NUMBER=CONTACT_NUMBER#CONTACT_NUMBER#17#1##0#fvtNon##0#0' +
          '#8#8#0#0#0#'
        
          'PARENT_TYPE=PARENT_TYPE#PARENT_TYPE#8#1##0#fvtNon##0#0#8#8#0#0#0' +
          '#'
        
          'PARENT_NAME=PARENT_NAME#PARENT_NAME#17#1##0#fvtNon##0#0#8#8#0#0#' +
          '0#'
        
          'PARENT_NUMBER=PARENT_NUMBER#PARENT_NUMBER#17#1##0#fvtNon##0#0#8#' +
          '8#0#0#0#'
        
          'CREATE_TIME=CREATE_TIME#CREATE_TIME#15#1##0#fvtNon##0#0#8#8#0#0#' +
          '0#'
        'LAST_TIME=LAST_TIME#LAST_TIME#15#1##0#fvtNon##0#0#8#8#0#0#0#')
      Columns = <
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Caption = #23398#21495
          Width = 30
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Caption = #22995#21517
          Width = 50
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'SEX'
          Footers = <>
          Title.Caption = #24615#21035
          Width = 28
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'BIRTHDAY'
          Footers = <>
          Title.Caption = #20986#29983#26085#26399
          Width = 65
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_NO'
          Footers = <>
          Title.Caption = #36523#20221#35777#21495
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'NATIVE_PLACE'
          Footers = <>
          Title.Caption = #31821#36143
          Width = 30
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'CONTACT_NUMBER'
          Footers = <>
          Title.Caption = #32852#31995#30005#35805
          Width = 70
          WordWrap = False
        end
        item
          Alignment = taLeftJustify
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'PARENT_TYPE'
          Footers = <>
          Title.Caption = #29238#27597#31867#22411
          Width = 52
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'PARENT_NAME'
          Footers = <>
          Title.Caption = #29238#27597#22995#21517
          Width = 55
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'PARENT_NUMBER'
          Footers = <>
          Title.Caption = #29238#27597#30005#35805
          Width = 70
          WordWrap = False
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'CREATE_TIME'
          Footers = <>
          Title.Caption = #21019#24314#26102#38388
          Width = 108
        end
        item
          Checkboxes = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'LAST_TIME'
          Footers = <>
          Title.Caption = #26368#21518#20462#25913#26102#38388
          Width = 108
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object rzpnl1: TRzPanel
      Left = 2
      Top = 29
      Width = 206
      Height = 454
      BorderWidth = 1
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object lbl2: TYcLabel
        Left = 5
        Top = 12
        Width = 39
        Height = 13
        Caption = #23398#21495#65306
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TYcLabel
        Left = 5
        Top = 40
        Width = 39
        Height = 13
        Caption = #22995#21517#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TYcLabel
        Left = 5
        Top = 65
        Width = 39
        Height = 13
        Caption = #24615#21035#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TYcLabel
        Left = 5
        Top = 94
        Width = 65
        Height = 13
        Caption = #20986#29983#26085#26399#65306
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TYcLabel
        Left = 5
        Top = 121
        Width = 65
        Height = 13
        Caption = #36523#20221#35777#21495#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TYcLabel
        Left = 5
        Top = 145
        Width = 39
        Height = 13
        Caption = #31821#36143#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl8: TYcLabel
        Left = 5
        Top = 168
        Width = 65
        Height = 13
        Caption = #32852#31995#30005#35805#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TYcLabel
        Left = 5
        Top = 192
        Width = 65
        Height = 13
        Caption = #29238#27597#31867#22411#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl10: TYcLabel
        Left = 4
        Top = 219
        Width = 65
        Height = 13
        Caption = #29238#27597#22995#21517#65306
      end
      object lbl11: TYcLabel
        Left = 4
        Top = 243
        Width = 65
        Height = 13
        Caption = #29238#27597#30005#35805#65306
      end
      object lbl12: TYcLabel
        Left = 4
        Top = 270
        Width = 65
        Height = 13
        Caption = #21019#24314#26102#38388#65306
      end
      object lbl13: TYcLabel
        Left = 5
        Top = 343
        Width = 91
        Height = 13
        Caption = #26368#21518#20462#25913#26102#38388#65306
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lb1: TYcLabel
        Left = 5
        Top = 292
        Width = 39
        Height = 13
        Caption = #24320#22987#65306
      end
      object lb2: TYcLabel
        Left = 4
        Top = 319
        Width = 39
        Height = 13
        Caption = #32467#26463#65306
      end
      object lb3: TYcLabel
        Left = 5
        Top = 365
        Width = 39
        Height = 13
        Caption = #24320#22987#65306
      end
      object lb4: TYcLabel
        Left = 5
        Top = 392
        Width = 39
        Height = 13
        Caption = #32467#26463#65306
      end
      object edt1: TYcEdit
        Left = 62
        Top = 9
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
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object edt4: TYcEdit
        Left = 62
        Top = 37
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
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
      object cbb1: TYcComboBox
        Left = 62
        Top = 62
        Width = 97
        Height = 21
        DynProps = <>
        EditButtons = <>
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Items.Strings = (
          '--'#35831#36873#25321#24615#21035'--'
          #30007
          #22899)
        ParentFont = False
        TabOrder = 2
        Visible = True
        OnKeyPress = cbb1KeyPress
      end
      object edt6: TYcEdit
        Left = 63
        Top = 118
        Width = 95
        Height = 21
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = True
      end
      object edt8: TYcEdit
        Left = 62
        Top = 165
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
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = True
      end
      object ycbtbtn1: TYcBitBtn
        Left = 151
        Top = 416
        Width = 48
        Height = 30
        Caption = #26597#35810
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = ycbtbtn1Click
      end
      object cbb3: TYcComboBox
        Left = 62
        Top = 189
        Width = 97
        Height = 21
        DynProps = <>
        EditButtons = <>
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Items.Strings = (
          '--'#35831#36873#25321#29238#27597#31867#22411'--'
          #29238#20146
          #27597#20146)
        ParentFont = False
        TabOrder = 6
        Visible = True
        OnKeyPress = cbb3KeyPress
      end
      object edt9: TYcEdit
        Left = 62
        Top = 216
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
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = True
      end
      object edt10: TYcEdit
        Left = 62
        Top = 243
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
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = True
      end
      object cbb4: TYcComboBox
        Left = 62
        Top = 142
        Width = 97
        Height = 21
        DynProps = <>
        EditButtons = <>
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Items.Strings = (
          '--'#35831#36873#25321#31821#36143'--'
          #21512#32933
          #33436#28246
          #23433#24198)
        ParentFont = False
        TabOrder = 9
        Visible = True
        OnKeyPress = cbb4KeyPress
      end
      object ycdtmpckr1: TYcDateTimePicker
        Left = 46
        Top = 289
        Width = 153
        Height = 21
        Ctl3D = True
        DataField = ''
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Visible = True
        Epoch = 1950
        UpdateRec = False
        YcDispFormat = 'YYYY-MM-DD HH:mm:ss'
        OnYcCloseUp = bu
      end
      object ycdtmpckr2: TYcDateTimePicker
        Left = 46
        Top = 316
        Width = 153
        Height = 21
        Ctl3D = True
        DataField = ''
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        ParentCtl3D = False
        TabOrder = 11
        Visible = True
        Epoch = 1950
        UpdateRec = False
        YcDispFormat = 'YYYY-MM-DD HH:NN:SS'
      end
      object ycdtmpckr3: TYcDateTimePicker
        Left = 46
        Top = 362
        Width = 153
        Height = 21
        Ctl3D = True
        DataField = ''
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        ParentCtl3D = False
        TabOrder = 12
        Visible = True
        Epoch = 1950
        UpdateRec = False
        YcDispFormat = 'YYYY-MM-DD HH:NN:SS'
        OnYcCloseUp = ycdtmpckr3YcCloseUp
      end
      object ycdtmpckr4: TYcDateTimePicker
        Left = 46
        Top = 389
        Width = 153
        Height = 21
        Ctl3D = True
        DataField = ''
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        ParentCtl3D = False
        TabOrder = 13
        Visible = True
        Epoch = 1950
        UpdateRec = False
        YcDispFormat = 'YYYY-MM-DD HH:NN:SS'
      end
      object ycdtmpckr5: TYcDateTimePicker
        Left = 64
        Top = 88
        Width = 95
        Height = 21
        Ctl3D = True
        DataField = ''
        DynProps = <>
        EditButtons = <>
        EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
        EmptyDataInfo.Font.Color = clSilver
        EmptyDataInfo.Font.Height = -12
        EmptyDataInfo.Font.Name = #23435#20307
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        ParentCtl3D = False
        TabOrder = 14
        Visible = True
        Epoch = 1950
        UpdateRec = False
        YcDispFormat = 'YYYY-MM-DD'
      end
      object ycbtbtn7: TYcBitBtn
        Left = 162
        Top = 89
        Width = 40
        Height = 17
        Caption = #28165#31354
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = ycbtbtn7Click
      end
      object ycbtbtn8: TYcBitBtn
        Left = 70
        Top = 268
        Width = 41
        Height = 17
        Caption = #28165#31354
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = ycbtbtn8Click
      end
      object ycbtbtn9: TYcBitBtn
        Left = 91
        Top = 341
        Width = 41
        Height = 17
        Caption = #28165#31354
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = ycbtbtn9Click
      end
    end
    object rzpnl2: TRzPanel
      Left = 0
      Top = 483
      Width = 782
      Height = 106
      BorderOuter = fsFlat
      BorderWidth = 1
      TabOrder = 3
      object img1: TImage
        Left = 336
        Top = 24
        Width = 25
        Height = 17
      end
      object ycbtbtn2: TYcBitBtn
        Left = 24
        Top = 16
        Width = 65
        Height = 33
        Caption = #22686#21152
        Color = clRed
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ycbtbtn2Click
      end
      object ycbtbtn3: TYcBitBtn
        Left = 124
        Top = 16
        Width = 65
        Height = 33
        Caption = #20462#25913
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ycbtbtn3Click
      end
      object ycbtbtn4: TYcBitBtn
        Left = 224
        Top = 15
        Width = 65
        Height = 33
        FrameColor = 7617536
        Caption = #21024#38500
        Color = clRed
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ycbtbtn4Click
        NumGlyphs = 2
      end
      object ycbtbtn5: TYcBitBtn
        Left = 327
        Top = 16
        Width = 65
        Height = 33
        Caption = #25171#21360
        Font.Charset = GB2312_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = ycbtbtn5Click
      end
      object ycbtbtn6: TYcBitBtn
        Left = 664
        Top = 16
        Width = 65
        Height = 33
        Caption = #36864#20986
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = ycbtbtn6Click
      end
    end
    object rzpnl3: TRzPanel
      Left = 2
      Top = 1
      Width = 206
      Height = 31
      Align = alCustom
      BorderWidth = 1
      Caption = #26597#35810#26465#20214
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 48
    Top = 512
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Oracle'
    Username = 'ICSHIS6'
    Server = '172.16.1.221:1521/orcl'
    Connected = True
    Left = 120
    Top = 512
    EncryptedPassword = '96FF9CFF8CFFDBFFCEFFCDFFCCFF'
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from student1')
    CachedUpdates = True
    Active = True
    Left = 264
    Top = 512
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 187
    Top = 512
  end
  object unqry1: TUniQuery
    Connection = UniConnection1
    CachedUpdates = True
    Left = 338
    Top = 512
  end
  object prntdbgrdh1: TPrintDBGridEh
    DBGridEh = YcDBGrid5
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 410
    Top = 512
  end
  object frxrprt1: TfrxReport
    Version = '5.1.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #39044#35774
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45435.690868981500000000
    ReportOptions.LastChange = 45436.383426631950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 474
    Top = 509
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 250.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      MirrorMargins = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 869.291900000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 86.929190000000000000
        Width = 869.291900000000000000
        object Memo2: TfrxMemoView
          Width = 869.291436220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo4: TfrxMemoView
          Left = 39.307103700000000000
          Width = 32.503937010000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #22995#21517)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 83.149630710000000000
          Width = 34.015755350000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #24615#21035)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 124.724446060000000000
          Width = 58.204726850000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #20986#29983#26085#26399)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 190.488232910000000000
          Width = 105.826818030000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #36523#20221#35777#21495)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 344.692984170000000000
          Width = 75.590534090000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #32852#31995#30005#35805)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 420.283518270000000000
          Width = 60.472431180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #29238#27597#31867#22411)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 480.755949450000000000
          Width = 59.716523230000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #29238#27597#22995#21517)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 544.252002680000000000
          Width = 59.716513460000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #29238#27597#30005#35805)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 619.086636140000000000
          Width = 104.314980160000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #21019#24314#26102#38388)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 704.503966300000000000
          Width = 164.787469920000000000
          Height = 22.677180000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #26368#21518#20462#25913#26102#38388)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 307.653640940000000000
          Width = 37.039343230000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #31821#36143)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Width = 35.527573700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #23398#21495)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 170.078850000000000000
        Width = 869.291900000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo15: TfrxMemoView
          Top = 7.559060000000000000
          Width = 31.748043700000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 43.086633700000000000
          Top = 7.559060000000000000
          Width = 32.503937010000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NAME"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 83.149630710000000000
          Top = 7.559060000000000000
          Width = 26.456695350000000000
          Height = 18.897650000000000000
          DataField = 'SEX'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."SEX"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 117.165386060000000000
          Top = 7.559060000000000000
          Width = 73.322846850000000000
          Height = 18.897650000000000000
          DataField = 'BIRTHDAY'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."BIRTHDAY"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 186.708702910000000000
          Top = 7.559060000000000000
          Width = 124.724468030000000000
          Height = 18.897650000000000000
          DataField = 'ID_NO'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_NO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 311.433170940000000000
          Top = 7.559060000000000000
          Width = 29.480283230000000000
          Height = 18.897650000000000000
          DataField = 'NATIVE_PLACE'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NATIVE_PLACE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 344.692984170000000000
          Top = 7.559060000000000000
          Width = 79.370064090000000000
          Height = 18.897650000000000000
          DataField = 'CONTACT_NUMBER'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CONTACT_NUMBER"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 435.401638270000000000
          Top = 7.559060000000000000
          Width = 37.795251180000000000
          Height = 18.897650000000000000
          DataField = 'PARENT_TYPE'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PARENT_TYPE"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 484.535479450000000000
          Top = 7.559060000000000000
          Width = 48.377933230000000000
          Height = 18.897650000000000000
          DataField = 'PARENT_NAME'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PARENT_NAME"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 532.913412680000000000
          Top = 7.559060000000000000
          Width = 82.393693460000000000
          Height = 18.897650000000000000
          DataField = 'PARENT_NUMBER'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PARENT_NUMBER"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 615.307106140000000000
          Top = 7.559060000000000000
          Width = 111.874040160000000000
          Height = 18.897650000000000000
          DataField = 'CREATE_TIME'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CREATE_TIME"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 715.842556300000000000
          Top = 7.559060000000000000
          Width = 153.448879920000000000
          Height = 18.897650000000000000
          DataField = 'LAST_TIME'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."LAST_TIME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 257.008040000000000000
        Width = 869.291900000000000000
        object Memo27: TfrxMemoView
          Align = baWidth
          Width = 869.291900000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo28: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 793.701300000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object Memo1: TfrxMemoView
        Align = baWidth
        Top = -15.118120000000000000
        Width = 869.291900000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #23398#29983#20449#24687#34920)
        ParentFont = False
        Style = 'Title'
        VAlign = vaCenter
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = UniQuery1
    BCDToCurrency = False
    Left = 538
    Top = 509
  end
end
