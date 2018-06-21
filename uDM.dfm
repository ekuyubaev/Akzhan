object dm: Tdm
  OldCreateOrder = False
  Height = 548
  Width = 764
  object DB_GATE: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=gdx4852T;Persist Security Info=True;' +
      'User ID=root;Extended Properties="Driver=MySQL ODBC 5.3 Unicode ' +
      'Driver;SERVER=localhost;UID=root;PWD=gdx4852T;DATABASE=db_cppn;P' +
      'ORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=db_cppn'
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object qObjects: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Object')
    Left = 128
    Top = 24
    object qObjectsID_object: TAutoIncField
      FieldName = 'ID_object'
      ReadOnly = True
    end
    object qObjectsNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qObjectsOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qObjectsPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qObjectsFigura: TWideStringField
      FieldName = 'Figura'
      Size = 45
    end
    object qObjectsXcentr: TIntegerField
      FieldName = 'Xcentr'
    end
    object qObjectsYcentr: TIntegerField
      FieldName = 'Ycentr'
    end
    object qObjectsShirina: TIntegerField
      FieldName = 'Shirina'
    end
    object qObjectsDlina: TIntegerField
      FieldName = 'Dlina'
    end
    object qObjectsID_uchastok: TIntegerField
      FieldName = 'ID_uchastok'
    end
  end
  object dsObjects: TDataSource
    DataSet = qObjects
    Left = 128
    Top = 72
  end
  object qSensors: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsObjects
    Parameters = <
      item
        Name = 'ID_object'
        DataType = ftInteger
        Value = 15
      end>
    SQL.Strings = (
      'Select * From Datchik'
      'Where ID_object = :ID_object')
    Left = 200
    Top = 24
    object qSensorsID_datchik: TAutoIncField
      FieldName = 'ID_datchik'
      ReadOnly = True
    end
    object qSensorsID_object: TIntegerField
      FieldName = 'ID_object'
    end
    object qSensorsNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qSensorsOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qSensorsNomer: TWideStringField
      FieldName = 'Nomer'
      Size = 64
    end
    object qSensorsMAX: TFloatField
      FieldName = 'MAX'
    end
    object qSensorsMIN: TFloatField
      FieldName = 'MIN'
    end
    object qSensorsID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object qSensorsSostoianie: TStringField
      FieldKind = fkLookup
      FieldName = 'Sostoianie'
      LookupDataSet = qStates
      LookupKeyFields = 'ID_sostoianie'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_sostoianie'
      Size = 64
      Lookup = True
    end
    object qSensorsPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qSensorsID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object qSensorsDataVvoda: TDateTimeField
      FieldName = 'DataVvoda'
    end
    object qSensorsSrokSluzhby: TIntegerField
      FieldName = 'SrokSluzhby'
    end
  end
  object dsSensors: TDataSource
    DataSet = qSensors
    Left = 200
    Top = 72
  end
  object qStates: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Sostoianie')
    Left = 272
    Top = 24
  end
  object dsStates: TDataSource
    DataSet = qStates
    Left = 272
    Top = 72
  end
  object qSensorsI: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Datchik')
    Left = 336
    Top = 24
    object qSensorsIID_datchik: TAutoIncField
      FieldName = 'ID_datchik'
      ReadOnly = True
    end
    object qSensorsIID_object: TIntegerField
      FieldName = 'ID_object'
    end
    object qSensorsIObject: TStringField
      FieldKind = fkLookup
      FieldName = 'Object'
      LookupDataSet = qObjects
      LookupKeyFields = 'ID_object'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_object'
      Size = 256
      Lookup = True
    end
    object qSensorsINaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qSensorsIOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qSensorsINomer: TWideStringField
      FieldName = 'Nomer'
      Size = 64
    end
    object qSensorsIMAX: TFloatField
      FieldName = 'MAX'
    end
    object qSensorsIMIN: TFloatField
      FieldName = 'MIN'
    end
    object qSensorsIID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object qSensorsISostoianie: TStringField
      FieldKind = fkLookup
      FieldName = 'Sostoianie'
      LookupDataSet = qStates
      LookupKeyFields = 'ID_sostoianie'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_sostoianie'
      Size = 64
      Lookup = True
    end
    object qSensorsIPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qSensorsIID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object qSensorsIDataVvoda: TDateTimeField
      FieldName = 'DataVvoda'
    end
    object qSensorsISrokSluzhby: TIntegerField
      FieldName = 'SrokSluzhby'
    end
  end
  object dsSensorsI: TDataSource
    DataSet = qSensorsI
    Left = 336
    Top = 72
  end
  object qReadings: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsSensorsI
    Parameters = <
      item
        Name = 'ID_datchik'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 184
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Pokazanie'
      'Where ID_datchik = :ID_datchik'
      'Order by Datavremia DESC')
    Left = 400
    Top = 24
    object qReadingsID_pokazanie: TLargeintField
      FieldName = 'ID_pokazanie'
    end
    object qReadingsID_datchik: TIntegerField
      FieldName = 'ID_datchik'
    end
    object qReadingsPokazanie: TFloatField
      FieldName = 'Pokazanie'
      DisplayFormat = '#,##0.00'
    end
    object qReadingsDatavremia: TDateTimeField
      FieldName = 'Datavremia'
    end
    object qReadingsNorma: TSmallintField
      FieldName = 'Norma'
    end
    object qReadingsPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qReadingsID_avaria: TIntegerField
      FieldName = 'ID_avaria'
    end
    object qReadingsBolshe_MAX_na: TFloatField
      FieldName = 'Bolshe_MAX_na'
      DisplayFormat = '#,##0.00'
    end
    object qReadingsMenshe_MIN_na: TFloatField
      FieldName = 'Menshe_MIN_na'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsReadings: TDataSource
    DataSet = qReadings
    Left = 400
    Top = 72
  end
  object qInterrogate: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 464
    Top = 24
  end
  object qTemp: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 528
    Top = 24
  end
  object qFault: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select A.*, D.Naimenovanie, D.Oboznachenie, O.Naimenovanie as Ob' +
        'ject,'
      'U.Uchastok'
      'From Avaria A left join Datchik D'
      'On A.ID_datchik = D.ID_datchik left join Object O'
      'On D.ID_object = O.ID_object left join Uchastok U'
      'On O.ID_uchastok = U.ID_uchastok'
      'Order by DV_obnaruzhena desc')
    Left = 600
    Top = 24
    object qFaultID_avaria: TAutoIncField
      FieldName = 'ID_avaria'
      ReadOnly = True
    end
    object qFaultID_datchik: TIntegerField
      FieldName = 'ID_datchik'
    end
    object qFaultObject: TWideStringField
      FieldName = 'Object'
      Size = 256
    end
    object qFaultZamechena: TSmallintField
      FieldName = 'Zamechena'
    end
    object qFaultUstranena: TSmallintField
      FieldName = 'Ustranena'
    end
    object qFaultID_stepen: TIntegerField
      FieldName = 'ID_stepen'
    end
    object qFaultPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qFaultDV_obnaruzhena: TDateTimeField
      FieldName = 'DV_obnaruzhena'
    end
    object qFaultDV_zamechena: TDateTimeField
      FieldName = 'DV_zamechena'
    end
    object qFaultDV_ustranena: TDateTimeField
      FieldName = 'DV_ustranena'
    end
    object qFaultOpisanie: TWideMemoField
      FieldName = 'Opisanie'
      BlobType = ftWideMemo
    end
    object qFaultID_smena: TIntegerField
      FieldName = 'ID_smena'
    end
    object qFaultDataSmena: TDateTimeField
      FieldKind = fkLookup
      FieldName = 'DataSmena'
      LookupDataSet = qSmena
      LookupKeyFields = 'ID_smena'
      LookupResultField = 'Datavremia'
      KeyFields = 'ID_smena'
      Lookup = True
    end
    object qFaultNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qFaultOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qFaultUchastok: TWideStringField
      FieldName = 'Uchastok'
      Size = 256
    end
    object qFaultNeispravnost: TWideStringField
      FieldName = 'Neispravnost'
      Size = 512
    end
    object qFaultReshenie: TWideStringField
      FieldName = 'Reshenie'
      Size = 512
    end
  end
  object qFaultReadings: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsFault
    Parameters = <
      item
        Name = 'ID_avaria'
        DataType = ftInteger
        Value = 665
      end>
    SQL.Strings = (
      'Select * From Pokazanie'
      'Where ID_avaria = :ID_avaria'
      'Order by Datavremia DESC')
    Left = 672
    Top = 24
  end
  object dsFault: TDataSource
    DataSet = qFault
    Left = 600
    Top = 72
  end
  object dsFaultReadings: TDataSource
    DataSet = qFaultReadings
    Left = 672
    Top = 72
  end
  object qNotSeenFaults: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Avaria A left join Datchik D'
      'ON A.ID_datchik = D.ID_datchik  left join Object O'
      'ON D.ID_object = O.ID_object left join Uchastok U'
      'ON O.ID_uchastok = U.ID_uchastok'
      'Where Ustranena = 0')
    Left = 128
    Top = 168
    object qNotSeenFaultsID_avaria: TAutoIncField
      FieldName = 'ID_avaria'
      ReadOnly = True
    end
    object qNotSeenFaultsDV_obnaruzhena: TDateTimeField
      FieldName = 'DV_obnaruzhena'
    end
    object qNotSeenFaultsOpisanie: TWideMemoField
      FieldName = 'Opisanie'
      BlobType = ftWideMemo
    end
    object qNotSeenFaultsID_datchik: TIntegerField
      FieldName = 'ID_datchik'
    end
    object qNotSeenFaultsObject: TStringField
      FieldKind = fkLookup
      FieldName = 'Object'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Object'
      KeyFields = 'ID_datchik'
      Size = 256
      Lookup = True
    end
    object qNotSeenFaultsDatchikNaimenovanie: TStringField
      FieldKind = fkLookup
      FieldName = 'DatchikNaimenovanie'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_datchik'
      Size = 256
      Lookup = True
    end
    object qNotSeenFaultsDatchikOboznachenie: TStringField
      FieldKind = fkLookup
      FieldName = 'DatchikOboznachenie'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_datchik'
      Size = 64
      Lookup = True
    end
    object qNotSeenFaultsZamechena: TSmallintField
      FieldName = 'Zamechena'
    end
    object qNotSeenFaultsUstranena: TSmallintField
      FieldName = 'Ustranena'
    end
    object qNotSeenFaultsID_stepen: TIntegerField
      FieldName = 'ID_stepen'
    end
    object qNotSeenFaultsPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qNotSeenFaultsDV_zamechena: TDateTimeField
      FieldName = 'DV_zamechena'
    end
    object qNotSeenFaultsDV_ustranena: TDateTimeField
      FieldName = 'DV_ustranena'
    end
    object qNotSeenFaultsID_datchik_1: TAutoIncField
      FieldName = 'ID_datchik_1'
      ReadOnly = True
    end
    object qNotSeenFaultsID_object: TIntegerField
      FieldName = 'ID_object'
    end
    object qNotSeenFaultsNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 256
    end
    object qNotSeenFaultsOboznachenie: TWideStringField
      FieldName = 'Oboznachenie'
      Size = 64
    end
    object qNotSeenFaultsNomer: TWideStringField
      FieldName = 'Nomer'
      Size = 64
    end
    object qNotSeenFaultsMAX: TFloatField
      FieldName = 'MAX'
    end
    object qNotSeenFaultsMIN: TFloatField
      FieldName = 'MIN'
    end
    object qNotSeenFaultsID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object qNotSeenFaultsPrimechanie_1: TWideMemoField
      FieldName = 'Primechanie_1'
      BlobType = ftWideMemo
    end
    object qNotSeenFaultsID_object_1: TAutoIncField
      FieldName = 'ID_object_1'
      ReadOnly = True
    end
    object qNotSeenFaultsNaimenovanie_1: TWideStringField
      FieldName = 'Naimenovanie_1'
      Size = 256
    end
    object qNotSeenFaultsOboznachenie_1: TWideStringField
      FieldName = 'Oboznachenie_1'
      Size = 64
    end
    object qNotSeenFaultsPrimechanie_2: TWideMemoField
      FieldName = 'Primechanie_2'
      BlobType = ftWideMemo
    end
    object qNotSeenFaultsFigura: TWideStringField
      FieldName = 'Figura'
      Size = 45
    end
    object qNotSeenFaultsXcentr: TIntegerField
      FieldName = 'Xcentr'
    end
    object qNotSeenFaultsYcentr: TIntegerField
      FieldName = 'Ycentr'
    end
    object qNotSeenFaultsShirina: TIntegerField
      FieldName = 'Shirina'
    end
    object qNotSeenFaultsDlina: TIntegerField
      FieldName = 'Dlina'
    end
    object qNotSeenFaultsID_smena: TIntegerField
      FieldName = 'ID_smena'
    end
    object qNotSeenFaultsID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object qNotSeenFaultsDataVvoda: TDateTimeField
      FieldName = 'DataVvoda'
    end
    object qNotSeenFaultsSrokSluzhby: TIntegerField
      FieldName = 'SrokSluzhby'
    end
    object qNotSeenFaultsID_uchastok: TIntegerField
      FieldName = 'ID_uchastok'
    end
    object qNotSeenFaultsID_uchastok_1: TAutoIncField
      FieldName = 'ID_uchastok_1'
      ReadOnly = True
    end
    object qNotSeenFaultsUchastok: TWideStringField
      FieldName = 'Uchastok'
      Size = 256
    end
    object qNotSeenFaultsNeispravnost: TWideStringField
      FieldName = 'Neispravnost'
      Size = 512
    end
    object qNotSeenFaultsReshenie: TWideStringField
      FieldName = 'Reshenie'
      Size = 512
    end
  end
  object dsNotSeenFaults: TDataSource
    DataSet = qNotSeenFaults
    Left = 128
    Top = 224
  end
  object qReports: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 224
    Top = 168
  end
  object tblSchema: TADOTable
    Connection = DB_GATE
    TableName = 'shema'
    Left = 336
    Top = 168
  end
  object qReadingsOnScheme: TADOQuery
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsSensors
    Parameters = <
      item
        Name = 'ID_datchik'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select * From Pokazanie'
      'Where ID_datchik = :ID_datchik'
      'Order by datavremia desc'
      '')
    Left = 240
    Top = 272
  end
  object dsReadingsOnScheme: TDataSource
    DataSet = qReadingsOnScheme
    Left = 240
    Top = 320
  end
  object qSmena: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    BeforePost = qSmenaBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From Smena S left join Polzovatel P'
      'On S.ID_polzovatel = P.ID_polzovatel left join Sotrudnik St'
      'On P.ID_sotrudnik = St.ID_sotrudnik'
      ''
      '')
    Left = 424
    Top = 168
    object qSmenaID_smena: TAutoIncField
      FieldName = 'ID_smena'
      ReadOnly = True
    end
    object qSmenaDatavremia: TDateTimeField
      FieldName = 'Datavremia'
    end
    object qSmenaPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object qSmenaID_polzovatel: TIntegerField
      FieldName = 'ID_polzovatel'
    end
    object qSmenaID_polzovatel_1: TAutoIncField
      FieldName = 'ID_polzovatel_1'
      ReadOnly = True
    end
    object qSmenaLogin: TWideStringField
      FieldName = 'Login'
      Size = 45
    end
    object qSmenaParol: TWideStringField
      FieldName = 'Parol'
      Size = 45
    end
    object qSmenaID_sotrudnik: TIntegerField
      FieldName = 'ID_sotrudnik'
    end
    object qSmenaID_sotrudnik_1: TAutoIncField
      FieldName = 'ID_sotrudnik_1'
      ReadOnly = True
    end
    object qSmenaFIO: TWideStringField
      FieldName = 'FIO'
      Size = 45
    end
    object qSmenaID_dolzhnost: TIntegerField
      FieldName = 'ID_dolzhnost'
    end
    object qSmenaTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 45
    end
    object qSmenaPrimechanie_1: TWideMemoField
      FieldName = 'Primechanie_1'
      BlobType = ftWideMemo
    end
  end
  object qSostav: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsSmena
    Parameters = <
      item
        Name = 'ID_smena'
        DataType = ftInteger
        Value = 5
      end>
    SQL.Strings = (
      'Select *'
      'From sostav'
      'Where ID_smena = :ID_smena'
      '')
    Left = 496
    Top = 168
  end
  object dsSmena: TDataSource
    DataSet = qSmena
    Left = 424
    Top = 216
  end
  object dsSostav: TDataSource
    DataSet = qSostav
    Left = 496
    Top = 216
  end
  object qSotrudnik: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Sotrudnik'
      '')
    Left = 560
    Top = 168
    object qSotrudnikID_sotrudnik: TAutoIncField
      FieldName = 'ID_sotrudnik'
      ReadOnly = True
    end
    object qSotrudnikFIO: TWideStringField
      FieldName = 'FIO'
      Size = 45
    end
    object qSotrudnikID_dolzhnost: TIntegerField
      FieldName = 'ID_dolzhnost'
    end
    object qSotrudnikTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 45
    end
    object qSotrudnikPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object qDolzhnost: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Dolzhnost'
      '')
    Left = 632
    Top = 168
  end
  object dsSotrudnik: TDataSource
    DataSet = qSotrudnik
    Left = 560
    Top = 216
  end
  object dsDolzhnost: TDataSource
    DataSet = qDolzhnost
    Left = 632
    Top = 216
  end
  object tblEvent: TADOTable
    Connection = DB_GATE
    TableName = 'event'
    Left = 416
    Top = 280
  end
  object qGenerateReadings: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 488
    Top = 280
  end
  object qEmergency: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 576
    Top = 280
  end
  object qElimination: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 640
    Top = 280
  end
  object qUser: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'From Polzovatel')
    Left = 424
    Top = 352
    object qUserID_polzovatel: TAutoIncField
      FieldName = 'ID_polzovatel'
      ReadOnly = True
    end
    object qUserLogin: TWideStringField
      FieldName = 'Login'
      Size = 45
    end
    object qUserParol: TWideStringField
      FieldName = 'Parol'
      Size = 45
    end
    object qUserID_sotrudnik: TIntegerField
      FieldName = 'ID_sotrudnik'
    end
    object qUserFIO: TStringField
      FieldKind = fkLookup
      FieldName = 'FIO'
      LookupDataSet = qSotrudnik
      LookupKeyFields = 'ID_sotrudnik'
      LookupResultField = 'FIO'
      KeyFields = 'ID_sotrudnik'
      Lookup = True
    end
  end
  object dsUser: TDataSource
    DataSet = qUser
    Left = 424
    Top = 400
  end
  object qEvent: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 496
    Top = 352
  end
  object qSobytia: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Sobytia'
      'Order by Datavremia desc')
    Left = 560
    Top = 352
  end
  object dsSobytia: TDataSource
    DataSet = qSobytia
    Left = 560
    Top = 400
  end
  object qReps: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 640
    Top = 352
  end
  object qEI: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From EdinicaIzmerenia')
    Left = 240
    Top = 392
  end
  object dsEI: TDataSource
    DataSet = qEI
    Left = 240
    Top = 440
  end
  object qArea: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Uchastok')
    Left = 304
    Top = 392
  end
  object dsArea: TDataSource
    DataSet = qArea
    Left = 304
    Top = 440
  end
  object qObjectsI: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Object')
    Left = 424
    Top = 464
  end
  object qReadingsNotSeenFaults: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsNotSeenFaults
    Parameters = <
      item
        Name = 'ID_datchik'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 88
        Precision = 255
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From Pokazanie'
      'Where ID_datchik = :ID_datchik')
    Left = 128
    Top = 296
  end
  object qArch: TADOQuery
    Connection = DB_GATE
    Parameters = <>
    Left = 496
    Top = 464
  end
end
