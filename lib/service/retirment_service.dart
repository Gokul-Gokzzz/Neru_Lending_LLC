import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luxury_guide/model/retirement_model.dart';

class RetirementService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<RetirementModel> get() async {
    final snapshot = await firestore
        .collection('retirement')
        .doc('Vzu07enhc3pRt1hU4hzV')
        .get();
    return RetirementModel.fromJson(snapshot.data()!);
  }
}
