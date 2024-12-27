import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:starknet/starknet.dart';

Future<dynamic> callRpcEndpoint(
    {required Uri nodeUri, required String method, Object? params}) async {

  Map<String, String> headers = { 'accept': 'application/json' };
  switch (method) {
    case 'paymaster_status':
      nodeUri = nodeUri.replace(path: '/paymaster/v1/status');
      // headers = {
      //   'ask-signature': '',
      // };
      break;
    case 'paymaster_gas_token_prices':
      nodeUri = nodeUri.replace(path: '/paymaster/v1/gas-token-prices');
      break;
    case 'paymaster_account_compatible':
    // response is one field of this kind:
//   {
//   "isCompatible": false,
//   "gasConsumedOverhead": "0x0",
//   "dataGasConsumedOverhead": "0x0"
// }
      final address = (params as List<String>)[0];
      nodeUri = nodeUri.replace(path: '/paymaster/v1/accounts/$address/compatible');
      break;
    default:
      throw Exception('Method not supported');
  };

  final body = {
    // 'jsonrpc': '2.0',
    // 'method': method,
    // 'params': params ?? [],
    // 'id': 0
  };

  // 2023-07-13: Disabling symbol sorting is required for Declare V2
  final filteredBody = PythonicJsonEncoder(sortSymbol: false).convert(body);
  print(filteredBody);
  final response =
      await http.get(nodeUri, headers: headers);

  final jsonResponse = json.decode(response.body);

  return jsonResponse;
}
