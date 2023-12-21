import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

Future<void> main() async {
  final int port = 8080;
  final cascade = Cascade().add(_router.call);
  final server = await shelf_io.serve(
    logRequests().addHandler(cascade.handler),
    InternetAddress.anyIPv4,
    port,
  );
  print('Serving at http://${server.address.host}:${server.port}');
}

final _router = shelf_router.Router()
  ..get("/", _indexHandler)
  ..get("/<name>", _webpageHandler)
  ..get("/styles/<name>", _styleHandler)
  ..get("/scripts/<name>", _scriptHandler)
  ..get("/data/clients", _getClientsHandler);

final _jsonHeaders = {'content-type': 'application/json'};
final _htmlHeaders = {'content-type': 'text/html'};
final _cssHeaders = {'content-type': 'text/css'};
final _jsHeaders = {'content-type': 'text/javascript'};

String _jsonEncode(Object? data) => JsonEncoder.withIndent(' ').convert(data);
Future<Response> _indexHandler(Request request) async => Response(
      200,
      headers: _htmlHeaders,
      body: await File("static/index.html").readAsString(),
    );
Future<Response> _webpageHandler(Request request, String name) async => Response(
      200,
      headers: _htmlHeaders,
      body: await File("static/$name.html").readAsString(),
    );
Future<Response> _styleHandler(Request request, String name) async => Response(
      200,
      headers: _cssHeaders,
      body: await File("static/styles/$name.css").readAsString(),
    );
Future<Response> _scriptHandler(Request request, String name) async => Response(
      200,
      headers: _jsHeaders,
      body: await File("static/scripts/$name.js").readAsString(),
    );
Future<Response> _getClientsHandler(Request request) async {
  final List<String> res = await File("data/clients.csv").readAsLines();
  final List<Map<String, String>> output = res
      .map((data) => data.split(","))
      .map((row) => {
            "client_id": row[0],
            "first_name": row[1],
            "last_name": row[2],
            "email_address": row[3],
            "visible": row[4],
          })
      .toList();
  return Response(200, headers: _jsonHeaders, body: _jsonEncode(output));
}
