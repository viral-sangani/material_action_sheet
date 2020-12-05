import 'package:flutter/material.dart';
import 'material_action_item.dart';

Future<T> showMatrialActionSheet<T>({
  @required BuildContext context,
  @required List<MaterialActionItem> items,
  TextAlign itemAlignment,
  TextStyle itemsTextStyle,
  @required String title,
  TextAlign titleAlignment,
  TextStyle titleTextStyle,
  double maxHeight,
  bool showCancelButton,
  VoidCallback onCancelPressed,
  TextAlign cancelAlignment,
  Widget content,
}) {
  assert(title != null);

  return showModalBottomSheet(
    context: context,
    builder: (context) {
      final double screenHeight = MediaQuery.of(context).size.height;
      return SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight ?? screenHeight - (screenHeight / 10),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    title,
                    style:
                        titleTextStyle ?? Theme.of(context).textTheme.headline6,
                    textAlign: titleAlignment ?? TextAlign.center,
                  ),
                ),
                if (content != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: content,
                  ),
                ...items
                    .map(
                      (item) => InkWell(
                        onTap: item.onPressed,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            item.title,
                            style: itemsTextStyle ??
                                Theme.of(context).textTheme.button,
                            textAlign: itemAlignment ?? TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                if (showCancelButton)
                  InkWell(
                    onTap: onCancelPressed ?? () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Cancel",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.red),
                        textAlign: cancelAlignment ?? TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
