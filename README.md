<p align="center">
🚀A Matrial Action Sheet widget to get Awesome Bottom Sheet List Widget.  🔥
</p>

<p align="center">
    Project URL - <a href="https://github.com/viral-sangani/material_action_sheet">https://github.com/viral-sangani/material_action_sheet</a>
</p>

# DEMO

<p align="center">
<img src="https://raw.githubusercontent.com/viral-sangani/material_action_sheet/main/example/example.gif" alt="Personal Blog">
</p>

# Getting Started

Add the package to your pubspec.yaml:

```yaml
material_action_sheet: ^0.0.2
```

In your dart file, import the library:

```dart
import 'package:material_action_sheet/material_action_sheet.dart';
```

To Use the widget instead of `showModalBottomSheet()` use `showMatrialActionSheet()`.

```dart
showMatrialActionSheet(
  context: context,
  itemsTextStyle: Theme.of(context).textTheme.headline6.copyWith(
        color: Colors.blue,
      ),
  title: "Are you sure you want to close this?",
  titleAlignment: TextAlign.center,
  items: `[
    MaterialActionItem(
      title: "Yes",
      onPressed: () {
        print("Printtt");
      },
    ),
  ],
  showCancelButton: true,
);
```

# Parameter

### `showMatrialActionSheet:`

- `context` - Need a current BuildContext. _@required_
- `items` - items parameter takes the list of MaterialActionItem `List<MaterialActionItem>`. _@required_
- `itemAlignment` - items alignment takes `TextAlign` for items in list.
- `itemsTextStyle` - `TextStyle` of each items the list.
- `title` - `String` for the title of bottomsheet. _@required_
- `titleAlignment` - text alignment for title of bottomsheet.
- `titleTextStyle` - `TextStyle` of title.
- `maxHeight` - Maximun height of the bottom sheet.
- `showCancelButton` - Show Cancel button to close the bottomsheet.
- `onCancelPressed` - Callback functin on cancel button clicked.
- `cancelAlignment` - Cancel buttom alignment.
- `content` - Any widget to be shown between Title and List items.

### `MaterialActionItem:`

- `title` - Title for item of list. _@required_
- `onPressed` - Callback function for onClick on each item.
