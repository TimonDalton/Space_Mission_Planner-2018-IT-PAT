object Form1: TForm1
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 361
    Caption = 'pnl1'
    TabOrder = 0
    object btnMakeItem: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = 'btnMakeItem'
      TabOrder = 0
      OnClick = btnMakeItemClick
    end
    object btnMakeAMeme: TButton
      Left = 456
      Top = 0
      Width = 65
      Height = 25
      Caption = 'btnMakeAMeme'
      TabOrder = 1
      OnClick = btnMakeAMemeClick
    end
  end
end
