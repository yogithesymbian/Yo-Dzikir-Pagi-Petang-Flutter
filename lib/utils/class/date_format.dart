import 'package:intl/intl.dart';

String? dateFormat(String? format, String? time) {
  var inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ss.SSSZ');
  var inputDate = inputFormat.parse('$time'); // <-- dd/MM 24H format

  var outputFormat = DateFormat('$format', 'id');
  var outputDate = outputFormat.format(inputDate);
  print(outputDate); // 12/31/2000 11:59 PM <-- MM/dd 12H format
  return outputDate;
}

String? dateFormatPicker(String? format, String? time) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  var inputDate = inputFormat.parse('$time'); // <-- dd/MM 24H format

  var outputFormat = DateFormat('$format', 'id');
  var outputDate = outputFormat.format(inputDate);
  print(outputDate); // 12/31/2000 11:59 PM <-- MM/dd 12H format
  return outputDate;
}

String? dateFormatProvider(String? format, String? time) {
  var inputFormat = DateFormat('yyyy-MM-dd');
  var inputDate = inputFormat.parse('$time'); // <-- dd/MM 24H format

  var outputFormat = DateFormat('$format', 'id');
  var outputDate = outputFormat.format(inputDate);
  print(outputDate); // 12/31/2000 11:59 PM <-- MM/dd 12H format
  return outputDate;
}

String? dateFormatSync(String? time) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  var inputDate = inputFormat.parse('$time'); // <-- dd/MM 24H format

  var outputFormat = DateFormat('yyyy-MM-dd', 'id');
  var outputDate = outputFormat.format(inputDate);
  print(outputDate); // 12/31/2000 11:59 PM <-- MM/dd 12H format
  return outputDate;
}
