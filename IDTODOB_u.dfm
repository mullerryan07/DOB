object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 218
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ID: TEdit
    Left = 8
    Top = 24
    Width = 194
    Height = 23
    TabOrder = 0
    Text = 'ID'
  end
  object Button1: TButton
    Left = 8
    Top = 64
    Width = 185
    Height = 25
    Caption = 'DOB'
    TabOrder = 1
    OnClick = Button1Click
  end
  object redOutput: TRichEdit
    Left = 8
    Top = 112
    Width = 185
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
