import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'custom_background_container.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      //padding: 24,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24,),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
