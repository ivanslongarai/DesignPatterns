object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'Composite'
  ClientHeight = 236
  ClientWidth = 515
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
  object mmResult: TMemo
    Left = 0
    Top = 41
    Width = 515
    Height = 195
    Align = alClient
    Ctl3D = True
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnGetResult: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Get Result'
      TabOrder = 0
      OnClick = btnGetResultClick
    end
  end
end
