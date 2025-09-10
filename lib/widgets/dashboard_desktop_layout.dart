import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'custom_drawer.dart';
import 'income_section.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 2,
            child: SingleChildScrollView(
              child: Column(
                        children: [
              SizedBox(height: 40,),
              AllExpenses(),
              SizedBox(height: 24,),
              QuickInvoice(),
                        ],
                      ),
            )),
        SizedBox(width: 24,),
        Expanded(child: Column(
          children: [
            SizedBox(height: 40),
            MyCardAndTransactionHistory(),
            SizedBox(height: 24,),
            Expanded(child: IncomeSection()),
          ],
        )),
      ],
    );
  }
}
