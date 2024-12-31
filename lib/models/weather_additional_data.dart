mixin AdditionalData {
  late final dynamic day;
  late final dynamic min;
  late final dynamic max;
  late final dynamic night;

  void initializeAdditionalData(
      {required dynamic day,
        required dynamic min,
        required dynamic max,
        required dynamic night}) {
    this.day = day;
    this.min = min;
    this.max = max;
    this.night = night;
  }
}