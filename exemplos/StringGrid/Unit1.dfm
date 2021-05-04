object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Contador de n'#250'meros negativos sorteados'
  ClientHeight = 461
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdNumeros: TStringGrid
    Left = 0
    Top = 121
    Width = 687
    Height = 340
    Align = alClient
    TabOrder = 0
    ExplicitTop = 88
    ExplicitWidth = 519
    ExplicitHeight = 153
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 121
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 40
    ExplicitWidth = 573
    object Label1: TLabel
      Left = 32
      Top = 72
      Width = 136
      Height = 13
      Caption = 'Clique aqui para preencher :'
    end
    object Label2: TLabel
      Left = 304
      Top = 72
      Width = 125
      Height = 13
      Caption = 'Quantidade de negativos:'
    end
    object lblNegativos: TLabel
      Left = 464
      Top = 72
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
    end
    object Label3: TLabel
      Left = 96
      Top = 16
      Width = 504
      Height = 29
      Caption = 'Contador de n'#250'meros negativos sorteados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 174
      Top = 67
      Width = 75
      Height = 25
      Caption = 'Gerar!'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
