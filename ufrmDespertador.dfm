object frm_Despertador: Tfrm_Despertador
  Left = 0
  Top = 0
  Caption = 'Despertador Vini'
  ClientHeight = 249
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 175
    Top = 29
    Width = 95
    Height = 24
    Caption = 'Despertar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 159
    Top = 176
    Width = 107
    Height = 16
    Alignment = taCenter
    Caption = 'Alarme Desativado'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowFrame
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = Label3Click
  end
  object btnAtivar: TButton
    Left = 96
    Top = 115
    Width = 113
    Height = 32
    Caption = 'Ativar'
    TabOrder = 0
    OnClick = btnAtivarClick
  end
  object btnDesativar: TButton
    Left = 215
    Top = 115
    Width = 113
    Height = 31
    Caption = 'Desativar'
    TabOrder = 1
    OnClick = btnDesativarClick
  end
  object MaskHora: TMaskEdit
    Left = 96
    Top = 67
    Width = 232
    Height = 32
    Alignment = taCenter
    EditMask = '!90:00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 2
    Text = '  :  '
    OnKeyPress = MaskHoraKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 230
    Width = 456
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 100
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 279
    Top = 16
  end
end
