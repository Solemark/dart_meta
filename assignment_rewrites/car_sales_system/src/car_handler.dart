import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> carDataHandler(Request request, String type) async => Response(
      200,
      headers: jsonHeaders,
      body: await _getCarData("data/car-$type.csv"),
    );

Future<String> _getCarData(String path) async {
  List<String> lines = await File(path).readAsLines();
  List<Map<String, String>> res = lines.map((row) => row.split(',')).map((data) => _createCar(data)).toList();
  return _jsonEncode(res);
}

String _jsonEncode(List<Object> data) => JsonEncoder.withIndent(' ').convert(data);

Map<String, String> _createCar(List<String> car) => {
      "id": car[0],
      "reference_number": car[1],
      "make": car[2],
      "model": car[3],
      "drive_type": car[4],
      "colour": car[5],
      "transmission": car[6],
      "engine": car[7],
      "fuel_type": car[8],
      "doors": car[9],
      "seats": car[10],
      "price": car[11],
      "quantity": car[12]
    };
