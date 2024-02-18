import 'dart:io';
import 'headers.dart';
import 'package:shelf/shelf.dart';

Future<Response> indexHandler(Request request) async => Response(
      200,
      headers: htmlHeaders,
      body: await File("web/index.html").readAsString(),
    );

Future<Response> carPageHandler(Request request, String type, String function) async => Response(
      200,
      headers: htmlHeaders,
      body: await File("web/car/$type/$function.html").readAsString(),
    );
