import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:luxury_guide/controller/retirment_provider.dart';
import 'package:luxury_guide/view/chart/chart.dart';
import 'package:luxury_guide/widget/info_cart.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<RetirementProvider>(context, listen: false).getItems();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[700],
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              dialogBox(context);
            },
            icon: const Icon(
              Icons.business,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[700]!, Colors.blue[300]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<RetirementProvider>(
            builder: (context, value, child) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'Retirement predictions',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Current savings:',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                            Text(
                              "\$ ${value.item?.current_savings}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${value.item?.amount} / ${value.item?.current_percentage}%',
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                            const Text(
                              'Last income / Goal',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: LineChart_Screen(
                        isShowingMainData: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoCard(
                          title: 'Monthly goal',
                          value: '${value.item?.monthly_goal}%',
                          icon: Icons.pie_chart,
                          percentage: "${value.item?.monthly_percentage}",
                        ),
                        InfoCard(
                          title: 'Rental income',
                          value: '${value.item?.rental_income}',
                          icon: Icons.home,
                          percentage: null,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  dialogBox(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blue[700],
          title: const Text(
            'Business Coin',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Lottie.asset('assets/Animation - 1718017222787.json',
                      height: 100, width: double.infinity),
                ),
                Consumer<RetirementProvider>(
                    builder: (context, value, child) => Text(
                          '\$ ${value.item?.business_coin}',
                          style: const TextStyle(color: Colors.white),
                        ))
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
