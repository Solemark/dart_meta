import 'dart:io';
import 'package:shelf/shelf.dart';
import 'headers.dart';

Future<Response> carHandler(Request request, String type, String function) async {
  return Response(
    200,
    headers: htmlHeaders,
    body: await File("web/index.html").readAsString(),
  );
}
