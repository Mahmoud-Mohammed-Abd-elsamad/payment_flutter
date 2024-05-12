
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';


class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.isPaypal,
  });

  final bool isPaypal;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onTap: () {
          // if (isPaypal) {
          //   var transctionsData = getTransctionsData();
          //   exceutePaypalPayment(context, transctionsData);
          // } else {
          //   excuteStripePayment(context);
          // }
        },
        isLoading: false,
        text: 'Continue');
  }

  // void excuteStripePayment(BuildContext context) {
  //   PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
  //     amount: '100',
  //     currency: 'USD',
  //     cusomerId: 'cus_Onu3Wcrzhehlez',
  //   );
  //   BlocProvider.of<PaymentCubit>(context)
  //       .makePayment(paymentIntentInputModel: paymentIntentInputModel);
  // }

  // void exceutePaypalPayment(BuildContext context,
  //     ({AmountModel amount, ItemListModel itemList}) transctionsData) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (BuildContext context) => PaypalCheckoutView(
  //       sandboxMode: true,
  //       clientId: ApiKeys.clientID,
  //       secretKey: ApiKeys.paypalSecretKey,
  //       transactions: [
  //         {
  //           "amount": transctionsData.amount.toJson(),
  //           "description": "The payment transaction description.",
  //           "item_list": transctionsData.itemList.toJson(),
  //         }
  //       ],
  //       note: "Contact us for any questions on your order.",
  //       onSuccess: (Map params) async {
  //         log("onSuccess: $params");
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) {
  //             return const ThankYouView();
  //           }),
  //           (route) {
  //             if (route.settings.name == '/') {
  //               return true;
  //             } else {
  //               return false;
  //             }
  //           },
  //         );
  //       },
  //       onError: (error) {
  //         SnackBar snackBar = SnackBar(content: Text(error.toString()));
  //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) {
  //             return const MyCartView();
  //           }),
  //           (route) {
  //             return false;
  //           },
  //         );
  //       },
  //       onCancel: () {
  //         print('cancelled:');
  //         Navigator.pop(context);
  //       },
  //     ),
  //   ));
  // }
}
