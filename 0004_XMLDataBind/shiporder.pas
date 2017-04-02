
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 05/08/2012 18:33:34                                     }
{       Generated from: D:\Jocimar\Projetos\Blog Sobre Programa\shiporder.biz   }
{                                                                               }
{*******************************************************************************}

unit shiporder;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLShipordertype = interface;
  IXMLShiptotype = interface;
  IXMLItemtype = interface;
  IXMLItemtypeList = interface;

{ IXMLShipordertype }

  IXMLShipordertype = interface(IXMLNode)
    ['{30B5F2AE-BA73-4BC3-A99B-0306E95CA873}']
    { Property Accessors }
    function Get_Orderid: UnicodeString;
    function Get_Orderperson: UnicodeString;
    function Get_Shipto: IXMLShiptotype;
    function Get_Item: IXMLItemtypeList;
    procedure Set_Orderid(Value: UnicodeString);
    procedure Set_Orderperson(Value: UnicodeString);
    { Methods & Properties }
    property Orderid: UnicodeString read Get_Orderid write Set_Orderid;
    property Orderperson: UnicodeString read Get_Orderperson write Set_Orderperson;
    property Shipto: IXMLShiptotype read Get_Shipto;
    property Item: IXMLItemtypeList read Get_Item;
  end;

{ IXMLShiptotype }

  IXMLShiptotype = interface(IXMLNode)
    ['{761DF6BA-A14C-458F-9389-2CB56519288F}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_City: UnicodeString;
    function Get_Country: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Address(Value: UnicodeString);
    procedure Set_City(Value: UnicodeString);
    procedure Set_Country(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Address: UnicodeString read Get_Address write Set_Address;
    property City: UnicodeString read Get_City write Set_City;
    property Country: UnicodeString read Get_Country write Set_Country;
  end;

{ IXMLItemtype }

  IXMLItemtype = interface(IXMLNode)
    ['{98647E57-1643-445B-8345-B44AA64AD102}']
    { Property Accessors }
    function Get_Title: UnicodeString;
    function Get_Note: UnicodeString;
    function Get_Quantity: LongWord;
    function Get_Price: UnicodeString;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_Note(Value: UnicodeString);
    procedure Set_Quantity(Value: LongWord);
    procedure Set_Price(Value: UnicodeString);
    { Methods & Properties }
    property Title: UnicodeString read Get_Title write Set_Title;
    property Note: UnicodeString read Get_Note write Set_Note;
    property Quantity: LongWord read Get_Quantity write Set_Quantity;
    property Price: UnicodeString read Get_Price write Set_Price;
  end;

{ IXMLItemtypeList }

  IXMLItemtypeList = interface(IXMLNodeCollection)
    ['{6AC8637E-A834-45BC-B39F-68C1AE191D0E}']
    { Methods & Properties }
    function Add: IXMLItemtype;
    function Insert(const Index: Integer): IXMLItemtype;

    function Get_Item(Index: Integer): IXMLItemtype;
    property Items[Index: Integer]: IXMLItemtype read Get_Item; default;
  end;

{ Forward Decls }

  TXMLShipordertype = class;
  TXMLShiptotype = class;
  TXMLItemtype = class;
  TXMLItemtypeList = class;

{ TXMLShipordertype }

  TXMLShipordertype = class(TXMLNode, IXMLShipordertype)
  private
    FItem: IXMLItemtypeList;
  protected
    { IXMLShipordertype }
    function Get_Orderid: UnicodeString;
    function Get_Orderperson: UnicodeString;
    function Get_Shipto: IXMLShiptotype;
    function Get_Item: IXMLItemtypeList;
    procedure Set_Orderid(Value: UnicodeString);
    procedure Set_Orderperson(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShiptotype }

  TXMLShiptotype = class(TXMLNode, IXMLShiptotype)
  protected
    { IXMLShiptotype }
    function Get_Name: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_City: UnicodeString;
    function Get_Country: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Address(Value: UnicodeString);
    procedure Set_City(Value: UnicodeString);
    procedure Set_Country(Value: UnicodeString);
  end;

{ TXMLItemtype }

  TXMLItemtype = class(TXMLNode, IXMLItemtype)
  protected
    { IXMLItemtype }
    function Get_Title: UnicodeString;
    function Get_Note: UnicodeString;
    function Get_Quantity: LongWord;
    function Get_Price: UnicodeString;
    procedure Set_Title(Value: UnicodeString);
    procedure Set_Note(Value: UnicodeString);
    procedure Set_Quantity(Value: LongWord);
    procedure Set_Price(Value: UnicodeString);
  end;

{ TXMLItemtypeList }

  TXMLItemtypeList = class(TXMLNodeCollection, IXMLItemtypeList)
  protected
    { IXMLItemtypeList }
    function Add: IXMLItemtype;
    function Insert(const Index: Integer): IXMLItemtype;

    function Get_Item(Index: Integer): IXMLItemtype;
  end;

{ Global Functions }

function Getshiporder(Doc: IXMLDocument): IXMLShipordertype;
function Loadshiporder(const FileName: string): IXMLShipordertype;
function Newshiporder: IXMLShipordertype;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getshiporder(Doc: IXMLDocument): IXMLShipordertype;
begin
  Result := Doc.GetDocBinding('shiporder', TXMLShipordertype, TargetNamespace) as IXMLShipordertype;
end;

function Loadshiporder(const FileName: string): IXMLShipordertype;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('shiporder', TXMLShipordertype, TargetNamespace) as IXMLShipordertype;
end;

function Newshiporder: IXMLShipordertype;
begin
  Result := NewXMLDocument.GetDocBinding('shiporder', TXMLShipordertype, TargetNamespace) as IXMLShipordertype;
end;

{ TXMLShipordertype }

procedure TXMLShipordertype.AfterConstruction;
begin
  RegisterChildNode('shipto', TXMLShiptotype);
  RegisterChildNode('item', TXMLItemtype);
  FItem := CreateCollection(TXMLItemtypeList, IXMLItemtype, 'item') as IXMLItemtypeList;
  inherited;
end;

function TXMLShipordertype.Get_Orderid: UnicodeString;
begin
  Result := AttributeNodes['orderid'].Text;
end;

procedure TXMLShipordertype.Set_Orderid(Value: UnicodeString);
begin
  SetAttribute('orderid', Value);
end;

function TXMLShipordertype.Get_Orderperson: UnicodeString;
begin
  Result := ChildNodes['orderperson'].Text;
end;

procedure TXMLShipordertype.Set_Orderperson(Value: UnicodeString);
begin
  ChildNodes['orderperson'].NodeValue := Value;
end;

function TXMLShipordertype.Get_Shipto: IXMLShiptotype;
begin
  Result := ChildNodes['shipto'] as IXMLShiptotype;
end;

function TXMLShipordertype.Get_Item: IXMLItemtypeList;
begin
  Result := FItem;
end;

{ TXMLShiptotype }

function TXMLShiptotype.Get_Name: UnicodeString;
begin
  Result := ChildNodes['name'].Text;
end;

procedure TXMLShiptotype.Set_Name(Value: UnicodeString);
begin
  ChildNodes['name'].NodeValue := Value;
end;

function TXMLShiptotype.Get_Address: UnicodeString;
begin
  Result := ChildNodes['address'].Text;
end;

procedure TXMLShiptotype.Set_Address(Value: UnicodeString);
begin
  ChildNodes['address'].NodeValue := Value;
end;

function TXMLShiptotype.Get_City: UnicodeString;
begin
  Result := ChildNodes['city'].Text;
end;

procedure TXMLShiptotype.Set_City(Value: UnicodeString);
begin
  ChildNodes['city'].NodeValue := Value;
end;

function TXMLShiptotype.Get_Country: UnicodeString;
begin
  Result := ChildNodes['country'].Text;
end;

procedure TXMLShiptotype.Set_Country(Value: UnicodeString);
begin
  ChildNodes['country'].NodeValue := Value;
end;

{ TXMLItemtype }

function TXMLItemtype.Get_Title: UnicodeString;
begin
  Result := ChildNodes['title'].Text;
end;

procedure TXMLItemtype.Set_Title(Value: UnicodeString);
begin
  ChildNodes['title'].NodeValue := Value;
end;

function TXMLItemtype.Get_Note: UnicodeString;
begin
  Result := ChildNodes['note'].Text;
end;

procedure TXMLItemtype.Set_Note(Value: UnicodeString);
begin
  ChildNodes['note'].NodeValue := Value;
end;

function TXMLItemtype.Get_Quantity: LongWord;
begin
  Result := ChildNodes['quantity'].NodeValue;
end;

procedure TXMLItemtype.Set_Quantity(Value: LongWord);
begin
  ChildNodes['quantity'].NodeValue := Value;
end;

function TXMLItemtype.Get_Price: UnicodeString;
begin
  Result := ChildNodes['price'].Text;
end;

procedure TXMLItemtype.Set_Price(Value: UnicodeString);
begin
  ChildNodes['price'].NodeValue := Value;
end;

{ TXMLItemtypeList }

function TXMLItemtypeList.Add: IXMLItemtype;
begin
  Result := AddItem(-1) as IXMLItemtype;
end;

function TXMLItemtypeList.Insert(const Index: Integer): IXMLItemtype;
begin
  Result := AddItem(Index) as IXMLItemtype;
end;

function TXMLItemtypeList.Get_Item(Index: Integer): IXMLItemtype;
begin
  Result := List[Index] as IXMLItemtype;
end;

end.