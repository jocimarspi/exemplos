unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ApplicationEvents1: TApplicationEvents;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FLista: TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TrimAppMemorySize;
var
MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except
  end;
  Application.ProcessMessages;
end;

procedure TForm1.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  //TrimAppMemorySize;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s: TStringList;
  I: Integer;
begin
  for I := 1 to 1000 do
  begin
    s := TStringList.Create;
    try
      s.Add('sfsdfsdfsdf');
      s.Add('345456456');
    finally
      //s.Free;
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TrimAppMemorySize;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FLista := TStringList.Create;
  FLista.Add('Teste');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMessage(FLista.Text);
end;

end.
