class CardType {
  final String name;
  final RegExp pattern;
  final List<int> validLengths;

  const CardType(
    this.name,
    this.pattern,
    this.validLengths,
  );
}
