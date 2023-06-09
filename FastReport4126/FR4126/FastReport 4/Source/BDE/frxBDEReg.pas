
{******************************************}
{                                          }
{             FastReport v4.0              }
{       BDE components registration        }
{                                          }
{         Copyright (c) 1998-2008          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxBDEReg;

interface

{$I frx.inc}

procedure Register;

implementation

uses
  Windows, Messages, SysUtils, Classes, Controls
{$IFNDEF Delphi6}
, DsgnIntf
{$ELSE}
, DesignIntf, DesignEditors
{$ENDIF}
, frxBDEComponents;

procedure Register;
begin
  RegisterComponents('FastReport 4.0', [TfrxBDEComponents]);
{$IFDEF DELPHI16}
  GroupDescendentsWith(TfrxBDEComponents, TControl);
{$ENDIF}
end;

end.
