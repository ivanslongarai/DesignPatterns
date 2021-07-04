object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'Iterator'
  ClientHeight = 343
  ClientWidth = 296
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
    Width = 296
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 441
    object btnGetResult: TButton
      Left = 3
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Get Result'
      TabOrder = 0
      OnClick = btnGetResultClick
    end
  end
  object mmResult: TMemo
    Left = 0
    Top = 41
    Width = 296
    Height = 302
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitWidth = 441
    ExplicitHeight = 155
  end
end
