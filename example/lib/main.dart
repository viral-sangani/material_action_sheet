import 'package:flutter/material.dart';
import 'package:material_action_sheet/material_action_sheet.dart';
import 'package:material_action_sheet/material_bottom_sheet_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Material Action Sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildModelWithList(context),
            _buildModelWithLongList(context),
            _buildModelWithConfirmation(context),
            _buildModelWithContent(context),
          ],
        ),
      ),
    );
  }

  RaisedButton _buildModelWithList(BuildContext context) {
    return RaisedButton(
      color: Colors.purple,
      child: Text(
        "Open Model with List",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showMatrialActionSheet(
          context: context,
          itemsTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          title: "Some Random Title",
          titleAlignment: TextAlign.center,
          items: [
            MaterialActionItem(
              title: "Item 1",
              onPressed: () {
                print("Printtt");
              },
            ),
            MaterialActionItem(
              title: "Item 2",
              onPressed: () {
                print("Printtt");
              },
            ),
            MaterialActionItem(
              title: "Item 3",
              onPressed: () {
                print("Printtt");
              },
            ),
            MaterialActionItem(
              title: "Item 4",
              onPressed: () {
                print("Printtt");
              },
            )
          ],
          showCancelButton: true,
        );
      },
    );
  }

  RaisedButton _buildModelWithLongList(BuildContext context) {
    return RaisedButton(
      color: Colors.purple,
      child: Text(
        "Open Model with Long List",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showMatrialActionSheet(
          context: context,
          itemsTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          title: "Some Random Title",
          titleAlignment: TextAlign.center,
          items: [
            for (var i = 0; i <= 10; i++)
              MaterialActionItem(
                title: "Item $i",
                onPressed: () {
                  print("Printtt");
                },
              ),
          ],
          showCancelButton: true,
        );
      },
    );
  }

  RaisedButton _buildModelWithConfirmation(BuildContext context) {
    return RaisedButton(
      color: Colors.purple,
      child: Text(
        "Confirmation Model",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showMatrialActionSheet(
          context: context,
          itemsTextStyle: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.blue,
              ),
          title: "Are you sure you want to close this?",
          titleAlignment: TextAlign.center,
          items: [
            MaterialActionItem(
              title: "Yes",
              onPressed: () {
                print("Printtt");
              },
            ),
          ],
          showCancelButton: true,
        );
      },
    );
  }

  RaisedButton _buildModelWithContent(BuildContext context) {
    return RaisedButton(
      color: Colors.purple,
      child: Text(
        "Open Model with Content",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        showMatrialActionSheet(
            context: context,
            itemsTextStyle: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.blue,
                ),
            title: "Some Random Title",
            titleAlignment: TextAlign.center,
            items: [
              MaterialActionItem(
                title: "Yes",
                onPressed: () {
                  print("Printtt");
                },
              ),
            ],
            showCancelButton: true,
            content: Column(
              children: [
                Text("Body Text One"),
                Text("Body Text Two"),
              ],
            ));
      },
    );
  }
}
