object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 10
  Caption = 'Builder Pizza Example'
  ClientHeight = 144
  ClientWidth = 342
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
    Width = 342
    Height = 103
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 692
    ExplicitHeight = 287
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 185
    object btnCreateProducts: TButton
      Left = 0
      Top = 0
      Width = 137
      Height = 25
      Caption = 'Create Products'
      TabOrder = 0
      OnClick = btnCreateProductsClick
    end
  end
end
