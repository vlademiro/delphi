unit U_Employee;

interface

  type TEmployee = class
    private
      sSelectBase: string;
    public
      constructor Create();
      procedure SelectBase();
      procedure InsertMode();
      procedure UpdateMode();
      procedure Delete();
      procedure Cancel();
      procedure Refresh();
      procedure Post();
      procedure ListALL();
      procedure ListAllByName( cName:String );

  end;

implementation

uses U_DM;

procedure TEmployee.Cancel;
begin
  DM.qryEmployee.Cancel;
end;

constructor TEmployee.Create;
begin
  sSelectBase := DM.qryEmployee.SQL.Text;
  DM.qryEmployee.Open;
end;

procedure TEmployee.Delete;
begin
  DM.qryEmployee.Delete;
end;

procedure TEmployee.InsertMode;
begin
  DM.qryEmployee.Insert;
end;

procedure TEmployee.ListALL;
begin
  DM.qryEmployee.Close;
  DM.qryEmployee.SQL.Text := sSelectBase;
  DM.qryEmployee.Open;
  while not DM.qryEmployee.Eof do
  begin
      writeln( DM.qryEmployee.FieldByName('first_name').Value );
      DM.qryEmployee.Next;
  end;
end;

procedure TEmployee.ListAllByName(cName: String);
begin
  DM.qryEmployee.Close;
  DM.qryEmployee.SQL.Text := sSelectBase + ' WHERE FIRST_NAME LIKE ''%'' || :CNAME || ''%''';
  DM.qryEmployee.ParamByName('CNAME').AsString := cName;
  DM.qryEmployee.Open;
  while not DM.qryEmployee.Eof do
  begin
      writeln( DM.qryEmployee.FieldByName('first_name').Value );
      DM.qryEmployee.Next;
  end;
end;

procedure TEmployee.Post;
begin
  DM.qryEmployee.Refresh;
end;

procedure TEmployee.Refresh;
begin
  DM.qryEmployee.Refresh;
end;

procedure TEmployee.SelectBase();
begin
  DM.qryEmployee.Close();
  DM.qryEmployee.SQL.Text := sSelectBase;
  DM.qryEmployee.Open();
end;


procedure TEmployee.UpdateMode;
begin
  DM.qryEmployee.Edit;
end;

end.
