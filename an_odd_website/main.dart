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
  ..get("/favicon.ico", _iconHandler)
  ..get("/<name>", _webpageHandler)
  ..get("/styles/<name>", _styleHandler)
  ..get("/scripts/<name>", _scriptHandler)
  ..get("/data/clients", _getClientsHandler)
  ..get("/data/clients/new", _newClientHandler)
  ..get("/data/clients/update", _updateClientHandler)
  ..get("/data/clients/remove", _removeClientHandler);

final _jsonHeaders = {'content-type': 'application/json'};
final _htmlHeaders = {'content-type': 'text/html'};
final _imageHeaders = {'content-type': 'image/x-icon'};
final _cssHeaders = {'content-type': 'text/css'};
final _jsHeaders = {'content-type': 'text/javascript'};

String _jsonEncode(List<Object> data) => JsonEncoder.withIndent(' ').convert(data);
Future<List<Client>> _getClientData() async {
  var res = await File("data/clients.csv").readAsLines();
  return res
      .map((data) => data.split(","))
      .map((row) => Client(int.parse(row[0]), row[1], row[2], row[3], bool.parse(row[4])))
      .toList();
}

Future<void> _writeClientData(List<Client> data) =>
    File("data/clients.csv").writeAsString(data.join("\n"), mode: FileMode.write);
Future<Response> _indexHandler(Request request) async => Response(
      200,
      headers: _htmlHeaders,
      body: await File("static/index.html").readAsString(),
    );

Future<Response> _iconHandler(Request request) async => Response(
      200,
      headers: _imageHeaders,
      body: await File("static/favicon.ico").readAsBytes(),
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
  final List<Client> data = await _getClientData();
  final Iterable<Client> results = data.where((client) => client.visible == true);
  final List<Map<dynamic, dynamic>> output = results.map((client) => client.toJson).toList();
  return Response(200, headers: _jsonHeaders, body: _jsonEncode(output));
}

Future<Response> _newClientHandler(Request request) async {
  List<Client> clientData = await _getClientData();
  final Map<String, String> result = request.url.queryParameters;
  clientData
      .add(Client(clientData.length + 1, result['first_name']!, result['last_name']!, result['email_address']!, true));
  print("new client: ${clientData.last}");
  await _writeClientData(clientData);
  return Response(302, headers: {"location": "/clients"});
}

Future<Response> _updateClientHandler(Request request) async {
  List<Client> clientData = await _getClientData();
  final Map<String, String> result = request.url.queryParameters;
  clientData[int.parse(result["client_id"]!) - 1] = Client(
    int.parse(result["client_id"]!),
    result["first_name"]!,
    result["last_name"]!,
    result["email_address"]!,
    true,
  );
  await _writeClientData(clientData);
  return Response(302, headers: {"location": "/clients"});
}

Future<Response> _removeClientHandler(Request request) async {
  List<Client> clientData = await _getClientData();
  final Map<String, String> result = request.url.queryParameters;
  clientData[int.parse(result["client_id"]!) - 1].visible = false;
  await _writeClientData(clientData);
  return Response(302, headers: {"location": "/clients"});
}

class Client {
  int client_id;
  String first_name;
  String last_name;
  String email_address;
  bool visible;
  Client(this.client_id, this.first_name, this.last_name, this.email_address, this.visible);

  Map get toJson => {
        "client_id": this.client_id,
        "first_name": this.first_name,
        "last_name": this.last_name,
        "email_address": this.email_address
      };

  @override
  String toString() => "${this.client_id},${this.first_name},${this.last_name},${this.email_address},${this.visible}";
}
