object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 396
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mnuPrincipal: TMainMenu
    Left = 40
    Top = 24
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Employee1: TMenuItem
        Caption = 'Employee...'
        OnClick = Employee1Click
      end
    end
  end
end
