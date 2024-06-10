import 'package:flutter/material.dart';
import 'package:luxury_guide/model/retirement_model.dart';
import 'package:luxury_guide/service/retirment_service.dart';

class RetirementProvider with ChangeNotifier {
  RetirementService retirementService = RetirementService();
  RetirementModel? item;
  getItems() async {
    item = await retirementService.get();

    notifyListeners();
  }
}
