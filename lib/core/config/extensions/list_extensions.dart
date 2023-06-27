extension ForEach<T> on List<T> {
  void forEachIndex(void Function(int index, T item) action) {
    asMap().entries.forEach((element) => action(element.key, element.value));
  }

  Iterable<E> mapWithIndex<E>(E Function(int index, T item) action) {
    return asMap().entries.map((element) => action(element.key, element.value));
  }
}
