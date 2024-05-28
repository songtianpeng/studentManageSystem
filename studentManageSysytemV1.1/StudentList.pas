﻿unit StudentList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, YcDBGrid, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  OracleUniProvider, YcLabel, Vcl.StdCtrls, RzLabel, RzDBLbl, YcDTPicker, YcEdit,
  YcLookup, Vcl.Mask, DBCtrlsEh, YcCombo, Vcl.ExtCtrls, RzPanel, YcPanel,
  RzRadGrp, YcGroup, RzButton, YcButton, System.DateUtils, PrnDbgeh, Vcl.Buttons,
  frxClass, frxPreview, frxExportPDF, frxDBSet,System.IOUtils;

type
  TTfrmStudentList = class(TForm)
    OracleUniProvider1: TOracleUniProvider;
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    YcPanel1: TYcPanel;
    YcDBGrid5: TYcDBGrid;
    rzpnl1: TRzPanel;
    rzpnl2: TRzPanel;
    lbl2: TYcLabel;
    edt1: TYcEdit;
    lbl3: TYcLabel;
    edt4: TYcEdit;
    lbl4: TYcLabel;
    cbb1: TYcComboBox;
    lbl5: TYcLabel;
    lbl6: TYcLabel;
    edt6: TYcEdit;
    lbl7: TYcLabel;
    edt8: TYcEdit;
    lbl8: TYcLabel;
    ycbtbtn1: TYcBitBtn;
    ycbtbtn2: TYcBitBtn;
    ycbtbtn3: TYcBitBtn;
    ycbtbtn4: TYcBitBtn;
    ycbtbtn5: TYcBitBtn;
    ycbtbtn6: TYcBitBtn;
    rzpnl3: TRzPanel;
    img1: TImage;
    lbl9: TYcLabel;
    cbb3: TYcComboBox;
    lbl10: TYcLabel;
    edt9: TYcEdit;
    lbl11: TYcLabel;
    edt10: TYcEdit;
    lbl12: TYcLabel;
    lbl13: TYcLabel;
    cbb4: TYcComboBox;
    unqry1: TUniQuery;
    prntdbgrdh1: TPrintDBGridEh;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    ycdtmpckr1: TYcDateTimePicker;
    ycdtmpckr2: TYcDateTimePicker;
    ycdtmpckr3: TYcDateTimePicker;
    ycdtmpckr4: TYcDateTimePicker;
    lb1: TYcLabel;
    lb2: TYcLabel;
    ycdtmpckr5: TYcDateTimePicker;
    ycbtbtn7: TYcBitBtn;
    lb3: TYcLabel;
    lb4: TYcLabel;
    ycbtbtn8: TYcBitBtn;
    ycbtbtn9: TYcBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ycbtbtn1Click(Sender: TObject);
    procedure singleSelect(const key, value: string);
    procedure multiSelect(const key, value: string);
    procedure ycbtbtn6Click(Sender: TObject);
    procedure ycbtbtn2Click(Sender: TObject);
    procedure ycbtbtn3Click(Sender: TObject);
    procedure ycbtbtn5Click(Sender: TObject);
    procedure ycbtbtn4Click(Sender: TObject);
    procedure selectedel();
    procedure cbb1KeyPress(Sender: TObject; var Key: Char);
    procedure cbb4KeyPress(Sender: TObject; var Key: Char);
    procedure cbb3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bu(Sender: TObject; Accept: Boolean);
    procedure ycbtbtn7Click(Sender: TObject);
    procedure multiTimeSelect(const key: string);
    procedure ycbtbtn8Click(Sender: TObject);
    procedure ycbtbtn9Click(Sender: TObject);
    procedure ycdtmpckr3YcCloseUp(Sender: TObject; Accept: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfrmStudentList: TTfrmStudentList;
  SQL: string;
  intValue: SmallInt;

var
  Values: array of string;
  count: Integer;

var
  AValues: TStringList;

implementation

uses
  StudentDlg;

{$R *.dfm}

//进行选中删除操作
procedure TTfrmStudentList.selectedel();
var
  i: Integer;
  selectedID: string;
  res: Integer;
begin
    // 获取选中行的 id
  selectedID := UniQuery1.FieldByName('id').AsString;
    // 使用 Format 函数将文本格式化，并显示在消息框中
  res := MessageBox(0, PChar(Format('确认要删除id为 %s 的同学吗？', [selectedID])), '提醒', MB_OKCANCEL);
  if res = IDOK then
  begin
    if not UniQuery1.IsEmpty then
    begin
    // 删除选中行
      UniQuery1.SQL.Text := 'DELETE FROM Student1 WHERE id = :selectedID';
      UniQuery1.ParamByName('selectedID').AsString := selectedID;
      try
        UniQuery1.ExecSQL;
        ShowMessage('删除成功');
      except
        on E: Exception do
          ShowMessage('删除失败：' + E.Message);
      end;
    end
    else
    begin
      ShowMessage('没有选中行');
    end;
  end;

end;

procedure TTfrmStudentList.singleSelect(const key, value: string);
var
  DateValue: TDate;
  datetimeValue1: TDateTime;
  datetimeValue2: TDateTime;
begin
  UniQuery1.SQL.Text := 'select * from student1 where ' + key + ' = :' + key;
  if key = 'birthday' then
  begin
    DateValue := StrToDate(value);
    // 设置查询参数
    UniQuery1.ParamByName(key).AsDate := DateValue;
  end
  else if (key = 'create_time') then
  begin
    UniQuery1.SQL.Text := 'select * from student1 where ' + key + ' between :start_date and :end_date';
    datetimeValue1 := StrToDateTime(ycdtmpckr1.Text);
    datetimeValue2 := StrToDateTime(ycdtmpckr2.Text);
         // 设置查询参数
    UniQuery1.ParamByName('start_date').AsDateTime := datetimeValue1;
    UniQuery1.ParamByName('end_date').AsDateTime := datetimeValue2;
  end
  else if (key = 'last_time') then
  begin
    UniQuery1.SQL.Text := 'select * from student1 where ' + key + ' between :start_date and :end_date';
    datetimeValue1 := StrToDateTime(ycdtmpckr3.Text);
    datetimeValue2 := StrToDateTime(ycdtmpckr4.Text);
         // 设置查询参数
    UniQuery1.ParamByName('start_date').AsDateTime := datetimeValue1;
    UniQuery1.ParamByName('end_date').AsDateTime := datetimeValue2;
  end
  else if (key = 'parent_type') then
  begin
    intValue := cbb3.ItemIndex;
    UniQuery1.ParamByName(key).AsSmallInt := intValue;
  end
  else
    UniQuery1.ParamByName(key).AsString := value;
end;

procedure TTfrmStudentList.multiSelect(const key, value: string);
var
  DateValue: TDate;
  datetimeValue: TDateTime;
begin
      // 构建多条件查询
  SQL := SQL + key + ' = :' + key + ' AND ';
  UniQuery1.SQL.Text := SQL;
  if key = 'birthday' then
  begin
    DateValue := StrToDate(value);
    // 设置查询参数
    UniQuery1.ParamByName(key).AsDate := DateValue;
  end
  else if (key = 'parent_type') then
  begin
    intValue := cbb3.ItemIndex;
    UniQuery1.ParamByName(key).AsSmallInt := intValue;
  end
  else
    UniQuery1.ParamByName(key).AsString := value;
end;

procedure TTfrmStudentList.multiTimeSelect(const key: string);
var
  datetimeValue1: TDateTime;
  datetimeValue2: TDateTime;
begin
  if (key = 'create_time') then
  begin
    SQL := SQL + key + ' between :start_date and :end_date' + ' AND ';
    UniQuery1.SQL.Text := SQL;
    datetimeValue1 := StrToDateTime(ycdtmpckr1.Text);
    datetimeValue2 := StrToDateTime(ycdtmpckr2.Text);
      // 设置查询参数
    UniQuery1.ParamByName('start_date').AsDateTime := datetimeValue1;
    UniQuery1.ParamByName('end_date').AsDateTime := datetimeValue2;
  end
  else
  begin
    SQL := SQL + key + ' between :start_date2 and :end_date2' + ' AND ';
    UniQuery1.SQL.Text := SQL;
    datetimeValue1 := StrToDateTime(ycdtmpckr3.Text);
    datetimeValue2 := StrToDateTime(ycdtmpckr4.Text);
    UniQuery1.ParamByName('start_date2').AsDateTime := datetimeValue1;
    UniQuery1.ParamByName('end_date2').AsDateTime := datetimeValue2;
  end;

end;

procedure TTfrmStudentList.cbb1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0; // 屏蔽用户的键盘输入
end;

procedure TTfrmStudentList.cbb3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0; // 屏蔽用户的键盘输入
end;

procedure TTfrmStudentList.cbb4KeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0; // 屏蔽用户的键盘输入
end;

procedure TTfrmStudentList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//释放资源
  FreeAndNil(TfrmStudentList.UniQuery1); // 使用 FreeAndNil 避免空指针异常
  frxrprt1.Free;
end;

procedure TTfrmStudentList.FormCreate(Sender: TObject);
begin
  UniQuery1.Open;
  YcDBGrid5.SelectedRows.Clear;
  Cbb1.ItemIndex := 0; // 默认选中第一个 item
  cbb3.ItemIndex := 0; // 默认选中第一个 item
  cbb4.ItemIndex := 0; // 默认选中第一个 item
end;

procedure TTfrmStudentList.ycbtbtn1Click(Sender: TObject);
var
  count: Integer;
begin
  SQL := 'select * from student1 where ';
  count := 0;
  if edt1.Text <> '' then
    inc(count);
  if edt4.Text <> '' then
    inc(count);
  if cbb1.Text <> '--请选择性别--' then
    inc(count);
  if (ycdtmpckr5.Text <> '') then
    inc(count);
  if edt6.Text <> '' then
    inc(count);
  if cbb4.Text <> '--请选择籍贯--' then
    inc(count);
  if edt8.Text <> '' then
    inc(count);
  if cbb3.Text <> '--请选择父母类型--' then
    inc(count);
  if edt10.Text <> '' then
    inc(count);
  if (ycdtmpckr1.Text <> '') and (ycdtmpckr2.Text <> '') then
    inc(count);
  if (ycdtmpckr3.Text <> '') and (ycdtmpckr4.Text <> '') then
    inc(count);
  if edt9.Text <> '' then
    inc(count);
  if count = 1 then
  begin
    if (edt4.Text <> '') then
      singleSelect('name', edt4.Text); // 添加名字参数并设置值
    if (edt1.Text <> '') then
      singleSelect('id', edt1.Text);      // 添加学号参数并设置值
    if (cbb1.Text <> '--请选择性别--') then
      singleSelect('sex', cbb1.Text); // 添加名字参数并设置值
    if (ycdtmpckr5.Text <> '') then
      singleSelect('birthday', ycdtmpckr5.Text);      // 添加学号参数并设置值
    if (edt6.Text <> '') then
      singleSelect('id_no', edt6.Text); // 添加名字参数并设置值
    if (cbb4.Text <> '--请选择籍贯--') then
      singleSelect('native_place', cbb4.Text);      // 添加学号参数并设置值
    if (edt8.Text <> '') then
      singleSelect('contact_number', edt8.Text); // 添加名字参数并设置值
    if (cbb3.Text <> '--请选择父母类型--') then
      singleSelect('parent_type', cbb3.Text);      // 添加学号参数并设置值
    if (edt9.Text <> '') then
      singleSelect('parent_name', edt9.Text); // 添加名字参数并设置值
    if (edt10.Text <> '') then
      singleSelect('parent_number', edt10.Text);      // 添加学号参数并设置值
    if ((ycdtmpckr1.Text <> '') and (ycdtmpckr2.Text <> '')) then
      singleSelect('create_time', ycdtmpckr1.Text); // 添加名字参数并设置值
    if ((ycdtmpckr3.Text <> '') and (ycdtmpckr4.Text <> '')) then
      singleSelect('last_time', ycdtmpckr3.Text);      // 添加学号参数并设置值
    try
      UniQuery1.Open;
    except
      on E: Exception do
        ShowMessage('输入格式有误，请检查！');
    end;
  end
  else if count = 0 then
  begin
    UniQuery1.SQL.Text := 'select * from student1';
    UniQuery1.Open;
  end
  else
  begin
    if (edt4.Text <> '') then
      multiSelect('name', edt4.Text); // 添加名字参数并设置值
    if (edt1.Text <> '') then
      multiSelect('id', edt1.Text);      // 添加学号参数并设置值
    if (cbb1.Text <> '--请选择性别--') then
      multiSelect('sex', cbb1.Text); // 添加名字参数并设置值
    if (ycdtmpckr5.Text <> '') then
      multiSelect('birthday', ycdtmpckr5.Text);      // 添加学号参数并设置值
    if (edt6.Text <> '') then
      multiSelect('id_no', edt6.Text); // 添加名字参数并设置值
    if (cbb4.Text <> '--请选择籍贯--') then
      multiSelect('native_place', cbb4.Text);      // 添加学号参数并设置值
    if (edt8.Text <> '') then
      multiSelect('contact_number', edt8.Text); // 添加名字参数并设置值
    if (cbb3.Text <> '--请选择父母类型--') then
      multiSelect('parent_type', cbb3.Text);      // 添加学号参数并设置值
    if (edt9.Text <> '') then
      multiSelect('parent_name', edt9.Text); // 添加名字参数并设置值
    if (edt10.Text <> '') then
      multiSelect('parent_number', edt10.Text);      // 添加学号参数并设置值
    if (ycdtmpckr1.Text <> '') and (ycdtmpckr2.Text <> '') then
      multiTimeSelect('create_time'); // 添加名字参数并设置值
    if (ycdtmpckr3.Text <> '') and (ycdtmpckr4.Text <> '') then
      multiTimeSelect('last_time');      // 添加学号参数并设置值
    // 移除末尾的 'AND '（如果有的话）
    SQL := TrimRight(UniQuery1.SQL.Text);
    if SQL.EndsWith('AND', True) then
      SQL := Copy(SQL, 1, Length(SQL) - 4);
    // 执行查询
    UniQuery1.SQL.Text := SQL;
    try
      UniQuery1.Open;
    except
      on E: Exception do
        ShowMessage('输入格式有误，请检查！');
    end;
  end;

end;

procedure TTfrmStudentList.ycbtbtn2Click(Sender: TObject);
begin
  // 创建并显示另一个窗口
  TfrmStudentDlg := TTfrmStudentDlg.Create(Self);
  try
    TfrmStudentDlg.ShowModal; // 显示模态窗口
  finally
    TfrmStudentDlg.Free; // 释放窗口对象
  end;
end;

procedure TTfrmStudentList.ycbtbtn3Click(Sender: TObject);
var
  selectedID: string;
  selectedName: string;
  selectedSex: string;
  selectedBirthday: TDateTime;
  selectedIdNo: string;
  selectedNativePlace: string;
  selectedContactNumber: string;
  selectedParentType: SmallInt;
  selectedParentName: string;
  selectedParentNumber: string;
  res: Integer;
begin
    // 创建并显示另一个窗口
  TfrmStudentDlg := TTfrmStudentDlg.Create(Self);
  try
    try
      selectedID := UniQuery1.FieldByName('id').AsString;     // 获取选中行的 id
      selectedName := UniQuery1.FieldByName('name').AsString;
      selectedSex := UniQuery1.FieldByName('sex').AsString;
      selectedBirthday := UniQuery1.FieldByName('birthday').AsDateTime;
      selectedIdNo := UniQuery1.FieldByName('id_no').AsString;
      selectedNativePlace := UniQuery1.FieldByName('native_place').AsString;
      selectedContactNumber := UniQuery1.FieldByName('contact_number').AsString;
      selectedParentType := UniQuery1.FieldByName('parent_type').AsInteger;
      selectedParentName := UniQuery1.FieldByName('parent_name').AsString;
      selectedParentNumber := UniQuery1.FieldByName('parent_number').AsString;
      TfrmStudentDlg.edt1.Text := selectedID;
      TfrmStudentDlg.edt3.Text := selectedIdNo;
      TfrmStudentDlg.edt2.Text := selectedName;
      TfrmStudentDlg.cbb1.Text := selectedSex;
      TfrmStudentDlg.medt1.Text := DatetimeToStr(selectedBirthday);
      TfrmStudentDlg.cbb2.Text := selectedNativePlace;
      TfrmStudentDlg.edt4.Text := selectedContactNumber;
      TfrmStudentDlg.cbb3.ItemIndex := selectedParentType;
      TfrmStudentDlg.edt5.Text := selectedParentName;
      TfrmStudentDlg.edt6.Text := selectedParentNumber;
      TfrmStudentDlg.ShowModal; // 显示模态窗口
    except
      on E: Exception do
        ShowMessage('未选中任何行！');
    end;
  finally
    TfrmStudentDlg.Free; // 释放窗口对象
  end;
end;

procedure TTfrmStudentList.ycbtbtn4Click(Sender: TObject);
var
  res: Integer;
begin
  if not UniQuery1.IsEmpty then
  begin
  // 数据集不为空的处理逻辑
    try
      selectedel();
    except
      on E: Exception do
        ShowMessage('未选中任何行！');
    end;
  end
  else
  begin
  // 数据集为空的处理逻辑
    ShowMessage('当前数据集为空,不能删除');
  end;
end;

procedure TTfrmStudentList.ycbtbtn5Click(Sender: TObject);
var
  reportPath:string;
begin
  reportPath:= Tdirectory.GetCurrentDirectory() + '\report1.fr3';
//  ShowMessage(reportPath);
  try
    frxrprt1.LoadFromFile(reportPath);
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
  frxrprt1.ShowReport();
end;

procedure TTfrmStudentList.ycbtbtn6Click(Sender: TObject);
begin
  Close;
end;


//将选择的时间清空
procedure TTfrmStudentList.ycbtbtn7Click(Sender: TObject);
begin
  ycdtmpckr5.Clear;
end;

procedure TTfrmStudentList.ycbtbtn8Click(Sender: TObject);
begin
  ycdtmpckr1.Clear;
  ycdtmpckr2.Clear;
end;

procedure TTfrmStudentList.ycbtbtn9Click(Sender: TObject);
begin
  ycdtmpckr3.Clear;
  ycdtmpckr4.Clear;
end;

//初始化时分秒：设置为00:00:00,确保选择的日期是一天的开头
procedure TTfrmStudentList.bu(Sender: TObject; Accept: Boolean);
var
  selectedDate: TDateTime;
  selectedTime: TTime;
begin
  // 获取日期部分
  selectedDate := ycdtmpckr1.Date;
  selectedTime := EncodeTime(0, 0, 0, 0);
  // 将修改后的日期时间值赋值回组件
  ycdtmpckr1.DateTime := selectedDate + selectedTime;
end;

procedure TTfrmStudentList.ycdtmpckr3YcCloseUp(Sender: TObject; Accept: Boolean);
var
  selectedDate: TDateTime;
  selectedTime: TTime;
begin
  // 获取日期部分
  selectedDate := ycdtmpckr3.Date;
  selectedTime := EncodeTime(0, 0, 0, 0);
  // 将修改后的日期时间值赋值回组件
  ycdtmpckr3.DateTime := selectedDate + selectedTime;
end;

end.

