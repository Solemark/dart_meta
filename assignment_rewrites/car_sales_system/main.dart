import 'dart:io';
import 'src/car_handler.dart';
import 'src/style_handler.dart';
import 'package:shelf/shelf.dart';
import 'src/webpage_handler.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

final _router = shelf_router.Router()
  ..get("/", indexHandler)
  ..get("/styles/<name>", styleHandler)
  ..get("/car/<type>/<function>", carPageHandler)
  ..get("/data/car/<type>", carDataHandler);

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
