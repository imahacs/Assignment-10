import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
        centerTitle: true,
      ),
      body: const Center(
        child:
            Text('This is the Wallet screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
