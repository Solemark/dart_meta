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
  ..get("/", _generalHandler)
  ..get("/characters/<name>", _characterHandler)
  ..get("/artifacts/<name>", _artifactHandler)
  ..get("/weapons/<name>", _weaponHandler);

final _jsonHeaders = {
  'content-type': 'application/json',
  'Cache-Control': 'no-store',
};

String _jsonEncode(Object? data) => JsonEncoder.withIndent(' ').convert(data);
Response _generalHandler(Request request) => Response(
      200,
      headers: _jsonHeaders,
      body: _jsonEncode({
        "artifacts": "/artifacts",
        "characters": "/characters",
        "weapons": "/weapons",
      }),
    );
Future<dynamic> _getCharacter(String name) async => jsonDecode(await File("data/characters/$name.json").readAsString());
Future<dynamic> _getArtifact(String name) async => jsonDecode(await File("data/artifacts/$name.json").readAsString());
Future<dynamic> _getWeapon(String name) async => jsonDecode(await File("data/weapons/$name.json").readAsString());
Future<Response> _characterHandler(Request request, String name) async =>
    Response(200, headers: _jsonHeaders, body: _jsonEncode(await _getCharacter(name)));
Future<Response> _artifactHandler(Request resuest, String name) async =>
    Response(200, headers: _jsonHeaders, body: _jsonEncode(await _getArtifact(name)));
Future<Response> _weaponHandler(Request resuest, String name) async =>
    Response(200, headers: _jsonHeaders, body: _jsonEncode(await _getWeapon(name)));
