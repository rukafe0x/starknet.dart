// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_rpc_api_error.freezed.dart';
part 'json_rpc_api_error.g.dart';

// Add this JsonConverter to handle JsonRpcApiErrorData serialization
class JsonRpcApiErrorDataConverter
    implements JsonConverter<JsonRpcApiErrorData?, Map<String, dynamic>?> {
  const JsonRpcApiErrorDataConverter();

  @override
  JsonRpcApiErrorData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return JsonRpcApiErrorData.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(JsonRpcApiErrorData? data) {
    if (data == null) return null;
    return data.when(
      contractError: (contractData) => contractData.toJson(),
      transactionExecutionError: (txExecData) => txExecData.toJson(),
    );
  }
}

@freezed
class JsonRpcApiError with _$JsonRpcApiError {
  const factory JsonRpcApiError({
    required JsonRpcApiErrorCode code,
    required String message,
    @JsonKey(name: 'data')
    @JsonRpcApiErrorDataConverter() // Apply the converter here
    JsonRpcApiErrorData? errorData,
  }) = _JsonRpcApiError;

  factory JsonRpcApiError.fromJson(Map<String, Object?> json) =>
      _$JsonRpcApiErrorFromJson(json);
}

@freezed
// Define the specific data structure for CONTRACT_ERROR
class ContractErrorData with _$ContractErrorData {
  const factory ContractErrorData({
    @JsonKey(name: 'revert_error') required String revertError,
  }) = _ContractErrorData;

  factory ContractErrorData.fromJson(Map<String, Object?> json) =>
      _$ContractErrorDataFromJson(json);
}

// Define the specific data structure for TRANSACTION_EXECUTION_ERROR
@freezed
class TransactionExecutionErrorData with _$TransactionExecutionErrorData {
  const factory TransactionExecutionErrorData({
    @JsonKey(name: 'transaction_index') required int transactionIndex,
    @JsonKey(name: 'execution_error') required String executionError,
  }) = _TransactionExecutionErrorData;

  factory TransactionExecutionErrorData.fromJson(Map<String, Object?> json) =>
      _$TransactionExecutionErrorDataFromJson(json);
}

@freezed
class JsonRpcApiErrorData with _$JsonRpcApiErrorData {
  const factory JsonRpcApiErrorData.contractError({
    required ContractErrorData data,
  }) = ContractError;

  const factory JsonRpcApiErrorData.transactionExecutionError({
    required TransactionExecutionErrorData data,
  }) = TransactionExecutionError;

  factory JsonRpcApiErrorData.fromJson(Map<String, Object?> json) {
    // When the JSON contains a "revert_error" key, we assume the error is a contract error.
    // This includes CONTRACT_NOT_FOUND errors (error code 20), for which the revert error
    // message (e.g., "Contract not found") is parsed into a ContractErrorData.
    // Otherwise, the error is treated as a transaction execution error.
    if (json.containsKey('revert_error')) {
      return JsonRpcApiErrorData.contractError(
          data: ContractErrorData.fromJson(json));
    } else {
      return JsonRpcApiErrorData.transactionExecutionError(
          data: TransactionExecutionErrorData.fromJson(json));
    }
  }
}

// TODO: should be generated from JSON-RPC API specs
enum JsonRpcApiErrorCode {
  @JsonValue(-1)
  DEVNET_WILDCARD_ERROR, // not in JSON-RPC API specs
  @JsonValue(1)
  FAILED_TO_RECEIVE_TXN,
  @JsonValue(20)
  CONTRACT_NOT_FOUND,
  @JsonValue(21)
  INVALID_MESSAGE_SELECTOR, // removed in spec 0.3.0
  @JsonValue(22)
  INVALID_CALL_DATA, // removed in spec 0.3.0
  @JsonValue(24)
  BLOCK_NOT_FOUND,
  @JsonValue(25)
  TXN_HASH_NOT_FOUND_PRE_0_4_0, // modified in spec 0.4.0
  @JsonValue(27)
  INVALID_TXN_INDEX,
  @JsonValue(28)
  CLASS_HASH_NOT_FOUND,
  @JsonValue(29)
  TXN_HASH_NOT_FOUND,
  @JsonValue(31)
  PAGE_SIZE_TOO_BIG,
  @JsonValue(32)
  NO_BLOCKS,
  @JsonValue(33)
  INVALID_CONTINUATION_TOKEN,
  @JsonValue(34)
  TOO_MANY_KEYS_IN_FILTER, // new in spec 0.3.0
  @JsonValue(40)
  CONTRACT_ERROR,
  @JsonValue(41)
  TRANSACTION_EXECUTION_ERROR,
  @JsonValue(50)
  INVALID_CONTRACT_CLASS, // from pathfinder code
  @JsonValue(51)
  CLASS_ALREADY_DECLARED, // from pathfinder code
  @JsonValue(52)
  INVALID_TRANSACTION_NONCE, // from pathfinder code
  @JsonValue(53)
  INSUFFICIENT_MAX_FEE, // from pathfinder code
  @JsonValue(54)
  INSUFFICIENT_ACCOUNT_BALANCE, // from pathfinder code
  @JsonValue(55)
  VALIDATION_FAILURE, // from pathfinder code
  @JsonValue(56)
  COMPILATION_FAILED, // from pathfinder code
  @JsonValue(57)
  CONTRACT_CLASS_SIZE_IS_TOO_LARGE, // from pathfinder code
  @JsonValue(58)
  NON_ACCOUNT, // from pathfinder code
  @JsonValue(59)
  DUPLICATE_TRANSACTION, // from pathfinder code
  @JsonValue(60)
  COMPILED_CLASS_HASH_MISMATCH, // from pathfinder code
  @JsonValue(61)
  UNSUPPORTED_TX_VERSION, // from pathfinder code
  @JsonValue(62)
  UNSUPPORTED_CONTRACT_CLASS_VERSION, // from pathfinder code
  @JsonValue(63)
  UNEXPECTED_ERROR, // from pathfinder code
  @JsonValue(10000)
  PROOF_LIMIT_EXCEEDED, // from pathfinder code
  @JsonValue(-32601)
  METHOD_NOT_FOUND,
  @JsonValue(-32602)
  INVALID_QUERY,
  @JsonValue(-32603)
  INTERNAL_SEQUENCER,
}
