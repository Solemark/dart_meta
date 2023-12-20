class HelloWorld {
  String? name = null;

  HelloWorld([String? name = null]) {
    this.name = name;
  }

  String get greet => this.name == null ? 'Hello world!' : 'Hello ${name}!';
}
