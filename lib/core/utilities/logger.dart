import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0, // Number of method calls to be displayed
    errorMethodCount: 5, // Number of method calls to be displayed for errors
    colors: true, // Colorize output
    printEmojis: true, // Print emojis in the log
    dateTimeFormat:
        (time) =>
            DateFormat('HH:mm:ss').format(time), // Do not print time in the log
  ),
);
