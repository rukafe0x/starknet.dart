// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'components/new_subscription_transaction.dart';

part 'wss_subscription_new_transaction.freezed.dart';
part 'wss_subscription_new_transaction.g.dart';

@freezed
class WssSubscriptionNewTransactionResponse
    with _$WssSubscriptionNewTransactionResponse {
  const factory WssSubscriptionNewTransactionResponse({
    required String subscription_id,
    required NewSubscriptionTransaction result,
  }) = _WssSubscriptionNewTransactionResponse;

  factory WssSubscriptionNewTransactionResponse.fromJson(
          Map<String, Object?> json) =>
      _$WssSubscriptionNewTransactionResponseFromJson(json);
}
