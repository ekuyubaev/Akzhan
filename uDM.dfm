object dm: Tdm
  OldCreateOrder = False
  Height = 395
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
  end
  object dsObjects: TDataSource
    DataSet = qObjects
    Left = 128
    Top = 72
  end
  object qSensors: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsObjects
    Parameters = <
      item
        Name = 'ID_object'
        DataType = ftInteger
        Value = 1
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
  end
  object dsSensorsI: TDataSource
    DataSet = qSensorsI
    Left = 336
    Top = 72
  end
  object qReadings: TADOQuery
    Active = True
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
      'Where ID_datchik = :ID_datchik')
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
      'Select * From Avaria')
    Left = 600
    Top = 24
    object qFaultID_avaria: TAutoIncField
      FieldName = 'ID_avaria'
      ReadOnly = True
    end
    object qFaultID_datchik: TIntegerField
      FieldName = 'ID_datchik'
    end
    object qFaultDatchikNaimenovanie: TStringField
      FieldKind = fkLookup
      FieldName = 'DatchikNaimenovanie'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_datchik'
      Size = 256
      Lookup = True
    end
    object qFaultDatchikOboznachenie: TStringField
      FieldKind = fkLookup
      FieldName = 'DatchikOboznachenie'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_datchik'
      Size = 64
      Lookup = True
    end
    object qFaultObject: TStringField
      FieldKind = fkLookup
      FieldName = 'Object'
      LookupDataSet = qSensorsI
      LookupKeyFields = 'ID_datchik'
      LookupResultField = 'Object'
      KeyFields = 'ID_datchik'
      Size = 256
      Lookup = True
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
  end
  object qFaultReadings: TADOQuery
    Active = True
    Connection = DB_GATE
    CursorType = ctStatic
    DataSource = dsFault
    Parameters = <
      item
        Name = 'ID_avaria'
        DataType = ftInteger
        Value = 575
      end>
    SQL.Strings = (
      'Select * From Pokazanie'
      'Where ID_avaria = :ID_avaria')
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
      'Select * From Avaria'
      'Where Zamechena = 0 or Ustranena = 0')
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
  end
  object dsNotSeenFaults: TDataSource
    DataSet = qNotSeenFaults
    Left = 128
    Top = 224
  end
end
