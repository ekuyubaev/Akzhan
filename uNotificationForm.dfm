object frmNotification: TfrmNotification
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsNone
  Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1086#1073' '#1072#1074#1072#1088#1080#1081#1085#1099#1093' '#1089#1080#1090#1091#1072#1094#1080#1103#1093
  ClientHeight = 458
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 775
    Height = 458
    ActivePage = TabSheet8
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      OnShow = TabSheet1Show
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 21
          Width = 759
          Height = 33
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = #1040#1042#1040#1056#1048#1049#1053#1040#1071' '#1057#1048#1058#1059#1040#1062#1048#1071
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 294
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 184
          Width = 759
          Height = 25
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = #1057#1091#1097#1077#1089#1090#1074#1091#1077#1090' '#1083#1080' '#1091#1075#1088#1086#1079#1072' '#1078#1080#1079#1085#1080'?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 292
        end
        object Label7: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 94
          Width = 759
          Height = 50
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = 
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1072#1090#1095 +
            #1080#1082#1072'] ['#1086#1087#1080#1089#1072#1085#1080#1077' '#1072#1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080']'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 734
        end
        object BitBtn1: TBitBtn
          Left = 120
          Top = 272
          Width = 200
          Height = 100
          Caption = #1044#1040
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 456
          Top = 272
          Width = 200
          Height = 100
          Caption = #1053#1045#1058
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 124
          Width = 759
          Height = 66
          Margins.Top = 30
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1057#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084' '#1089#1084#1077#1085#1099' '#1074#1099#1074#1077#1089#1090#1080' '#1087#1077#1088#1089#1086#1085#1072#1083' '#1085#1077' '#1091#1095#1072#1089#1090#1074#1091#1102#1097#1080#1081' '#1074' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1072 +
            #1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080' '#1074' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1077' '#1084#1077#1089#1090#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 719
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 31
          Width = 759
          Height = 33
          Margins.Top = 30
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088#1091' '#1074#1099#1079#1074#1072#1090#1100' '#1101#1082#1089#1090#1088#1077#1085#1085#1099#1077' '#1089#1083#1091#1078#1073#1099' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 513
        end
        object Label5: TLabel
          Left = 1
          Top = 220
          Width = 765
          Height = 33
          Margins.Top = 30
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = #1044#1077#1078#1091#1088#1085#1086#1081' '#1089#1084#1077#1085#1077' '#1087#1088#1077#1089#1090#1091#1087#1080#1090#1100' '#1082' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1091#1075#1088#1086#1079#1099' '#1076#1083#1103' '#1078#1080#1079#1085#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 758
        end
        object BitBtn3: TBitBtn
          Left = 224
          Top = 286
          Width = 300
          Height = 100
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn3Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label6: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 69
          Width = 759
          Height = 19
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1044#1086#1083#1086#1078#1080#1090#1077' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1089#1084#1077#1085#1099' '#1080' '#1074#1099#1073#1077#1088#1080#1090#1077' '#1074#1072#1088#1080#1072#1085#1090' '#1074#1086#1079#1084#1086#1078#1085#1086#1081' '#1085#1077#1080#1089#1087#1088#1072#1074#1085 +
            #1086#1089#1090#1080
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 569
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 11
          Width = 759
          Height = 38
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = 
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1072#1090#1095 +
            #1080#1082#1072'] ['#1086#1087#1080#1089#1072#1085#1080#1077' '#1072#1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080']'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 714
        end
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 118
          Width = 765
          Height = 179
          Align = alTop
          Caption = #1042#1086#1079#1084#1086#1078#1085#1099#1077' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1081' '#1085#1077#1089#1080#1087#1088#1072#1074#1085#1086#1089#1090#1080' '#8470' 1]'
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1081' '#1085#1077#1089#1080#1087#1088#1072#1074#1085#1086#1089#1090#1080' '#8470' 2]'
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1081' '#1085#1077#1089#1080#1087#1088#1072#1074#1085#1086#1089#1090#1080' '#8470' 3]'
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1081' '#1085#1077#1089#1080#1087#1088#1072#1074#1085#1086#1089#1090#1080' '#8470' 4]')
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 296
          Top = 373
          Width = 200
          Height = 50
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label9: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 11
          Width = 759
          Height = 46
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = 
            '['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095#1072#1089#1090#1082#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072'] ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1072#1090#1095 +
            #1080#1082#1072'] ['#1086#1087#1080#1089#1072#1085#1080#1077' '#1072#1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080']'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 754
        end
        object Label10: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 163
          Width = 759
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = #1042#1099#1079#1086#1074#1080#1090#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1093' '#1079#1072' ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072']'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 582
        end
        object Label11: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 77
          Width = 759
          Height = 46
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1042#1072#1084#1080' '#1074#1099#1073#1088#1072#1085#1086' '#1088#1077#1096#1077#1085#1080#1077': ['#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1074#1072#1088#1080#1072#1085#1090#1072' '#1074#1086#1079#1084#1086#1078#1085#1086 +
            #1081' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080']'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 663
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 226
          Width = 759
          Height = 46
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1057#1086#1086#1073#1097#1080#1090#1077' '#1074#1089#1077#1084' '#1091#1095#1072#1089#1090#1074#1091#1102#1097#1080#1084' '#1074' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1072#1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080' '#1086' '#1074#1086#1079#1084 +
            #1086#1078#1085#1086#1081' '#1087#1088#1080#1095#1080#1085#1077' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 694
        end
        object BitBtn5: TBitBtn
          Left = 440
          Top = 352
          Width = 200
          Height = 50
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 112
          Top = 352
          Width = 200
          Height = 50
          Caption = #1053#1072#1079#1072#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn6Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label13: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 11
          Width = 759
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = #1040#1074#1072#1088#1080#1081#1085#1072#1103' '#1089#1080#1090#1091#1072#1094#1080#1103' '#1091#1089#1090#1088#1072#1085#1077#1085#1072'?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 286
        end
        object BitBtn7: TBitBtn
          Left = 296
          Top = 161
          Width = 200
          Height = 100
          Caption = #1044#1040
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn7Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label14: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 11
          Width = 759
          Height = 23
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = #1044#1086#1083#1078#1077#1085#1086' '#1083#1080' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1089#1084#1077#1085#1099' '#1086#1073' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1080' '#1072#1074#1072#1088#1080#1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080'?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 607
        end
        object BitBtn8: TBitBtn
          Left = 296
          Top = 161
          Width = 200
          Height = 100
          Caption = #1044#1040
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn8Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'TabSheet7'
      ImageIndex = 6
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label15: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 31
          Width = 759
          Height = 46
          Margins.Top = 30
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1042#1074#1077#1076#1080#1090#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081' '#1087#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1102' '#1072#1074#1072#1088#1080 +
            #1081#1085#1086#1081' '#1089#1080#1090#1091#1072#1094#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 690
        end
        object Memo1: TMemo
          Left = 1
          Top = 107
          Width = 765
          Height = 238
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn9: TBitBtn
          Left = 296
          Top = 360
          Width = 200
          Height = 50
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn9Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'TabSheet8'
      ImageIndex = 7
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 430
        Align = alClient
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label16: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 31
          Width = 759
          Height = 46
          Margins.Top = 30
          Margins.Bottom = 30
          Align = alTop
          Alignment = taCenter
          Caption = 
            #1040#1074#1072#1088#1080#1081#1085#1072#1103' '#1089#1080#1090#1091#1072#1094#1080#1103' '#1091#1089#1087#1077#1096#1085#1086' '#1091#1089#1090#1088#1072#1085#1077#1085#1072'. '#1042#1099' '#1084#1086#1078#1077#1090#1077' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1087 +
            #1086#1088#1090' '#1072#1074#1072#1088#1080#1081#1085#1099#1093' '#1089#1080#1090#1091#1072#1094#1080#1081' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1077' '#1072#1074#1072#1088#1080#1081#1085#1099#1093' '#1089#1080#1090#1091#1072#1094#1080#1081'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 672
        end
        object BitBtn10: TBitBtn
          Left = 112
          Top = 352
          Width = 200
          Height = 50
          Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object BitBtn11: TBitBtn
          Left = 440
          Top = 352
          Width = 200
          Height = 50
          Caption = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1091' '#1072#1074#1072#1088#1080#1081#1085#1099#1093' '#1089#1080#1090#1091#1072#1094#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          WordWrap = True
          OnClick = BitBtn11Click
        end
      end
    end
  end
end
