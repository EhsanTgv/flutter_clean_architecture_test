import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;

  const DataState({required this.data, required this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data, error: null);
}

class DataFailure<T> extends DataState<T> {
  const DataFailure(DioError error) : super(data:null, error: error);
}
