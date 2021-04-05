unit ufrmDespertador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_Despertador = class(TForm)
    btnAtivar: TButton;
    btnDesativar: TButton;
    MaskHora: TMaskEdit;
    Timer1: TTimer;
    Label1: TLabel;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure MaskHoraKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Despertador: Tfrm_Despertador;
  Ativar : Boolean;
  Tecla : Char;

implementation

{$R *.dfm}



procedure Tfrm_Despertador.btnAtivarClick(Sender: TObject);
begin
  Ativar := True;
  Label3.Caption :='Alarme Ativado';
end;

procedure Tfrm_Despertador.btnDesativarClick(Sender: TObject);
begin
  Ativar := False;
  MaskHora.Text := '';
  MessageDlg('Seu Alarme foi desativado!', mtConfirmation, [mbOK], 0);
  Label3.Caption:='Desativado'
end;


procedure Tfrm_Despertador.FormCreate(Sender: TObject);
begin
  Ativar := False;
  StatusBar1.Panels[0].Text :=FormatDateTime('dddd,dd "de" mmmm "de" yyy', Date);
  Label3.Caption:='Alarme Desativado';
end;

procedure Tfrm_Despertador.Label3Click(Sender: TObject);
begin
Label3.Caption :='Alarme Desativado';
end;

procedure Tfrm_Despertador.MaskHoraKeyPress(Sender: TObject; var Key: Char);
begin
  Tecla := (Key);
  if ((Tecla <'0') or (Tecla > '9')) and (Tecla <> ':') then
  begin
    MessageBeep(48);
    Application.MessageBox ('Seu Alarme foi ativado', MB_OK+MB_ICONQUESTION)
    MessageBox('Seu alarme foi ativado');
    Key := chr(0);

  end;
end;

procedure Tfrm_Despertador.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text :=TimeToStr(Time);
  if (MaskHora.Text <= TimeToStr(Time)) and (Ativar) then
  MessageBeep (10);
end;

end.
