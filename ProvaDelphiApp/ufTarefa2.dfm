object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 242
  ClientWidth = 472
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
  object Milisegundos: TLabel
    Left = 13
    Top = 75
    Width = 53
    Height = 13
    Caption = 'Intervalo 1'
  end
  object Interações: TLabel
    Left = 14
    Top = 102
    Width = 53
    Height = 13
    Caption = 'Intervalo 2'
  end
  object btnRunTasks: TButton
    Left = 296
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Run Tasks'
    TabOrder = 0
    OnClick = btnRunTasksClick
  end
  object edtIntervalo1: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '200'
  end
  object edtIntervalo2: TEdit
    Left = 72
    Top = 99
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '100'
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 184
    Width = 456
    Height = 17
    Step = 1
    TabOrder = 3
  end
  object ProgressBar2: TProgressBar
    Left = 8
    Top = 207
    Width = 456
    Height = 17
    Step = 1
    TabOrder = 4
  end
end
