class NumberConverter {
  static int number(String mDigit) {
    switch (mDigit) {
      case "၀":
        return 0;
      case "၁":
        return 1;
      case "၂":
        return 2;
      case "၃":
        return 3;
      case "၄":
        return 4;
      case "၅":
        return 5;
      case "၆":
        return 6;
      case "၇":
        return 7;
      case "၈":
        return 8;
      case "၉":
        return 9;
      case "၁၀":
        return 10;
      default:
        return 0;
    }
  }
}
