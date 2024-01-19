import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> styleHandler(Request request, String name) async => Response(
      200,
      headers: cssHeaders,
      body: await File("web/styles/$name.css").readAsString(),
    );
