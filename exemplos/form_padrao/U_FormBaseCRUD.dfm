object frmBaseCRUD: TfrmBaseCRUD
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Base CRUD'
  ClientHeight = 423
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBase: TPanel
    Left = 0
    Top = 344
    Width = 726
    Height = 79
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TBitBtn
      Left = 20
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 114
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 208
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 416
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 512
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnSair: TBitBtn
      Left = 624
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 726
    Height = 344
    ActivePage = TabForm
    Align = alClient
    TabOrder = 1
    object TabLista: TTabSheet
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdPrincipal: TDBGrid
        Left = 0
        Top = 81
        Width = 718
        Height = 235
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlBusca: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 81
        Align = alTop
        TabOrder = 1
      end
    end
    object TabForm: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
    end
  end
  object dtsPrincipal: TDataSource
    DataSet = qryPrincipal
    Left = 616
    Top = 40
  end
  object qryPrincipal: TFDQuery
    Connection = DM.FDConn
    Left = 472
    Top = 160
  end
end
