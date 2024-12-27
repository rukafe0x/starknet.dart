import 'package:starknet/starknet.dart';
import 'package:avnu_provider/avnu_provider.dart';
import 'package:test/test.dart';

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
      test('returns avnu account compatible', () async {
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
    });
  }, tags: ['integration'], timeout: Timeout(Duration(minutes: 1)));
}

