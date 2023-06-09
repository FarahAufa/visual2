
{******************************************}
{                                          }
{             FastScript v1.9              }
{            Registration unit             }
{                                          }
{  (c) 2003-2007 by Alexander Tzyganenko,  }
{             Fast Reports Inc             }
{                                          }
{******************************************}

unit FMX.fs_iadoreg;

{$i fs.inc}

interface


procedure Register;

implementation

uses
  Classes
, DesignIntf
, FMX.Types
, FMX.fs_iadortti;

{-----------------------------------------------------------------------}

procedure Register;
begin
  GroupDescendentsWith(TfsADORTTI, TControl);
  RegisterComponents('FastScript FMX', [TfsADORTTI]);
end;

end.
