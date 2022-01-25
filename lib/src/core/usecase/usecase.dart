abstract class UseCase<T, P> {
  Future<T> call({required P params});
}

class DataUseCase implements UseCase<String, int> {
  @override
  Future<String> call({required int params}) async {
    return 'data is $params';
  }
}

final dataUseCase = DataUseCase();
final data = dataUseCase(params: 10);
