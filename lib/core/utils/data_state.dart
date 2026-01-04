
sealed class DataState<T> {
  const DataState();
}

final class DataLoading<T> extends DataState<T> {
  final T? data;
  const DataLoading({this.data});
}

final class DataSuccess<T> extends DataState<T> {
  final T data;
  const DataSuccess(this.data);
}

final class DataError<T> extends DataState<T> {
  final Object error;
  final T? data;

  const DataError({
    required this.error,
    this.data,
  });
}
