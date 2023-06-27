extension Sort<T extends num> on Iterable<T> {
  Iterable<T> sort(int Function(T a, T b) compare) => toList()..sort(compare);
}
