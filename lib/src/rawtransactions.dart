import 'utils/rest_api.dart';

/// Utilities for working raw transactions
class RawTransactions {
  /// Send raw transaction to the network
  /// Returns the resulting txid
  static Future<String> sendRawTransaction(String rawTx) async =>
    await RestApi.sendGetRequest("rawtransactions/sendRawTransaction", rawTx);
}