program Calc;

uses
  Forms,
  Calc_pr in 'Calc_pr.pas' {mainWindow};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TmainWindow, mainWindow);
  Application.Run;
end.
