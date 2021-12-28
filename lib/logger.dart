import 'package:intl/intl.dart';

/// Avaliable logging levels.
enum LogLevel { debug, info, warn, error }

/// Provides logging functionality.
class Logger {
  final LogLevel level;
  final bool utc;
  final _df = DateFormat('yyyy/MM/dd HH:mm:ss');

  Logger({this.level = LogLevel.info, this.utc = false});

  /// Logs a debug message.
  void debug(String message) {
    if (level.index <= LogLevel.debug.index) {
      _printLogMesage(message, 'DBG');
    }
  }

  /// Logs an info message.
  void info(String message) {
    if (level.index <= LogLevel.info.index) {
      _printLogMesage(message, 'INF');
    }
  }

  /// Logs a warning message.
  void warn(String message) {
    if (level.index <= LogLevel.warn.index) {
      _printLogMesage(message, 'WRN');
    }
  }

  /// Logs an error message.
  void error(String message) {
    if (level.index <= LogLevel.error.index) {
      _printLogMesage(message, 'ERR');
    }
  }

  /// Generate the current time as a formatted string.
  String _currentTimeStr() {
    var currentTime = utc ? DateTime.now().toUtc() : DateTime.now();
    return _df.format(currentTime);
  }

  /// Prints the full log message.
  void _printLogMesage(String message, String level) {
    print('${_currentTimeStr()} [$level] $message');
  }
}
