import 'package:flutter/material.dart';
import '../util.dart';
import 'inherited_chat_theme.dart';
import 'inherited_l10n.dart';

/// A class that represents attachment button widget
class AttachmentButton extends StatelessWidget {
  /// Creates attachment button widget
  const AttachmentButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  /// Callback for attachment button tap event
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      margin: const EdgeInsets.only(right: 16,top: 3),
      width: 24,
      child:

      IconButton(
        icon: InheritedChatTheme.of(context).theme.attachmentButtonIcon != null
            ? InheritedChatTheme.of(context).theme.attachmentButtonIcon!
            : const Icon(Icons.camera_alt_outlined,color: AppColor.textAndStarGrey,size: 28,),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        tooltip:
            InheritedL10n.of(context).l10n.attachmentButtonAccessibilityLabel,
      ),
    );
  }
}
