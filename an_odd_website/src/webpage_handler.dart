import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> webpageHandler(Request request, String name) async => Response(
      200,
      headers: htmlHeaders,
      body: await File("static/$name.html").readAsString(),
    );
