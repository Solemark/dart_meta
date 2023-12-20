class Filter {
  List<num> data = [];

  Filter(List<num> data) {
    this.data = data;
  }

  Iterable<num> get evens => this.data.where((element) => element % 2 == 0);
  Iterable<num> get odds => this.data.where((element) => element % 2 != 0);
}
