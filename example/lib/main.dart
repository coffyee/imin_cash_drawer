import 'package:flutter/material.dart';
import 'package:imin_cash_drawer/imin_cash_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CashDrawerPage(),
    );
  }
}

class CashDrawerPage extends StatefulWidget {
  const CashDrawerPage({Key? key}) : super(key: key);

  @override
  _CashDrawerPageState createState() => _CashDrawerPageState();
}

class _CashDrawerPageState extends State<CashDrawerPage> {
  String drawerStatus = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Drawer Control'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Drawer Status: $drawerStatus'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final status = await IminCashDrawer.drawerStatus;
                setState(() {
                  drawerStatus = status;
                });
              },
              child: const Text('Check Drawer Status'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await IminCashDrawer.openDrawer;
              },
              child: const Text('Open Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
