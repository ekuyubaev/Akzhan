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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 775
    Height = 458
    ActivePage = TabSheet4
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
          Height = 45
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = #1040#1042#1040#1056#1048#1049#1053#1040#1071' '#1057#1048#1058#1059#1040#1062#1048#1071
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -37
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 403
        end
        object Label13: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 96
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
        object BitBtn1: TBitBtn
          Left = 240
          Top = 240
          Width = 289
          Height = 84
          Caption = #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1074#1086#1079#1084#1086#1078#1085#1099#1093' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1077#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      OnShow = TabSheet2Show
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
        object BitBtn3: TBitBtn
          Left = 272
          Top = 320
          Width = 257
          Height = 65
          Caption = #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1074#1086#1079#1084#1086#1078#1085#1099#1077' '#1089#1087#1086#1089#1086#1073#1099' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = BitBtn3Click
        end
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 44
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
            #1074#1099#1093#1086#1076#1085#1086#1081' '#1089#1080#1075#1085#1072#1083' '#1085#1077' '#1089#1090#1072#1073#1080#1083#1077#1085
            #1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1100' '#1076#1072#1090#1095#1080#1082#1072' '#1087#1088#1077#1074#1099#1096#1072#1077#1090' '#1076#1086#1087#1091#1089#1090#1080#1084#1091#1102
            #1076#1072#1090#1095#1080#1082' '#1085#1077' '#1088#1077#1072#1075#1080#1088#1091#1077#1090' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1086#1076#1072#1085#1085#1086#1075#1086' '#1089#1080#1075#1085#1072#1083#1072
            #1074#1099#1093#1086#1076#1085#1086#1081' '#1089#1080#1075#1085#1072#1083' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090)
          ParentFont = False
          TabOrder = 1
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
        object Label2: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 41
          Width = 759
          Height = 23
          Margins.Top = 40
          Margins.Bottom = 10
          Align = alTop
          Caption = #1042#1086#1079#1084#1086#1078#1085#1099#1077' '#1089#1087#1086#1089#1086#1073#1099' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 292
        end
        object Label6: TLabel
          Left = 1
          Top = 140
          Width = 765
          Height = 23
          Margins.Left = 10
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Caption = 
            '- '#1085#1072#1088#1091#1096#1077#1085#1072' '#1075#1077#1088#1084#1077#1090#1080#1095#1085#1086#1089#1090#1100' '#1087#1088#1086#1073#1082#1080' '#1092#1083#1072#1085#1094#1072' '#1089#1077#1085#1089#1086#1088#1072' '#1076#1072#1090#1095#1080#1082#1072'. '#1055#1086#1076#1085#1103#1090#1100' ' +
            #1087#1088#1086#1073#1082#1080'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 117
          ExplicitWidth = 689
        end
        object Label7: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 84
          Width = 759
          Height = 46
          Margins.Top = 10
          Margins.Bottom = 10
          Align = alTop
          Caption = 
            '- '#1085#1072#1088#1091#1096#1077#1085#1072' '#1075#1077#1088#1084#1077#1090#1080#1095#1085#1086#1089#1090#1100' '#1091#1087#1083#1086#1090#1085#1077#1085#1080#1103' '#1084#1086#1085#1090#1072#1078#1085#1086#1075#1086' '#1092#1083#1072#1085#1094#1072' '#1080#1083#1080' '#1085#1080#1087#1087#1077#1083 +
            #1103' '#1076#1072#1090#1095#1080#1082#1072'. '#1047#1072#1084#1077#1085#1080#1090#1100' '#1091#1087#1083#1086#1090#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1082#1086#1083#1100#1094#1086'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 737
        end
        object BitBtn4: TBitBtn
          Left = 440
          Top = 312
          Width = 225
          Height = 65
          Caption = #1076#1072#1083#1077#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
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
        object Label4: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 21
          Width = 759
          Height = 23
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = '1) '#1054#1087#1086#1074#1077#1089#1090#1080#1090#1100' '#1076#1077#1078#1091#1088#1085#1091#1102' '#1089#1084#1077#1085#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 277
        end
        object Label16: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 84
          Width = 759
          Height = 23
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alTop
          Alignment = taCenter
          Caption = '2) '#1044#1086#1083#1086#1078#1080#1090#1100' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1089#1084#1077#1085#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 280
        end
        object BitBtn5: TBitBtn
          Left = 240
          Top = 232
          Width = 273
          Height = 89
          Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1102' '#1086#1090#1095#1077#1090#1085#1086#1075#1086' '#1088#1072#1087#1086#1088#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = BitBtn5Click
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 592
    Top = 360
  end
end
