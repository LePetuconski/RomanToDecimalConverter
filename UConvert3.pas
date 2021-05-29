unit UConvert3;

interface

type
  TConversor = class
  private

  protected

  public const
    Arabicos: array [1 .. 14] of Integer = (0, 1, 4, 5, 9, 10, 40, 50, 90, 100,
      400, 500, 900, 1000);
    Romanos: array [1 .. 14] of string = ('0', 'I', 'IV', 'V', 'IX', 'X', 'XL',
      'L', 'XC', 'C', 'CD', 'D', 'CM', 'M');
    function FuncConvert(Number: String): Integer;
    function RetornaIndex(Number: String): Integer;
  published

  end;

var
  Number: array [1 .. 14] of string;

implementation

{ TConversor }

function TConversor.FuncConvert(Number: String): Integer;

var
  Romano: array [1 .. 14] of string;
  Arabico: array [1 .. 14] of Integer;
  algromano, s: string;
  i, a, anterior, soma, n: Integer;
  letra: char;
  j, index: Integer;

begin

  soma := 0;
  anterior := 0;
  for i := 1 to length(Number) do
  begin
    Index := RetornaIndex(Number[i]);

    if ((anterior < Arabicos[index])) then
    begin
      soma := soma - (anterior * 2);

    end;
    if Number[i] = Romanos[index] then
      soma := soma + Arabicos[index];
    anterior := (Arabicos[index]);

  end;
  Result := soma;

end;

function TConversor.RetornaIndex(Number: String): Integer;
var
  i: Integer;

begin
  Result := -1;
  for i := Low(Romanos) to High(Romanos) do
    if (Romanos[i] = Number) then
      Result := i;
end;

end.
