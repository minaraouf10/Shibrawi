extension EnumExtension on Enum {
  String toStr() => toString().split('.').last;
}
