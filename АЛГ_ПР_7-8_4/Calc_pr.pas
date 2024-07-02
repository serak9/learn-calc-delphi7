unit Calc_pr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TmainWindow = class(TForm)
    OUTPUT: TLabel;
    MC: TButton;
    MRButton: TButton;
    MSButton: TButton;
    MPlusButton: TButton;
    MMinusButton: TButton;
    BackSpaceButton: TButton;
    CEButton: TButton;
    ResetButton: TButton;
    PlusMinusButton: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button0: TButton;
    Button11: TButton;
    PlusButton: TButton;
    MinusButton: TButton;
    MultiplyButton: TButton;
    CalculateButton: TButton;
    CR: TLabel;
    divideButton: TButton;
    procedure Calculate();
    procedure NumKeyPress(value : String);
    procedure OnKeyPress(Sender: TObject; var Key: Char);
    procedure PlusButtonClick(Sender: TObject);
    procedure OnCreate(Sender: TObject);
    procedure DisplayUpdate();
    procedure calcActionKeyPress(value : Char);
    procedure reset();
    procedure Button0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplyButtonClick(Sender: TObject);
    procedure divideButtonClick(Sender: TObject);
    procedure CalculateButtonClick(Sender: TObject);
    procedure ResetButtonClick(Sender: TObject);
    procedure SelectByTabOrder(index : Word);
    procedure DispayLengthCorrect();


  
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  mainWindow: TmainWindow;
  first_value: String;
  second_value: String;
  calculate_result: String;
  calc_action : Char;
  res_displayed : boolean;

implementation

{$R *.dfm}
procedure TmainWindow.SelectByTabOrder(index : Word);
var
   List : TList;
begin
   List := TList.Create;
   try
      GetTabOrderList(List);
      if index < List.Count then
         ActiveControl := TWinControl(List[index]);
   finally
      FreeAndNil(List);
   end;
end;

procedure TmainWindow.Calculate();
var a, b, r : real;
begin
  if not ((first_value <> '') and (calc_action <> '#') and (second_value <> '')) then begin
    OUTPUT.font.size := 14;
    OUTPUT.Caption := 'Внутренняя Ошибка';
    DispayLengthCorrect();
    exit;
  end;

  if (first_value <> '0') and (second_value = '0') and (calc_action = '/') then begin
    OUTPUT.Caption := 'Бесконечность';
    DispayLengthCorrect();
    exit;
  end;

  a := StrToFloat(first_value);
  b := StrToFloat(second_value);
  case calc_action of
  '+' : r := a + b;
  '-' : r := a - b;
  '*' : r := a * b;
  '/' : r := a / b;
  end;
  calculate_result := FloatToStr(r);
  first_value := calculate_result;
  second_value := '';
  calc_action := '#';
  OUTPUT.Caption := calculate_result;
  DispayLengthCorrect()
end;

procedure TmainWindow.NumKeyPress(value : String);
begin
  if (res_displayed) then reset();
  
  if (calc_action = '#') then
    first_value := first_value + value
  else
    second_value :=  second_value + value;
  DisplayUpdate();
end;

procedure TmainWindow.calcActionKeyPress(value : Char);
begin
  if (calc_action = '#') then calc_action := value
  else begin
    if (first_value <> '') and (second_value <> '') then begin
      Calculate();
      calc_action := value;
    end;
  end;
  DisplayUpdate();
end;

procedure TmainWindow.DisplayUpdate();
begin
  if (first_value <> '') and (calc_action <> '#') and (second_value <> '') then begin
    OUTPUT.caption := first_value + ' ' + calc_action + ' ' + second_value;
    DispayLengthCorrect();
    exit;
  end;
  if (first_value <> '') and (calc_action <> '#') then begin
    OUTPUT.caption := first_value + ' ' + calc_action;
    DispayLengthCorrect();
    exit;
  end;
  if (first_value <> '') then begin
    OUTPUT.caption := first_value;
    DispayLengthCorrect();
    exit;
  end;
  if (first_value = '') then Exit;
end;

procedure TmainWindow.DispayLengthCorrect();
var
  ldiff : integer;
begin
  if (Length(OUTPUT.caption) > 15) then begin
    ldiff := Length(OUTPUT.caption) - 15;
    case ldiff of
    0..1 : OUTPUT.font.size := 19;
    2..3 : OUTPUT.font.size := 17;
    4..5 : OUTPUT.font.size := 15;
    6..8 : OUTPUT.font.size := 14;
    9..11 : OUTPUT.font.size := 12;
    12..16 : OUTPUT.font.size := 10;
    17..300 : begin

        OUTPUT.Layout := tlTop;
        //OUTPUT.Align := alTop;
        //OUTPUT.Alignment := taLeftJustify;
        OUTPUT.WordWrap := true;
      end;
    end;
  end else begin
    OUTPUT.font.size := 20;
    OUTPUT.WordWrap := false;
    OUTPUT.Layout := tlBottom;
  end;
end;


procedure TmainWindow.reset();
begin
  first_value := '';
  second_value := '';
  calculate_result := '';
  calc_action := '#';
  CR.Caption := 'v0.1a // Сергей К. 831';
  OUTPUT.caption := '0';
  res_displayed := false;
  SelectByTabOrder(23);
  OUTPUT.font.size := 20;
  OUTPUT.WordWrap := false;
  OUTPUT.Layout := tlBottom;
end;

procedure TmainWindow.OnCreate(Sender: TObject);
begin
  reset();
end;

procedure TmainWindow.OnKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in['0'..'9']) then begin
    NumKeyPress(Key);
  end;
  if (Key = '+') then calcActionKeyPress('+');
  if (Key = '-') then calcActionKeyPress('-');
  if (Key = '*') then calcActionKeyPress('*');
  if (Key = '/') then calcActionKeyPress('/');
  if (Key = #13) then begin
    Calculate();
    res_displayed := true;
  end;
end;
procedure TmainWindow.Button0Click(Sender: TObject);
begin
  NumKeyPress('0');
end;

procedure TmainWindow.Button1Click(Sender: TObject);
begin
  NumKeyPress('1');
end;

procedure TmainWindow.Button2Click(Sender: TObject);
begin
  NumKeyPress('2');
end;

procedure TmainWindow.Button3Click(Sender: TObject);
begin
  NumKeyPress('3');
end;

procedure TmainWindow.Button4Click(Sender: TObject);
begin
  NumKeyPress('4');
end;

procedure TmainWindow.Button5Click(Sender: TObject);
begin
  NumKeyPress('5');
end;

procedure TmainWindow.Button6Click(Sender: TObject);
begin
  NumKeyPress('6');
end;

procedure TmainWindow.Button7Click(Sender: TObject);
begin
  NumKeyPress('7');
end;

procedure TmainWindow.Button8Click(Sender: TObject);
begin
  NumKeyPress('8');
end;

procedure TmainWindow.Button9Click(Sender: TObject);
begin
  NumKeyPress('9');
end;

procedure TmainWindow.PlusButtonClick(Sender: TObject);
begin
  calcActionKeyPress('+');
end;

procedure TmainWindow.MinusButtonClick(Sender: TObject);
begin
  calcActionKeyPress('-');
end;

procedure TmainWindow.MultiplyButtonClick(Sender: TObject);
begin
  calcActionKeyPress('*');
end;

procedure TmainWindow.divideButtonClick(Sender: TObject);
begin
  calcActionKeyPress('/');
end;

procedure TmainWindow.CalculateButtonClick(Sender: TObject);
begin
  Calculate();
  res_displayed := true;
end;

procedure TmainWindow.ResetButtonClick(Sender: TObject);
begin
  reset();
end;

end.
