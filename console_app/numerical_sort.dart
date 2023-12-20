class Sort {
  List<double> data = [];

  Sort(List<double> data) {
    this.data = data;
  }

  List<double> get numerical => this.data..sort();
}
