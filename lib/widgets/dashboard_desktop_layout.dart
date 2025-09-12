import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';
import 'all_expenses_and_quick_invoice.dart';
import 'custom_drawer.dart';
import 'income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: AllExpensesAndQuickInvoice(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            MyCardAndTransactionHistory(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
