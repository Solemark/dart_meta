String checkDate() {
  var day = DateTime.now().day;
  var month = DateTime.now().month;
  var year = DateTime.now().year;
  return '$day/$month/$year';
}
