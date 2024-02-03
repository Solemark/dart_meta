import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> carHandler(Request request, String type, String function) async => Response(
      200,
      headers: htmlHeaders,
      body: await File("web/$type/$function.html").readAsString(),
    );

Future<Response> carDataHandler(Request request, String type) async => Response(
      200,
      headers: jsonHeaders,
      body: await File("data/car$type.csv").readAsString(),
    );
