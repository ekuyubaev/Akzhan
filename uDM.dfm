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
end
