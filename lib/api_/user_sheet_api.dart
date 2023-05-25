import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:gsheets/gsheets.dart';
//import 'package:untitled3/model/user.dart';
// import '';
import 'package:untitled3/model/user.dart';
class UserSheetsApi{

  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "newpblui",
  "private_key_id": "7ae1b768e712870da09c4d15f875fecaef4991ae",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDFKYz3gKWy9ZWW\n3DS74HWamwFWbxkwwsF8FcbZgdu5WViQGNWcZVvwqwnIiaaxoXqZFqIubtI1Y6e9\nVcuBFT0OGcZKhcBCmbmBmAMWMTfEy3HYuQwxnqFQo9Ehea+Suv5rYZC68T5Chstp\n3dOeaxuaZq9OxwpLvLZrKFZQ6bvfEe1h68E06MT2B1GZSyD0FO621V1OX3I07bVk\nA0Xu49aNYXUuUIgIQUIxfnsOsbrnSmL1w0BolABLav6iSX0DjZyywD6a1pzBsUzF\nc7h8iV5ZP+GdgMIG0oAnM+AL+YVdYzVoYFsUDhp5Cb9bP8EIMKFD6jUbol0NLlqg\nofDIhftxAgMBAAECggEAB953AYXWly7quoECxcuD8MNmU+8j3+irVOrVlebIlebf\n/FhRZj2RZCifalaRcEjT83o4x4ZQHiYNEtHIHoMc0ww/osfLJZ1XDw9kcs/3ZtkB\nK+Iu1L19DhKLt+dQakMhAQ4oJZ3tReB1YT347TtfIv7ILmpj7yPoBUeF3RLcbF8L\nyHQdMXN3ZESUZLp7RlcFyhAUOait1IAj089zHZzwLxfws9ZzrsiQe7qHFH24SgML\nv3O1iBR88MsSHEaw14heiNgYCE2OBoeMq+3ra0oA5hpzUw+5CJUpQZdxMyXniqMG\nPVBfia/JX/68J4vEu0sT6FCu1Cy+sLzgDqq6T0X9lQKBgQD3YGPG3Sb1IEjcN6eJ\nvpBSCMUZWl6lrWswA1b4nFwAMjn2to2LxmtUeVXmpu72vR+VNzNpobAoirlh2aMJ\niCUivRj2BKSbzOOpRcRxbQpOdQcaXoLBcBcMax5CyMI2c7q7OFtjX+3LVnJPBQSH\nK/xKmujLpNEjHJ80o27uC5rnLwKBgQDMCQt0TQ6fvZrmIda+ouCAQZG4vWZoQieA\nMf5kHtEAA4Ok2vS388Zn9xbJKAiBT9kBoglVBQEKCAIz9jZxC8ftbWtuQtlVFcuH\n8y5H9B25+3LOmgIi4RiC5XspEEemjYm5m6aqkyTviSaDQ4ud6Wc2UvN3q2IwCj59\nTYpY5cyfXwKBgQCd0P6WlewOogQZid/2fn5v92xW2lJbfCFPxjGr9YS0E1brUFdI\n/tLmV2o39fOpscn+VfMUxrQtiSLvi/r5T8PxP5Y3DYs+Yh4zlXDXs+rJVturNPRS\nGAJ8R7JMhOtx9a8BVdjnswFvobzXMKpM2gDgT6eIk6NgtRfUaxeQAhNWvQKBgEXi\nRzETf5HJEHgIWRQ8l2Z2juHWxW+qUPtApGBIic9WZM2fTTiAX5GWeRB3DMq1vZ8o\nj8e2ChAUhCSmDSmVHmo9ExHWBbh12Zt7+Hseqtvbuwv2hgrKTGnxDckX0WLDkcun\n+2LrOThuImnNRdHVcsuRh+CSK/RGXfbvCxa9xuNDAoGAPz1HOgb7T5cXKCoj1NFr\nKG5JTaLofm2+SgnToGgua7YRL1x2Zo/3lum20aqquFlh+9JRSEALkDsJ4oENXiv6\nLPDcC0/wD3WJ0pOK4DWDW5c63OFgzPym9i2k1I7zJFq2k2MxV9+0RzWQPatFeTyW\n9k6NVg+XNpoGIgikMjkmwSY=\n-----END PRIVATE KEY-----\n",
  "client_email": "newpblui@newpblui.iam.gserviceaccount.com",
  "client_id": "111134469966218593162",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/newpblui%40newpblui.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
  }
  ''';

  static final _spreadsheetId = '1YWvLCXb6DA1pR1r3CHY1T5XjKE4gqN1ckDsDhj2H5TI';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _userSheet;

  static get name => null;

  static Future init() async{
    final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
    _userSheet = await _getWorkSheet(spreadsheet,title:'Users');
    final firstRow = UserFields.getFiels();
    _userSheet!.values.insertRow(1, firstRow);
  }

  static Future<Worksheet> _getWorkSheet (
    Spreadsheet spreadsheet, {
      required String title,
    }) async{
      try{
        return await spreadsheet.addWorksheet(title);
      } catch(e){
        return spreadsheet.worksheetByTitle(title)!;
      }
  }

  // static Future<int> getRowCount() async{
  //   if(_userSheet==null) return 0;
  //   final lastRow = await _userSheet!.values.lastRow();
  //   // return;
  //   return lastRow = null ? 0 Future<List>se(lastRow.first) ?? 0;
  // }

  static Future <User?> getById(int id) async{
    if(_userSheet == null) return null;
    final json =  await _userSheet!.values.map.rowByKey(id,fromColumn: 1);
    return json==null? null: User.fromJson(json);
  }
  //
  // static Future<List> getAll() async{
  //   if(_userSheet == null ) return <User>[];
  //
  //   final users = await _userSheet!.values.map.allRows();
  //   // return users == User.map(User(name: name, fruit: fruit, suger_qt: suger_qt, milk: milk, flavour: flavour, flavour_qt: flavour_qt, iced_water: iced_water))
  //   // List<String> list=await TextEditingValue.fromJSON(encoded)
  //   // var fromJson;
  //   return users == null ? <User>[] : users.map(User.fromJson());
  // }

  static Future<bool > updateCell({
  required int id,
    required String key,
    required dynamic value,
}) async {
    if(_userSheet == null) return false;
    return _userSheet!.values.insertValueByKeys(value, columnKey: key, rowKey: id);
  }


}