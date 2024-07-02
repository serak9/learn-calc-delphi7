object mainWindow: TmainWindow
  Left = 143
  Top = 175
  BorderStyle = bsDialog
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 357
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = OnCreate
  OnKeyPress = OnKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object OUTPUT: TLabel
    Left = 8
    Top = 32
    Width = 233
    Height = 57
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Transparent = False
    Layout = tlBottom
  end
  object CR: TLabel
    Left = 8
    Top = 336
    Width = 153
    Height = 17
    AutoSize = False
    Caption = '  '
  end
  object MC: TButton
    Left = 8
    Top = 96
    Width = 41
    Height = 33
    Caption = 'MC'
    Enabled = False
    TabOrder = 0
  end
  object MRButton: TButton
    Left = 56
    Top = 96
    Width = 41
    Height = 33
    Caption = 'MR'
    Enabled = False
    TabOrder = 1
  end
  object MSButton: TButton
    Left = 104
    Top = 96
    Width = 41
    Height = 33
    Caption = 'MS'
    Enabled = False
    TabOrder = 2
  end
  object MPlusButton: TButton
    Left = 152
    Top = 96
    Width = 41
    Height = 33
    Caption = 'M+'
    Enabled = False
    TabOrder = 3
  end
  object MMinusButton: TButton
    Left = 200
    Top = 96
    Width = 41
    Height = 33
    Caption = 'M-'
    Enabled = False
    TabOrder = 4
  end
  object BackSpaceButton: TButton
    Left = 8
    Top = 136
    Width = 41
    Height = 33
    Caption = 'BS'
    Enabled = False
    TabOrder = 5
  end
  object CEButton: TButton
    Left = 56
    Top = 136
    Width = 41
    Height = 33
    Caption = 'CE'
    Enabled = False
    TabOrder = 6
  end
  object ResetButton: TButton
    Left = 104
    Top = 136
    Width = 41
    Height = 33
    Caption = 'C'
    TabOrder = 7
    OnClick = ResetButtonClick
  end
  object PlusMinusButton: TButton
    Left = 152
    Top = 136
    Width = 41
    Height = 33
    Caption = '+/-'
    Enabled = False
    TabOrder = 8
  end
  object Button7: TButton
    Left = 8
    Top = 176
    Width = 41
    Height = 33
    Caption = '7'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 56
    Top = 176
    Width = 41
    Height = 33
    Caption = '8'
    TabOrder = 10
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 104
    Top = 176
    Width = 41
    Height = 33
    Caption = '9'
    TabOrder = 11
    OnClick = Button9Click
  end
  object Button4: TButton
    Left = 8
    Top = 216
    Width = 41
    Height = 33
    Caption = '4'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 56
    Top = 216
    Width = 41
    Height = 33
    Caption = '5'
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 104
    Top = 216
    Width = 41
    Height = 33
    Caption = '6'
    TabOrder = 14
    OnClick = Button6Click
  end
  object Button3: TButton
    Left = 104
    Top = 256
    Width = 41
    Height = 33
    Caption = '3'
    TabOrder = 15
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 56
    Top = 256
    Width = 41
    Height = 33
    Caption = '2'
    TabOrder = 16
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 8
    Top = 256
    Width = 41
    Height = 33
    Caption = '1'
    TabOrder = 17
    OnClick = Button1Click
  end
  object Button0: TButton
    Left = 8
    Top = 296
    Width = 89
    Height = 33
    Caption = '0'
    TabOrder = 18
    OnClick = Button0Click
  end
  object Button11: TButton
    Left = 104
    Top = 296
    Width = 41
    Height = 33
    Caption = ','
    Enabled = False
    TabOrder = 19
  end
  object PlusButton: TButton
    Left = 152
    Top = 296
    Width = 41
    Height = 33
    Caption = '+'
    TabOrder = 20
    OnClick = PlusButtonClick
  end
  object MinusButton: TButton
    Left = 152
    Top = 256
    Width = 41
    Height = 33
    Caption = '-'
    TabOrder = 21
    OnClick = MinusButtonClick
  end
  object MultiplyButton: TButton
    Left = 152
    Top = 216
    Width = 41
    Height = 33
    Caption = '*'
    TabOrder = 22
    OnClick = MultiplyButtonClick
  end
  object CalculateButton: TButton
    Left = 200
    Top = 256
    Width = 41
    Height = 73
    Caption = '='
    Default = True
    TabOrder = 23
    OnClick = CalculateButtonClick
  end
  object divideButton: TButton
    Left = 152
    Top = 176
    Width = 41
    Height = 33
    Caption = '/'
    TabOrder = 24
    OnClick = divideButtonClick
  end
end
