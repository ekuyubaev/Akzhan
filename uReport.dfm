object frmReport: TfrmReport
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmReport'
  ClientHeight = 203
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 286
    Height = 168
    ActivePage = tsReadingsReport
    Align = alClient
    TabOrder = 0
    object tsReadingsReport: TTabSheet
      Caption = 'tsReadingsReport'
      TabVisible = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 278
        Height = 158
        Align = alClient
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 97
          Height = 13
          Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 160
          Top = 8
          Width = 89
          Height = 13
          Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateTimePicker1: TDateTimePicker
          Left = 16
          Top = 27
          Width = 97
          Height = 21
          Date = 43207.958593541670000000
          Time = 43207.958593541670000000
          TabOrder = 0
        end
        object DateTimePicker3: TDateTimePicker
          Left = 16
          Top = 62
          Width = 97
          Height = 21
          Date = 43207.983469467600000000
          Time = 43207.983469467600000000
          Kind = dtkTime
          TabOrder = 1
        end
        object DateTimePicker4: TDateTimePicker
          Left = 160
          Top = 54
          Width = 97
          Height = 21
          Date = 43207.983496342590000000
          Time = 43207.983496342590000000
          Kind = dtkTime
          TabOrder = 2
        end
        object DateTimePicker2: TDateTimePicker
          Left = 160
          Top = 27
          Width = 97
          Height = 21
          Date = 43207.958638738430000000
          Time = 43207.958638738430000000
          TabOrder = 3
        end
        object Button1: TButton
          Left = 16
          Top = 99
          Width = 145
          Height = 25
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button1Click
        end
        object ProgressBar1: TProgressBar
          Left = 16
          Top = 130
          Width = 249
          Height = 17
          TabOrder = 5
        end
      end
    end
    object tsFaultsReport: TTabSheet
      Caption = 'tsFaultsReport'
      ImageIndex = 1
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 278
        Height = 158
        Align = alClient
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = cl3DLight
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 97
          Height = 13
          Caption = #1053#1072#1095#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 160
          Top = 8
          Width = 89
          Height = 13
          Caption = #1050#1086#1085#1077#1095#1085#1072#1103' '#1076#1072#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateTimePicker5: TDateTimePicker
          Left = 16
          Top = 24
          Width = 97
          Height = 21
          Date = 43212.439746238430000000
          Time = 43212.439746238430000000
          TabOrder = 0
        end
        object DateTimePicker6: TDateTimePicker
          Left = 16
          Top = 56
          Width = 97
          Height = 21
          Date = 43212.439769976850000000
          Time = 43212.439769976850000000
          Kind = dtkTime
          TabOrder = 1
        end
        object DateTimePicker7: TDateTimePicker
          Left = 160
          Top = 24
          Width = 97
          Height = 21
          Date = 43212.439804120360000000
          Time = 43212.439804120360000000
          TabOrder = 2
        end
        object DateTimePicker8: TDateTimePicker
          Left = 160
          Top = 56
          Width = 97
          Height = 21
          Date = 43212.439824421290000000
          Time = 43212.439824421290000000
          Kind = dtkTime
          TabOrder = 3
        end
        object BitBtn2: TBitBtn
          Left = 16
          Top = 96
          Width = 145
          Height = 25
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn2Click
        end
        object ProgressBar2: TProgressBar
          Left = 16
          Top = 127
          Width = 241
          Height = 17
          TabOrder = 5
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 35
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 250
      Top = 1
      Width = 30
      Height = 30
      Glyph.Data = {
        A2070000424DA207000000000000360000002800000019000000190000000100
        1800000000006C070000C40E0000C40E00000000000000000000D2D2D25B5B5B
        1F1F1F1919191818181818181818181818181818181818181818181818181818
        181818181818181818181818181818181818181818181818181919192121215E
        5E5ED1D1D1FF5E5E5E393939909090A6A6A6A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A6A6A69090903939395B5B5BFF212121909090FCFCFCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC9090901E1E1EFF1818
        18A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA6A6A6181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A71818
        18FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE2E2E2C0C0C0E3E3E3FCFCFCFFFF
        FFFCFCFCE3E3E3C0C0C0E2E2E2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7
        A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC2C2
        C26161618F8F8FDEDEDEFAFAFADEDEDE8F8F8F616161C1C1C1FCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEE4E4E49090905B5B5B8F8F8FC3C3C38F8F8F5A5A5A90
        9090E3E3E3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF1818
        18A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDFDFDF8F8F8F56
        56565555555656568E8E8EDFDFDFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFAFAC3C3C35555551D1D1D555555C3C3C3FAFAFAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDFDFDF8F8F8F565656555555565656
        8E8E8EDFDFDFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A71818
        18FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE4E4E4909090
        5A5A5A8F8F8FC3C3C38F8F8F5A5A5A909090E3E3E3FEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCC5C5C5676767909090DEDEDEFAFAFADEDEDE909090666666C4C4
        C4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE5E5E5C5C5C5E3E3E3FCFCFCFFFF
        FFFCFCFCE3E3E3C4C4C4E5E5E5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7
        A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF1818
        18A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA7A7A7181818FF181818A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7181818FF181818A6A6A6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A61818
        18FF1E1E1E909090FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFCFC909090212121FF5B5B5B393939909090A6A6A6A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
        A7A7A7A7A7A7A7A7A7A7A7A7A7A6A6A69090903939395E5E5EFFD1D1D15E5E5E
        2121211919191818181818181818181818181818181818181818181818181818
        181818181818181818181818181818181818181818181818181919192121215E
        5E5ED3D3D3FF}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
