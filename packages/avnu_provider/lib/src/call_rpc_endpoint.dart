import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:starknet/starknet.dart';

Future<dynamic> callRpcEndpoint(
    {required Uri nodeUri, required String method, Object? params}) async {

  Map<String, String> headers = {};
  headers['accept'] = '*/*';
  headers['ask-signature'] = 'true';
  var httpMethod = '';
  switch (method) {
    case 'paymaster_status':
      httpMethod = 'get';
      nodeUri = nodeUri.replace(path: '/paymaster/v1/status');
      break;
    case 'paymaster_gas_token_prices':
      httpMethod = 'get';
      nodeUri = nodeUri.replace(path: '/paymaster/v1/gas-token-prices');
      break;
    case 'paymaster_account_compatible':
      httpMethod = 'get';
      final address = (params as List<String>)[0];
      nodeUri = nodeUri.replace(path: '/paymaster/v1/accounts/$address/compatible');
      break;
    case 'paymaster_sponsor_activity':
      httpMethod = 'get';
      headers['api-key'] = (params as List<String>)[0];
      final startDate = params[1];
      final endDate = params[2];
      nodeUri = Uri.parse('${nodeUri.toString()}/paymaster/v1/sponsor-activity?startDate=$startDate&endDate=$endDate');
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
  //print(filteredBody);
  print("***********************************************");
  print(nodeUri);
  print(headers);
  final response = httpMethod == 'get' ? await http.get(nodeUri, headers: headers) : await http.post(nodeUri, headers: headers, body: filteredBody);

  final jsonResponse = json.decode(response.body);
  //print(jsonResponse); 

  // // calculate sha256 hash from response.body
  // final responseHash = sha256.convert(utf8.encode(response.body)).toString();
  // jsonResponse['response_hash'] = responseHash;
  // // add signature to the jsonResponse
  // jsonResponse['signature'] = response.headers['signature'];

  return jsonResponse;
}
