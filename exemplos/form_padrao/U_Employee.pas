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
end;

procedure TEmployee.Delete;
begin
  DM.qryEmployee.Delete;
end;

procedure TEmployee.InsertMode;
begin
  DM.qryEmployee.Insert;
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
