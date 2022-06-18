object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 446
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 199
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 390
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Condicoes'
  end
  object Label4: TLabel
    Left = 8
    Top = 235
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mmoColunas: TMemo
    Left = 8
    Top = 24
    Width = 185
    Height = 193
    TabOrder = 0
  end
  object mmoTabelas: TMemo
    Left = 199
    Top = 24
    Width = 185
    Height = 193
    TabOrder = 1
  end
  object mmoCondicoes: TMemo
    Left = 390
    Top = 24
    Width = 185
    Height = 193
    TabOrder = 2
  end
  object mmoSQLGerado: TMemo
    Left = 8
    Top = 254
    Width = 567
    Height = 179
    TabOrder = 3
  end
  object btnGerarSQL: TButton
    Left = 500
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarSQLClick
  end
  object spQuery1: TspQuery
    Left = 512
    Top = 272
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 512
    Top = 336
  end
end
