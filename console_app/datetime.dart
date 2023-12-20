class Datetime {
  DateTime? date = null;

  Datetime() {
    this.date = DateTime.now();
  }

  String get current => '${this.date!.day}/${this.date!.month}/${this.date!.year}';
}
