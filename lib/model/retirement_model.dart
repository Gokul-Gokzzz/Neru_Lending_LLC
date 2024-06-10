// ignore_for_file: non_constant_identifier_names

class RetirementModel {
  String? id;
  String? current_savings;
  String? last_income;
  String? monthly_goal;
  String? rental_income;
  String? current_percentage;
  String? monthly_percentage;
  String? amount;
  String? business_coin;

  RetirementModel({
    this.id,
    this.current_savings,
    this.last_income,
    this.monthly_goal,
    this.rental_income,
    this.current_percentage,
    this.monthly_percentage,
    this.amount,
    this.business_coin,
  });

  factory RetirementModel.fromJson(Map<String, dynamic> json) {
    return RetirementModel(
      current_savings: json['current_savings'],
      last_income: json['last_income'],
      monthly_goal: json['monthly_goal'],
      rental_income: json['rental_income'],
      current_percentage: json['current_percentage'],
      monthly_percentage: json['monthly_percentage'],
      amount: json['amount'],
      business_coin: json['business_coin'],
    );
  }
}
