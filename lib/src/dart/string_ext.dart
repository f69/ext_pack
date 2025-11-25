extension NullStringExt on String? {
  /// Whether this string is null or empty
  bool get isBlank => this == null || this!.isEmpty;

  /// Whether this string is not empty
  bool get isNotBlank => !isBlank;
}

extension StringExt on String {
  /// Whether this string represents URL
  bool get isUrl => startsWith('https://') || startsWith('http://');

  /// Capitalizes first letter of string
  String capitalize() {
    return isBlank ? '' : '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalizes first letter of each word in string
  /// Assumes that word starts only after space
  String capitalizeAllFirst() {
    return split(' ').map((e) => e.toLowerCase().capitalize()).join(' ');
  }

  /// Converts string to int (or null if can't be converted)
  int? toInt() => int.tryParse(this);

  /// Converts string to double (or null if can't be converted)
  double? toDouble() => double.tryParse(this);
}
