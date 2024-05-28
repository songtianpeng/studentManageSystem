unit StudentDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask,
  DBCtrlsEh, YcCombo, Vcl.StdCtrls, YcEdit, RzLabel, YcLabel, RzButton, YcButton,
  System.StrUtils, System.Types, RegularExpressions;

type
  TTfrmStudentDlg = class(TForm)
    lbln1: TYcLabel;
    lbln2: TYcLabel;
    lbln3: TYcLabel;
    lbln4: TYcLabel;
    lbln5: TYcLabel;
    lbl6: TYcLabel;
    lbl7: TYcLabel;
    lbl8: TYcLabel;
    lbl9: TYcLabel;
    lbl10: TYcLabel;
    edt1: TYcEdit;
    edt2: TYcEdit;
    cbb1: TYcComboBox;
    medt1: TMaskEdit;
    edt3: TYcEdit;
    cbb2: TYcComboBox;
    edt4: TYcEdit;
    cbb3: TYcComboBox;
    edt5: TYcEdit;
    edt6: TYcEdit;
    ycbtbtn1: TYcBitBtn;
    ycbtbtn2: TYcBitBtn;
    procedure ycbtbtn2Click(Sender: TObject);
    procedure ycbtbtn1Click(Sender: TObject);
    procedure singleSelect(const key, value: string);
    procedure insertExec();
    procedure updateExec();
    procedure medt1Exit(Sender: TObject);
    procedure edt3Exit(Sender: TObject);
    procedure edt4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfrmStudentDlg: TTfrmStudentDlg;

implementation

uses
  StudentList;

{$R *.dfm}

procedure checkbirthday(const text: string);
var
  strings: array of string;
  Substrings: TStringDynArray;
  i: Integer;
begin
  Substrings := SplitString(text, '-');
  SetLength(strings, Length(Substrings));
  for i := 0 to High(Substrings) do
  begin
    strings[i] := Substrings[i];
  end;
  if (StrToInt(strings[0]) < 1980) or (StrToInt(strings[0]) > 2010) then
    ShowMessage('你输入的年份有误，应该在1980-2010之间，请重新输入！');
  if (StrToInt(strings[1]) < 1) or (StrToInt(strings[1]) > 12) then
    ShowMessage('您输入的月份有误，应该在1-12之间，请重新输入！');
  if (StrToInt(strings[2]) < 1) or (StrToInt(strings[2]) > 31) then
    ShowMessage('您输入的天数有误，应该在1-31之间，请重新输入！');
end;

function ValidateIDCardNumber(const IDCardNumber: string): Boolean;
const
  IDCardPattern = '^\d{17}[\dXx]$';
var
  RegEx: TRegEx;
begin
  RegEx := TRegEx.Create(IDCardPattern);
  Result := RegEx.IsMatch(IDCardNumber);
end;

function ValidatePhoneNumber(const phoneNumber: string): Boolean;
const
  PhonePattern = '^(13[0-9]|14[57]|15[0-35-9]|166|17[0-8]|18[0-9]|19[89])\d{8}$';
var
  RegEx: TRegEx;
begin
  RegEx := TRegEx.Create(PhonePattern);
  Result := RegEx.IsMatch(phoneNumber);
end;

procedure TTfrmStudentDlg.medt1Exit(Sender: TObject);
begin
  checkbirthday(medt1.Text);
end;

procedure TTfrmStudentDlg.singleSelect(const key, value: string);
begin
  TfrmStudentList.unqry1.SQL.Text := 'select * from student1 where ' + key + ' = :' + key;
  TfrmStudentList.unqry1.ParamByName(key).AsString := value;
  TfrmStudentList.unqry1.open;
end;

procedure TTfrmStudentDlg.edt3Exit(Sender: TObject);
begin
  if not (ValidateIDCardNumber(edt3.Text)) then
    ShowMessage('你输入的身份证格式不对，请检查输入！');
end;

procedure TTfrmStudentDlg.edt4Exit(Sender: TObject);
begin
  if not (ValidatePhoneNumber(edt4.Text)) then
    ShowMessage('输入的手机号码格式不正确，请检查输入！');
end;

procedure TTfrmStudentDlg.insertExec();
begin
  try
    TfrmStudentList.UniQuery1.SQL.Text := 'INSERT INTO Student1 (id, name, sex, birthday, id_no, native_place, contact_number, ' + 'parent_type, parent_name, parent_number, create_time, last_time) VALUES (:id, :name, :sex, TO_DATE(:birthday, ''YYYY-MM-DD''), ' + ':id_no, :native_place, :contact_number, :parent_type, :parent_name, :parent_number, SYSDATE, SYSDATE)';
    TfrmStudentList.UniQuery1.ParamByName('id').AsString := edt1.text; // 生成唯一的 id
    TfrmStudentList.UniQuery1.ParamByName('id_no').AsString := edt3.Text;
    TfrmStudentList.UniQuery1.ParamByName('name').AsString := edt2.Text;
    TfrmStudentList.UniQuery1.ParamByName('sex').AsString := cbb1.Text;
    TfrmStudentList.UniQuery1.ParamByName('birthday').AsString := medt1.Text;
    TfrmStudentList.UniQuery1.ParamByName('native_place').AsString := cbb2.Text;
    TfrmStudentList.UniQuery1.ParamByName('contact_number').AsString := edt4.Text;
    TfrmStudentList.UniQuery1.ParamByName('parent_type').AsInteger := cbb3.ItemIndex;
    TfrmStudentList.UniQuery1.ParamByName('parent_name').AsString := edt5.Text;
    TfrmStudentList.UniQuery1.ParamByName('parent_number').AsString := edt6.Text;
    TfrmStudentList.UniQuery1.ExecSQL; // 执行插入语句

  finally
      
//    FreeAndNil(TfrmStudentList.UniQuery1); // 使用 FreeAndNil 避免空指针异常;
  end;
end;

procedure TTfrmStudentDlg.updateExec();
begin
  try
    TfrmStudentList.UniQuery1.SQL.Text := 'UPDATE Student1 SET name = :name, sex = :sex, birthday = TO_DATE(:birthday, ''YYYY-MM-DD''), ' + 'id_no = :id_no, native_place = :native_place, contact_number = :contact_number, parent_type = :parent_type, ' + 'parent_name = :parent_name, parent_number = :parent_number, last_time = SYSDATE WHERE id = :id';
    TfrmStudentList.UniQuery1.ParamByName('id').AsString := edt1.text; // 生成唯一的 id
    TfrmStudentList.UniQuery1.ParamByName('id_no').AsString := edt3.Text;
    TfrmStudentList.UniQuery1.ParamByName('name').AsString := edt2.Text;
    TfrmStudentList.UniQuery1.ParamByName('sex').AsString := cbb1.Text;
    TfrmStudentList.UniQuery1.ParamByName('birthday').AsString := medt1.Text;
    TfrmStudentList.UniQuery1.ParamByName('native_place').AsString := cbb2.Text;
    TfrmStudentList.UniQuery1.ParamByName('contact_number').AsString := edt4.Text;
    TfrmStudentList.UniQuery1.ParamByName('parent_type').AsInteger := cbb3.ItemIndex;
    TfrmStudentList.UniQuery1.ParamByName('parent_name').AsString := edt5.Text;
    TfrmStudentList.UniQuery1.ParamByName('parent_number').AsString := edt6.Text;
    TfrmStudentList.UniQuery1.ExecSQL; // 执行更新语句
  finally
//    FreeAndNil(TfrmStudentList.UniQuery1); // 使用 FreeAndNil 避免空指针异常
  end;
end;

procedure TTfrmStudentDlg.ycbtbtn1Click(Sender: TObject);
var
  res: Integer;
begin
  singleSelect('id', edt1.Text);
  if not (TfrmStudentList.unqry1.EOF) then
  begin
  // 查询返回了数据
  // 在这里处理返回的数据
    res := MessageBox(0, '该学生已存在是否进行修改', '提醒', MB_OKCANCEL);
    if res = IDOK then
    begin
      try
        updateExec();
        ShowMessage('信息修改成功！');
        close;
      except
        on E: Exception do
        ShowMessage('输入不允许有空值！');
      end;
    end;
  end
  else
  begin
  // 查询未返回数据
  // 在这里处理未返回数据的情况
    try
      insertExec();
      ShowMessage('创建成功！');
      Close;
    except
      on E: Exception do
        ShowMessage('输入不允许有空值！');
    end;
  end;
end;

procedure TTfrmStudentDlg.ycbtbtn2Click(Sender: TObject);
begin
  close;
end;

end.

