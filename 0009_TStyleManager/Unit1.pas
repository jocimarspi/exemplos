unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Themes;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    procedure ComboBox1Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure IniciarEstilos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
  TStyleManager.SetStyle(ComboBox1.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  IniciarEstilos;
end;

procedure TForm1.IniciarEstilos;
var
  v :String;
  vIndice :Integer;
begin
  ComboBox1.Clear;

  //Cria uma lista com os temas habilitados para o executável
  for v in TStyleManager.StyleNames do
    ComboBox1.Items.Add(v);

  //Pega o nome do tema atual e seleciona na lista de temas
  vIndice :=  ComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  ComboBox1.ItemIndex := vIndice;
end;

end.
