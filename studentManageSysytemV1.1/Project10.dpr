program Project10;

uses
  Vcl.Forms,
  StudentList in 'StudentList.pas' {TfrmStudentList},
  StudentDlg in 'StudentDlg.pas' {TfrmStudentDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTfrmStudentList, TfrmStudentList);
  Application.CreateForm(TTfrmStudentDlg, TfrmStudentDlg);
  Application.Run;
end.
