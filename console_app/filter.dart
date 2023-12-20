class Filter {
  List<int> data = [];

  Filter(List<int> data) {
    this.data = data;
  }

  Iterable<int> get evens => this.data.where((element) => element % 2 == 0);
  Iterable<int> get odds => this.data.where((element) => element % 2 != 0);
}
