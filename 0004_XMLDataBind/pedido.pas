
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 05/08/2012 18:11:21                                  }
{       Generated from: D:\Jocimar\Projetos\Blog Sobre Programa\pedido.xsd   }
{                                                                            }
{****************************************************************************}

unit pedido;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IPedidoType = interface;
  IXMLSimpleType = interface;
  IXMLSimpleTypeList = interface;
  IXMLRestrictionType = interface;
  IXMLComplexType = interface;
  IXMLComplexTypeList = interface;
  IXMLSequenceType = interface;
  IXMLElementType = interface;
  IXMLAttributeType = interface;
  IXMLRestrictionType2 = interface;
  IXMLPatternType = interface;

{ IPedidoType }

  IPedidoType = interface(IXMLNode)
    ['{DC2C762D-AB53-4844-A3E5-DD88916DFA86}']
    { Property Accessors }
    function Get_SimpleType: IXMLSimpleTypeList;
    function Get_ComplexType: IXMLComplexTypeList;
    function Get_Element: IXMLElementType;
    { Methods & Properties }
    property SimpleType: IXMLSimpleTypeList read Get_SimpleType;
    property ComplexType: IXMLComplexTypeList read Get_ComplexType;
    property Element: IXMLElementType read Get_Element;
  end;

{ IXMLSimpleType }

  IXMLSimpleType = interface(IXMLNode)
    ['{AB916DCC-8FFD-478F-9090-BAD68F8638D8}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Restriction: IXMLRestrictionType;
    procedure Set_Name(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Restriction: IXMLRestrictionType read Get_Restriction;
  end;

{ IXMLSimpleTypeList }

  IXMLSimpleTypeList = interface(IXMLNodeCollection)
    ['{5F5A7149-69EC-4585-81D3-3970436E8372}']
    { Methods & Properties }
    function Add: IXMLSimpleType;
    function Insert(const Index: Integer): IXMLSimpleType;

    function Get_Item(Index: Integer): IXMLSimpleType;
    property Items[Index: Integer]: IXMLSimpleType read Get_Item; default;
  end;

{ IXMLRestrictionType }

  IXMLRestrictionType = interface(IXMLNode)
    ['{6911F1B0-D870-404B-A5CF-73C697007142}']
    { Property Accessors }
    function Get_Base: UnicodeString;
    procedure Set_Base(Value: UnicodeString);
    { Methods & Properties }
    property Base: UnicodeString read Get_Base write Set_Base;
  end;

{ IXMLComplexType }

  IXMLComplexType = interface(IXMLNode)
    ['{32331B91-B4B8-41BC-8B6E-53FFF0CEF39A}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Sequence: IXMLSequenceType;
    function Get_Attribute: IXMLAttributeType;
    procedure Set_Name(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Sequence: IXMLSequenceType read Get_Sequence;
    property Attribute: IXMLAttributeType read Get_Attribute;
  end;

{ IXMLComplexTypeList }

  IXMLComplexTypeList = interface(IXMLNodeCollection)
    ['{F75D6D1B-A730-4D18-A7B6-72E64A307671}']
    { Methods & Properties }
    function Add: IXMLComplexType;
    function Insert(const Index: Integer): IXMLComplexType;

    function Get_Item(Index: Integer): IXMLComplexType;
    property Items[Index: Integer]: IXMLComplexType read Get_Item; default;
  end;

{ IXMLSequenceType }

  IXMLSequenceType = interface(IXMLNodeCollection)
    ['{365C1FC3-CDCE-4537-876D-6A724C87B907}']
    { Property Accessors }
    function Get_Element(Index: Integer): IXMLElementType;
    { Methods & Properties }
    function Add: IXMLElementType;
    function Insert(const Index: Integer): IXMLElementType;
    property Element[Index: Integer]: IXMLElementType read Get_Element; default;
  end;

{ IXMLElementType }

  IXMLElementType = interface(IXMLNode)
    ['{730D3E5C-EB28-49A4-88DB-D8076F3F976F}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_MinOccurs: Integer;
    function Get_MaxOccurs: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_MinOccurs(Value: Integer);
    procedure Set_MaxOccurs(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property MinOccurs: Integer read Get_MinOccurs write Set_MinOccurs;
    property MaxOccurs: UnicodeString read Get_MaxOccurs write Set_MaxOccurs;
  end;

{ IXMLAttributeType }

  IXMLAttributeType = interface(IXMLNode)
    ['{0157B436-5543-4CE9-B1BB-9B4711A14A43}']
    { Property Accessors }
    function Get_Name: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Use: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_Use(Value: UnicodeString);
    { Methods & Properties }
    property Name: UnicodeString read Get_Name write Set_Name;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Use: UnicodeString read Get_Use write Set_Use;
  end;

{ IXMLRestrictionType2 }

  IXMLRestrictionType2 = interface(IXMLNode)
    ['{2C8A0717-1EF9-4E2D-A8A0-1C89B42E3A21}']
    { Property Accessors }
    function Get_Base: UnicodeString;
    function Get_Pattern: IXMLPatternType;
    procedure Set_Base(Value: UnicodeString);
    { Methods & Properties }
    property Base: UnicodeString read Get_Base write Set_Base;
    property Pattern: IXMLPatternType read Get_Pattern;
  end;

{ IXMLPatternType }

  IXMLPatternType = interface(IXMLNode)
    ['{42F0D5EA-F31A-4DB1-B1B4-38704EF18D8A}']
    { Property Accessors }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
    { Methods & Properties }
    property Value: UnicodeString read Get_Value write Set_Value;
  end;

{ Forward Decls }

  TXMLIPedidoType = class;
  TXMLSimpleType = class;
  TXMLSimpleTypeList = class;
  TXMLRestrictionType = class;
  TXMLComplexType = class;
  TXMLComplexTypeList = class;
  TXMLSequenceType = class;
  TXMLElementType = class;
  TXMLAttributeType = class;
  TXMLRestrictionType2 = class;
  TXMLPatternType = class;

{ TXMLIPedidoType }

  TXMLIPedidoType = class(TXMLNode, IPedidoType)
  private
    FSimpleType: IXMLSimpleTypeList;
    FComplexType: IXMLComplexTypeList;
  protected
    { IPedidoType }
    function Get_SimpleType: IXMLSimpleTypeList;
    function Get_ComplexType: IXMLComplexTypeList;
    function Get_Element: IXMLElementType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSimpleType }

  TXMLSimpleType = class(TXMLNode, IXMLSimpleType)
  protected
    { IXMLSimpleType }
    function Get_Name: UnicodeString;
    function Get_Restriction: IXMLRestrictionType;
    procedure Set_Name(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSimpleTypeList }

  TXMLSimpleTypeList = class(TXMLNodeCollection, IXMLSimpleTypeList)
  protected
    { IXMLSimpleTypeList }
    function Add: IXMLSimpleType;
    function Insert(const Index: Integer): IXMLSimpleType;

    function Get_Item(Index: Integer): IXMLSimpleType;
  end;

{ TXMLRestrictionType }

  TXMLRestrictionType = class(TXMLNode, IXMLRestrictionType)
  protected
    { IXMLRestrictionType }
    function Get_Base: UnicodeString;
    procedure Set_Base(Value: UnicodeString);
  end;

{ TXMLComplexType }

  TXMLComplexType = class(TXMLNode, IXMLComplexType)
  protected
    { IXMLComplexType }
    function Get_Name: UnicodeString;
    function Get_Sequence: IXMLSequenceType;
    function Get_Attribute: IXMLAttributeType;
    procedure Set_Name(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComplexTypeList }

  TXMLComplexTypeList = class(TXMLNodeCollection, IXMLComplexTypeList)
  protected
    { IXMLComplexTypeList }
    function Add: IXMLComplexType;
    function Insert(const Index: Integer): IXMLComplexType;

    function Get_Item(Index: Integer): IXMLComplexType;
  end;

{ TXMLSequenceType }

  TXMLSequenceType = class(TXMLNodeCollection, IXMLSequenceType)
  protected
    { IXMLSequenceType }
    function Get_Element(Index: Integer): IXMLElementType;
    function Add: IXMLElementType;
    function Insert(const Index: Integer): IXMLElementType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLElementType }

  TXMLElementType = class(TXMLNode, IXMLElementType)
  protected
    { IXMLElementType }
    function Get_Name: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_MinOccurs: Integer;
    function Get_MaxOccurs: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_MinOccurs(Value: Integer);
    procedure Set_MaxOccurs(Value: UnicodeString);
  end;

{ TXMLAttributeType }

  TXMLAttributeType = class(TXMLNode, IXMLAttributeType)
  protected
    { IXMLAttributeType }
    function Get_Name: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Use: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_Use(Value: UnicodeString);
  end;

{ TXMLRestrictionType2 }

  TXMLRestrictionType2 = class(TXMLNode, IXMLRestrictionType2)
  protected
    { IXMLRestrictionType2 }
    function Get_Base: UnicodeString;
    function Get_Pattern: IXMLPatternType;
    procedure Set_Base(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPatternType }

  TXMLPatternType = class(TXMLNode, IXMLPatternType)
  protected
    { IXMLPatternType }
    function Get_Value: UnicodeString;
    procedure Set_Value(Value: UnicodeString);
  end;

{ Global Functions }

function GetPedido(Doc: IXMLDocument): IPedidoType;
function LoadPedido(const FileName: string): IPedidoType;
function NewPedido: IPedidoType;

const
  TargetNamespace = 'http://www.w3.org/2001/XMLSchema';

implementation

{ Global Functions }

function GetPedido(Doc: IXMLDocument): IPedidoType;
begin
  Result := Doc.GetDocBinding('Pedido', TXMLIPedidoType, TargetNamespace) as IPedidoType;
end;

function LoadPedido(const FileName: string): IPedidoType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Pedido', TXMLIPedidoType, TargetNamespace) as IPedidoType;
end;

function NewPedido: IPedidoType;
begin
  Result := NewXMLDocument.GetDocBinding('Pedido', TXMLIPedidoType, TargetNamespace) as IPedidoType;
end;

{ TXMLIPedidoType }

procedure TXMLIPedidoType.AfterConstruction;
begin
  RegisterChildNode('simpleType', TXMLSimpleType);
  RegisterChildNode('complexType', TXMLComplexType);
  RegisterChildNode('element', TXMLElementType);
  FSimpleType := CreateCollection(TXMLSimpleTypeList, IXMLSimpleType, 'simpleType') as IXMLSimpleTypeList;
  FComplexType := CreateCollection(TXMLComplexTypeList, IXMLComplexType, 'complexType') as IXMLComplexTypeList;
  inherited;
end;

function TXMLIPedidoType.Get_SimpleType: IXMLSimpleTypeList;
begin
  Result := FSimpleType;
end;

function TXMLIPedidoType.Get_ComplexType: IXMLComplexTypeList;
begin
  Result := FComplexType;
end;

function TXMLIPedidoType.Get_Element: IXMLElementType;
begin
  Result := ChildNodes['element'] as IXMLElementType;
end;

{ TXMLSimpleType }

procedure TXMLSimpleType.AfterConstruction;
begin
  RegisterChildNode('restriction', TXMLRestrictionType);
  inherited;
end;

function TXMLSimpleType.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLSimpleType.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLSimpleType.Get_Restriction: IXMLRestrictionType;
begin
  Result := ChildNodes['restriction'] as IXMLRestrictionType;
end;

{ TXMLSimpleTypeList }

function TXMLSimpleTypeList.Add: IXMLSimpleType;
begin
  Result := AddItem(-1) as IXMLSimpleType;
end;

function TXMLSimpleTypeList.Insert(const Index: Integer): IXMLSimpleType;
begin
  Result := AddItem(Index) as IXMLSimpleType;
end;

function TXMLSimpleTypeList.Get_Item(Index: Integer): IXMLSimpleType;
begin
  Result := List[Index] as IXMLSimpleType;
end;

{ TXMLRestrictionType }

function TXMLRestrictionType.Get_Base: UnicodeString;
begin
  Result := AttributeNodes['base'].Text;
end;

procedure TXMLRestrictionType.Set_Base(Value: UnicodeString);
begin
  SetAttribute('base', Value);
end;

{ TXMLComplexType }

procedure TXMLComplexType.AfterConstruction;
begin
  RegisterChildNode('sequence', TXMLSequenceType);
  RegisterChildNode('attribute', TXMLAttributeType);
  inherited;
end;

function TXMLComplexType.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLComplexType.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLComplexType.Get_Sequence: IXMLSequenceType;
begin
  Result := ChildNodes['sequence'] as IXMLSequenceType;
end;

function TXMLComplexType.Get_Attribute: IXMLAttributeType;
begin
  Result := ChildNodes['attribute'] as IXMLAttributeType;
end;

{ TXMLComplexTypeList }

function TXMLComplexTypeList.Add: IXMLComplexType;
begin
  Result := AddItem(-1) as IXMLComplexType;
end;

function TXMLComplexTypeList.Insert(const Index: Integer): IXMLComplexType;
begin
  Result := AddItem(Index) as IXMLComplexType;
end;

function TXMLComplexTypeList.Get_Item(Index: Integer): IXMLComplexType;
begin
  Result := List[Index] as IXMLComplexType;
end;

{ TXMLSequenceType }

procedure TXMLSequenceType.AfterConstruction;
begin
  RegisterChildNode('element', TXMLElementType);
  ItemTag := 'element';
  ItemInterface := IXMLElementType;
  inherited;
end;

function TXMLSequenceType.Get_Element(Index: Integer): IXMLElementType;
begin
  Result := List[Index] as IXMLElementType;
end;

function TXMLSequenceType.Add: IXMLElementType;
begin
  Result := AddItem(-1) as IXMLElementType;
end;

function TXMLSequenceType.Insert(const Index: Integer): IXMLElementType;
begin
  Result := AddItem(Index) as IXMLElementType;
end;

{ TXMLElementType }

function TXMLElementType.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLElementType.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLElementType.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['type'].Text;
end;

procedure TXMLElementType.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('type', Value);
end;

function TXMLElementType.Get_MinOccurs: Integer;
begin
  Result := AttributeNodes['minOccurs'].NodeValue;
end;

procedure TXMLElementType.Set_MinOccurs(Value: Integer);
begin
  SetAttribute('minOccurs', Value);
end;

function TXMLElementType.Get_MaxOccurs: UnicodeString;
begin
  Result := AttributeNodes['maxOccurs'].Text;
end;

procedure TXMLElementType.Set_MaxOccurs(Value: UnicodeString);
begin
  SetAttribute('maxOccurs', Value);
end;

{ TXMLAttributeType }

function TXMLAttributeType.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLAttributeType.Set_Name(Value: UnicodeString);
begin
  SetAttribute('name', Value);
end;

function TXMLAttributeType.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['type'].Text;
end;

procedure TXMLAttributeType.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('type', Value);
end;

function TXMLAttributeType.Get_Use: UnicodeString;
begin
  Result := AttributeNodes['use'].Text;
end;

procedure TXMLAttributeType.Set_Use(Value: UnicodeString);
begin
  SetAttribute('use', Value);
end;

{ TXMLRestrictionType2 }

procedure TXMLRestrictionType2.AfterConstruction;
begin
  RegisterChildNode('pattern', TXMLPatternType);
  inherited;
end;

function TXMLRestrictionType2.Get_Base: UnicodeString;
begin
  Result := AttributeNodes['base'].Text;
end;

procedure TXMLRestrictionType2.Set_Base(Value: UnicodeString);
begin
  SetAttribute('base', Value);
end;

function TXMLRestrictionType2.Get_Pattern: IXMLPatternType;
begin
  Result := ChildNodes['pattern'] as IXMLPatternType;
end;

{ TXMLPatternType }

function TXMLPatternType.Get_Value: UnicodeString;
begin
  Result := AttributeNodes['value'].Text;
end;

procedure TXMLPatternType.Set_Value(Value: UnicodeString);
begin
  SetAttribute('value', Value);
end;

end.