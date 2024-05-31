abstract class PriceFormatter {
  static String formatPrice(String price) {
    return price.replaceAllMapped(
      RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
          (Match match) => '${match[1]} ',
    );
  }
}
