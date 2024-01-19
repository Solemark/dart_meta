import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> indexHandler(Request request) async => Response(
      200,
      headers: htmlHeaders,
      body: await File("web/index.html").readAsString(),
    );
