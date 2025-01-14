import 'package:starknet/starknet.dart';
import 'package:starknet/src/crypto/poseidon.dart';
import 'package:avnu_provider/avnu_provider.dart';
import 'package:test/test.dart';
import 'dart:convert';

import '../utils.dart';

void main() {
  group('ReadProvider', () {
    late ReadProvider provider;

    Felt balanceContractAddress = Felt.fromHexString(
        "0x03cdc588f4f1bff66c8a6896e7008cc39c7804d36b16e93792625bd18bffd249");

    Felt invalidHexString = Felt.fromHexString(
        '0x0000000000000000000000000000000000000000000000000000000000000000');
    Felt blockHash = Felt.fromHexString(
        '0x51d7ee9fa3a6226d47860eea28dc0b38eeccd7b6fac1b9f39c64c3ac772cc02');
    int blockNumber = 3;
    Felt invokeTransactionHash = Felt.fromHexString(
        '0x029583643cd8932f1955bf28bfebf4c907b13df1e5c2d202b133cfbf783697a2');
    Felt declareTransactionHash = Felt.fromHexString(
        '0x4d7ba5427d4066c8db851e7662ecce860a94a804c6735677dfd29f1d0103fda');
    Felt deployTransactionHash = Felt.fromHexString(
        '0x5682042c671663e3b6077bb94d3ad94063b7dcc4be8866e6d78bfadd60587e9');
    Felt deployAccountTransactionHash = Felt.fromHexString(
        '0x055ba13c33a12506d2eab8dfbc618a8ce0d247c24959a64ee18fbf393c873b83');
    Felt l1HandlerTransactionHash = Felt.fromHexString(
        '0x5ba26613f632e8bf8d3ca83202d06edf371b60dd07cfcc3f3b04dc0fff04687');

    // BlockId blockIdFromBlockHash = BlockId.blockHash(blockHash);
    // BlockId blockIdFromBlockNumber = BlockId.blockNumber(blockNumber);
    // BlockId invalidBlockIdFromBlockHash = BlockId.blockHash(invalidHexString);

    Felt classHashV0 = Felt.fromHexString(
        '0x06234338a4c4644b88e1548b35d5f51570847f05157ca762d8d5492fd9ba702c');
    // Felt contractAddressV0 = Felt.fromHexString(
    //     '0x04e76f8708774c8162fb4da7abefb3cae94cc51cf3f9b40e0d44f24aabf8a521');
    // BlockId blockIdForTheGivenContractAddress = BlockId.blockHash(
        // Felt.fromHexString(
        //     '0x51d7ee9fa3a6226d47860eea28dc0b38eeccd7b6fac1b9f39c64c3ac772cc02'));
    Felt entryPointSelector = Felt.fromHexString(
        '0x9278fa5f64a571de10741418f1c4c0c4322aef645dd9d94a429c1f3e99a8a5');

    Felt classHashV1 = Felt.fromHexString(
        '0x061dac032f228abef9c6626f995015233097ae253a7f72d68552db02f2971b8f'); // Predeployed class hash
    Felt contractAddressV1 = Felt.fromHexString(
        '0x64b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691');

    setUpAll(() {
      // executed once before all tests
      provider = getProvider();
    });

    setUp(() async {
      // setUp is exectued before each test
      //await resetDevnet();
    });

    group('serviceStatus', () {
      test('returns avnu service status', () async {
        final avnuStatus = await provider.avnuStatus();
        avnuStatus.when(
          status: (status) => expect(status, isTrue),
          error: (error) => fail('Should not return an error'),
        );
      });
    });

    group('getGasTokenPrices', () {
      test('returns avnu gas token prices', () async {
        final avnuGasTokenPrices = await provider.getGasTokenPrices();
        avnuGasTokenPrices.when(
          prices: (prices) {
            expect(prices, isNotEmpty);
            print(prices.map((price) => [price.tokenAddress, price.priceInETH, price.priceInUSD, price.decimals]).join('\n'));
          },
          error: (error) => fail('Should not return an error'),
        );
      });
    });
    group('checkAccountCompatible', () {
      test('returns account not deployed error message', () async {
        final avnuAccountCompatible = await provider.checkAccountCompatible(account0.accountAddress.toHexString());
        expect(avnuAccountCompatible, isA<AvnuAccountCompatibleError>());
      });
      test('returns avnu account not compatible', () async {
        // check with account 0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7
        // as in https://sepolia.api.avnu.fi/webjars/swagger-ui/index.html#/ test cases
        final avnuAccountCompatible = await provider.checkAccountCompatible('0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7');
        avnuAccountCompatible.when(
          isCompatible: (isCompatible, gasConsumedOverhead, dataGasConsumedOverhead) {
            expect(isCompatible, isFalse);
            print('isCompatible: $isCompatible');
            print('gasConsumedOverhead: $gasConsumedOverhead');
            print('dataGasConsumedOverhead: $dataGasConsumedOverhead');
          },
          error: (error) => fail('Should not return an error message: ${error.join(', ')}'),
        );
      });
      test('returns avnu account compatible', () async {
        // check with account 0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7
        // as in https://sepolia.api.avnu.fi/webjars/swagger-ui/index.html#/ test cases
        final avnuAccountCompatible = await provider.checkAccountCompatible('0x01883b8338e3ddA4F190E71c7B9b529B97168862174D02F2D03e2a286e1fAe7d');
        avnuAccountCompatible.when(
          isCompatible: (isCompatible, gasConsumedOverhead, dataGasConsumedOverhead) {
            expect(isCompatible, isTrue);
            print('isCompatible: $isCompatible');
            print('gasConsumedOverhead: $gasConsumedOverhead');
            print('dataGasConsumedOverhead: $dataGasConsumedOverhead');
          },
          error: (error) => fail('Should not return an error message: ${error.join(', ')}'),
        );
      });
    });
    group('getSponsorActivity', () {
      test('returns avnu sponsor activity', () async {
        final apiKey = '3fe427af-1c19-4126-8570-4e3adba3a043';
        final startDate = '2024-02-04T14:08:38.511Z';
        final endDate = '2024-02-04T15:08:38.511Z';
        final avnuSponsorActivity = await provider.getSponsorActivity(apiKey, startDate, endDate);
        expect(avnuSponsorActivity, isA<AvnuSponsorActivity>());
        print(avnuSponsorActivity.toJson());
      });
    });
    group('buildTypedData', () {
      test('returns avnu build typed data', () async {
        final apiKey = '3fe427af-1c19-4126-8570-4e3adba3a043';
        final userAddress = '0x01883b8338e3ddA4F190E71c7B9b529B97168862174D02F2D03e2a286e1fAe7d';
        final calls = [
          {
            'contractAddress': '0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7',
            'entrypoint': 'approve',
            'calldata': [
              '0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003',
              '0x1'
            ]
          }
        ];
        final gasTokenAddress = '0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7';
        final maxGasTokenAmount = '0xffffff';
        final accountClassHash = '0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003';
        final avnuBuildTypedData = await provider.buildTypedData(apiKey, userAddress, calls, gasTokenAddress, maxGasTokenAmount, accountClassHash);
        expect(avnuBuildTypedData, isA<AvnuBuildTypedData>());
        print(avnuBuildTypedData.toJson());
      });
    });
    group('execute', () {
      // String validJson = typedData1
        //   // Add quotes to keys
        //   .replaceAllMapped(
        //     RegExp(r'(\w+):'),
        //     (match) => '"${match[1]}":',
        //   )
        //   // Add quotes to string values (felt, OutsideCall*, etc)
        //   .replaceAllMapped(
        //     RegExp(r':\s*([\w*]+)(?=[\s,\}])'),
        //     (match) => ': "${match[1]}"',
        //   )
        //   // Add quotes to hex values
        //   .replaceAllMapped(
        //     RegExp(r':\s*(0x[a-fA-F0-9]+)'),
        //     (match) => ': "${match[1]}"',
        //   )
        //   // Add quotes to hex values in arrays
        //   .replaceAllMapped(
        //     RegExp(r'\[(0x[a-fA-F0-9]+)'),
        //     (match) => '["${match[1]}"',
        //   )
        //   .replaceAllMapped(
        //     RegExp(r',\s*(0x[a-fA-F0-9]+)'),
        //     (match) => ', "${match[1]}"',
        //   )
        //   // Add quotes to Account.execute_from_outside
        //   .replaceAll('Account.execute_from_outside', '"Account.execute_from_outside"');
      test('returns avnu execute', () async {
        final apiKey = '3fe427af-1c19-4126-8570-4e3adba3a043';
        final userAddress = '0x01883b8338e3ddA4F190E71c7B9b529B97168862174D02F2D03e2a286e1fAe7d';
        //final typedData1 = '{types: {StarkNetDomain: [{name: name, type: felt}, {name: version, type: felt}, {name: chainId, type: felt}], OutsideExecution: [{name: caller, type: felt}, {name: nonce, type: felt}, {name: execute_after, type: felt}, {name: execute_before, type: felt}, {name: calls_len, type: felt}, {name: calls, type: OutsideCall*}], OutsideCall: [{name: to, type: felt}, {name: selector, type: felt}, {name: calldata_len, type: felt}, {name: calldata, type: felt*}]}, primaryType: OutsideExecution, domain: {name: Account.execute_from_outside, version: 1, chainId: 0x534e5f5345504f4c4941}, message: {caller: 0x75a180e18e56da1b1cae181c92a288f586f5fe22c18df21cf97886f1e4b316c, nonce: 0x1410db66c74f1f10d2cb5bad8780d6c650bf78bee76a71e3dc15c9928c503b5, execute_after: 0x1, execute_before: 0x1944673d2ae, calls_len: 2, calls: [{to: 0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7, selector: 0x219209e083275171774dab1df80982e9df2096516f06319c5c6d71ae0a8480c, calldata_len: 2, calldata: [0x1a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003, 0x1]}, {to: 0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7, selector: 0x83afd3f4caedc6eebf44246fe54e38c95e3179a5ec9ea81740eca5b482d12e, calldata_len: 3, calldata: [0x75a180e18e56da1b1cae181c92a288f586f5fe22c18df21cf97886f1e4b316c, 0xffffff, 0x0]}]}}';
        //final typedData = '{ "types": {"StarkNetDomain": [ {"name":"name","type":"felt"}, {"name":"version","type":"felt"}, {"name":"chainId","type":"felt"} ], "OutsideExecution":[{"name":"caller","type":"felt"},{"name":"nonce","type":"felt"},{"name":"execute_after","type":"felt"},{"name":"execute_before","type":"felt"},{"name":"calls_len","type":"felt"},{"name":"calls","type":"OutsideCall*"}],"OutsideCall":[{"name":"to","type":"felt"},{"name":"selector","type":"felt"},{"name":"calldata_len","type":"felt"},{"name":"calldata","type":"felt*"}]},"primaryType":"OutsideExecution","domain":{"name":"Account.execute_from_outside","version":"1","chainId":"0x534e5f5345504f4c4941"},"message":{"caller":"0x75a180e18e56da1b1cae181c92a288f586f5fe22c18df21cf97886f1e4b316c","nonce":"0x12191f1f802a41fe742eca33afbb49828759bf371699cdf6e296bbdfff389a2","execute_after":"0x1","execute_before":"0x19442e684a6","calls_len":2,"calls":[{"to":"0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7","selector":"0x219209e083275171774dab1df80982e9df2096516f06319c5c6d71ae0a8480c","calldata_len":2,"calldata": ["0x1a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003","0x1"] },{"to":"0x49d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7","selector":"0x83afd3f4caedc6eebf44246fe54e38c95e3179a5ec9ea81740eca5b482d12e","calldata_len":3,"calldata":["0x75a180e18e56da1b1cae181c92a288f586f5fe22c18df21cf97886f1e4b316c","0xffffff","0x0"]} ]}}';
        final typedData1 = '{"types":{"StarkNetDomain":[{"name":"name","type":"felt"},{"name":"version","type":"felt"},{"name":"chainId","type":"felt"}],"Person":[{"name":"name","type":"felt"},{"name":"wallet","type":"felt"}],"String":[{"name":"len","type":"felt"},{"name":"data","type":"felt*"}],"Mail":[{"name":"from","type":"Person"},{"name":"to","type":"Person"},{"name":"contents","type":"String"}]},"primaryType":"Mail","domain":{"name":"StarkNet Mail","version":"1","chainId":1},"message":{"from":{"name":"Cow","wallet":"0xCD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826"},"to":{"name":"Bob","wallet":"0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB"},"contents":{"len":98,"data":["0x74","0x68","0x69","0x73","0x20","0x69","0x73","0x20","0x77","0x61","0x79","0x20","0x6c","0x6f","0x6e","0x67","0x65","0x72","0x20","0x74","0x68","0x61","0x6e","0x20","0x6a","0x75","0x73","0x74","0x20","0x33","0x32","0x20","0x63","0x68","0x61","0x72","0x61","0x63","0x74","0x65","0x72","0x73","0x2c","0x20","0x74","0x6f","0x20","0x74","0x65","0x73","0x74","0x20","0x69","0x66","0x20","0x74","0x68","0x61","0x74","0x20","0x69","0x73","0x20","0x70","0x6f","0x73","0x73","0x69","0x62","0x6c","0x65","0x20","0x77","0x69","0x74","0x68","0x69","0x6e","0x20","0x61","0x20","0x74","0x79","0x70","0x65","0x64","0x44","0x61","0x74","0x61","0x20","0x73","0x74","0x72","0x75","0x63","0x74","0x2e"]}}}';
        // First, add quotes to keys to make it valid JSON
        // Add quotes to both keys and string values
        String validJson = typedData1;        

        // remove \ symbol from validJson
        final typedData3 = validJson.replaceAll('\\', '');
        final Map<String, dynamic> data = jsonDecode(typedData3);
        final typedData = PythonicJsonEncoder(sortSymbol: false).convert(data);
        
      final element1 = Felt.fromString("StarkNet Message").toBigInt();
      final element2 = getStarkNetStructHash(typedData, "StarkNetDomain");
      final element3 = BigInt.parse("CD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826".toLowerCase(), radix: 16);
      final element4 = getStarkNetStructHash(typedData, "OutsideExecution");
        final elementsToHash = <BigInt>[
          element1,
          element2,
          element3,
          element4
        ];
        final messageHash = computeHashOnElements(elementsToHash);
        final signature = starknetSign(
          privateKey: account0.signer.privateKey.toBigInt(),
          messageHash: messageHash,
          seed: BigInt.from(32),
        );  
        final signatureList = [signature.r.toString(), signature.s.toString()];
        final deploymentData = {
          // 'class_hash': '0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003',
          // 'salt': '0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003',
          // 'unique': '0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003',
          // 'calldata': ['0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003'],
          // 'sigdata': ['0x01a736d6ed154502257f02b1ccdf4d9d1089f80811cd6acad48e6b6a9d1f2003']
        };
        final avnuExecute = await provider.execute(apiKey, userAddress, typedData, signatureList, deploymentData);
        expect(avnuExecute, isA<AvnuExecute>());
        print(avnuExecute.toJson());
      });
    });
  }, tags: ['integration'], timeout: Timeout(Duration(minutes: 1)));
}



