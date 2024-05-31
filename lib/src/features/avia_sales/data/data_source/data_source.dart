import 'dart:convert';

import 'package:effective_mobile/core/network/http_client.dart';
import 'package:effective_mobile/src/features/avia_sales/data/dto_entities/offer_list_entity_dto.dart';

class DataSource {
  final HttpClient _httpClient = HttpClient();

  Future<OfferListEntityDto> getOffers() async {
    final response = await _httpClient.get(
        endpoint: 'v3/214a1713-bac0-4853-907c-a1dfc3cd05fd');
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final OfferListEntityDto offers = OfferListEntityDto.fromJson(jsonData);
      return offers;
    } else {
      print(response.statusCode);
      print(response.body);
      throw Exception('Не удалось получить данные');
    }
  }
}

// void main() async {
//   DataSource userDataSource = DataSource();
//   final res = await userDataSource.getOffers();
//   print(res);
// }
