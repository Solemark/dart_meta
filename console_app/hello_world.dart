class HelloWorld {
  String? name = null;
  HelloWorld([this.name = null]);

  String get greet => this.name == null ? 'Hello world!' : 'Hello ${name}!';
}
