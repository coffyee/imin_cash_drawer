
# imin_cash_drawer

The `imin_cash_drawer` package is designed specifically for IMIN Android devices to control and manage cash drawers connected to IMIN POS systems. This package provides easy-to-use methods to check the cash drawer status and open the drawer programmatically.

## Features

- **Drawer Status**: Retrieve the current status of the cash drawer (open/closed).
- **Open Drawer**: Programmatically open the connected cash drawer.

## Getting Started

### Installation

Add `imin_cash_drawer` to your `pubspec.yaml` file:

```yaml
dependencies:
  imin_cash_drawer: 0.0.1
```

Then, run:

```bash
flutter pub get
```

### Import the Package

```dart
import 'package:imin_cash_drawer/imin_cash_drawer.dart';
```

## Usage

### Checking Drawer Status

To check if the cash drawer is open or closed, use the following code:

```dart
final data = await IminCashDrawer.drawerStatus;
print(data);  // Returns status (e.g., 'open' or 'closed')
```

### Opening the Drawer

To open the cash drawer, call the following:

```dart
await IminCashDrawer.openDrawer;
```

## Platform Support

This package is designed for **IMIN Android devices** only and will not function on other platforms.

## Example

```dart
import 'package:flutter/material.dart';
import 'package:imin_cash_drawer/imin_cash_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CashDrawerPage(),
    );
  }
}

class CashDrawerPage extends StatefulWidget {
  @override
  _CashDrawerPageState createState() => _CashDrawerPageState();
}

class _CashDrawerPageState extends State<CashDrawerPage> {
  String drawerStatus = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash Drawer Control'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Drawer Status: $drawerStatus'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final status = await IminCashDrawer.drawerStatus;
                setState(() {
                  drawerStatus = status;
                });
              },
              child: Text('Check Drawer Status'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await IminCashDrawer.openDrawer;
              },
              child: Text('Open Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Contributions

Feel free to contribute to this package by opening issues or submitting pull requests.

## License

This package is licensed under the MIT License.
