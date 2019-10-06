/// Bitcoin Cash specific utilities
class BitcoinCash {
  /// Converts Bitcoin Cash units to satoshi units
  static int toSatoshi(double bchAmount) {
    return (bchAmount * 100000000).round();
  }

  /// Converts satoshi units to Bitcoin Cash units
  static double fromSatoshi(int satoshi) {
    return satoshi / 100000000;
  }

  // Calculates and returns byte count of a transaction
  static int getByteCount(int inputs, int outputs) {
    return ((inputs * 148 * 4 + 34 * 4 * outputs + 10 * 4) / 4).ceil();
  }
}
