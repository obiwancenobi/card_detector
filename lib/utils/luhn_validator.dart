bool luhnCheck(String cardNumber) {
  int sum = 0;
  bool alternate = false;

  for (int i = cardNumber.length - 1; i >= 0; i--) {
    int digit = int.parse(cardNumber[i]);

    if (alternate) {
      digit *= 2;
      if (digit > 9) digit -= 9;
    }

    sum += digit;
    alternate = !alternate;
  }

  return sum % 10 == 0;
}