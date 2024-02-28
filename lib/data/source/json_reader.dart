import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../data.dart';

@Injectable()
class JsonReader {
  Future<QAModel> readJson() async {
    const String jsonFile = "assets/json/min_thein_kha_lat_htauk_bay_din.json";
    final String response = await rootBundle.loadString(jsonFile);

    var valueMap = jsonDecode(response);

    return QAModel.fromJson(valueMap);
  }
}
