object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderWidth = 8
  Caption = 'Flyweight'
  ClientHeight = 470
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object mmResult: TMemo
    Left = 0
    Top = 41
    Width = 761
    Height = 429
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
    Width = 761
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
