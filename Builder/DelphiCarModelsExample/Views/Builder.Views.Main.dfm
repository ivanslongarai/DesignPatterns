object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Builder'
  ClientHeight = 503
  ClientWidth = 369
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnExecute: TButton
      Left = 11
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Execute'
      TabOrder = 0
      OnClick = btnExecuteClick
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 41
    Width = 369
    Height = 462
    Align = alClient
    BorderWidth = 10
    TabOrder = 1
    object mmResult: TMemo
      Left = 11
      Top = 11
      Width = 347
      Height = 440
      Align = alClient
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
