import 'package:basicapp/constants/routes.dart';
import 'package:flutter/material.dart';

enum MenuAction {
  overview,
  transfer,
  airtimerecharge,
  databundles,
  billspayment,
  qrpayment,
  connecttoenairawallet,
  scheduledpayments,
  cards,
  cheques,
  travelandleisure,
  bankservices,
  messages,
  settings,
  zenithnearme,
  signout,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zenith Bank'),
          actions: [
            PopupMenuButton<MenuAction>(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: MenuAction.overview,
                    child: Text('Overview'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.transfer,
                    child: Text('Transfer'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.airtimerecharge,
                    child: Text('Airtime Recharge'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.databundles,
                    child: Text('Data Bundles'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.billspayment,
                    child: Text('Bills Payment'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.qrpayment,
                    child: Text('QR Payments'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.connecttoenairawallet,
                    child: Text('Connect to eNaira Wallet'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.scheduledpayments,
                    child: Text('Schduled Payments'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.cards,
                    child: Text('Cards'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.cheques,
                    child: Text('Cheques'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.travelandleisure,
                    child: Text('Travel and Leisure'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.bankservices,
                    child: Text('Bank Services'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.messages,
                    child: Text('Messages'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.settings,
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.zenithnearme,
                    child: Text('Zenith Near Me'),
                  ),
                  const PopupMenuItem(
                    value: MenuAction.signout,
                    child: Text('Sign Out'),
                  ),
                ];
              },
              onSelected: (value) {
                switch (value) {
                  case MenuAction.signout:
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      login,
                      (route) => false,
                    );
                    break;
                  default:
                }
              },
            )
          ],
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ));
  }
}
