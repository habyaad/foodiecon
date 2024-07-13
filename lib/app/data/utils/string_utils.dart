class StringUtils {
  StringUtils._();

  static String capitalize(String val) {
    return "${val[0].toUpperCase()}${val.substring(1)}";
  }

  static String convertMinutesToTime(int minutes) {
    if (minutes < 0) {
      return '00:00';
    }

    int hours = minutes ~/ 60;
    int remainingMinutes = minutes % 60;

    String hoursString = hours.toString().padLeft(2, '0');
    String minutesString = remainingMinutes.toString().padLeft(2, '0');

    return '$hoursString:$minutesString';
  }
}