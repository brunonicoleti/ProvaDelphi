object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'fTarefa3'
  ClientHeight = 482
  ClientWidth = 522
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdLote: TDBGrid
    Left = 8
    Top = 24
    Width = 505
    Height = 345
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProjeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 343
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object edtTotal: TEdit
    Left = 392
    Top = 392
    Width = 121
    Height = 19
    TabOrder = 1
  end
  object edtDivisoes: TEdit
    Left = 393
    Top = 440
    Width = 121
    Height = 19
    TabOrder = 2
  end
  object btnObterTotal: TButton
    Left = 296
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 3
    OnClick = btnObterTotalClick
  end
  object Button1: TButton
    Left = 256
    Top = 437
    Width = 115
    Height = 25
    Caption = 'Obter Total Divisoes'
    TabOrder = 4
    OnClick = Button1Click
  end
end
