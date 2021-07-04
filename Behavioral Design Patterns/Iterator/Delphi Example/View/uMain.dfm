object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'projectBase'
  ClientHeight = 196
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnGetResult: TButton
      Left = 3
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Get Result'
      TabOrder = 0
    end
  end
  object mmResult: TMemo
    Left = 0
    Top = 41
    Width = 441
    Height = 155
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
