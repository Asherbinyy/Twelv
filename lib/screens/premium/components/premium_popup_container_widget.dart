// ignore_for_file: no-equal-arguments, no-magic-number
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/premium/bloc/pricing_bloc.dart';
import 'package:twelv/screens/premium/bloc/pricing_event.dart';
import 'package:twelv/screens/premium/components/no_access_premium_info.dart';

class PremiumPopupContainerWidget extends StatelessWidget {
  final Widget child;
  final PremiumPopupBackButton backType;

  const PremiumPopupContainerWidget({required this.child, required this.backType, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 60, 15, 62),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                color: Colors.white,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _PremiumPopupContainerCloseWidget(
                          backType: backType,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            _buildContentScrollView(context, constraints),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildContentScrollView(BuildContext context, BoxConstraints constraints) =>
      ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: constraints.maxWidth, maxHeight: constraints.maxHeight - 60),
        child: SingleChildScrollView(
          child: child,
        ),
      );

  static Widget cancelButton(BuildContext context) => padded(
      AppButtonText(
        Str.of(context).noAccessPopupNotNowButtonTitle,
        color: Colors.black.withOpacity(0.3),
        onPressed: () => Navigator.of(context).pop(),
      ),
      top: 20); // ignore: no-magic-number
}

class _PremiumPopupContainerCloseWidget extends StatelessWidget {
  final PremiumPopupBackButton backType;

  const _PremiumPopupContainerCloseWidget({
    required this.backType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
            onTap: () {
              switch (backType) {
                case PremiumPopupBackButton.hide:
                  break;
                case PremiumPopupBackButton.close:
                  Navigator.of(context).pop();
                  break;
                case PremiumPopupBackButton.back:
                  context.read<PricingBloc>().add(const PricingEvent.back());
                  break;
              }
            },
            child: Container(
              color: Colors.white.withOpacity(0.5),
              padding: const EdgeInsets.all(5),
              child: Image(width: 40, height: 40, image: backType.getImage(context)),
            )),
      );
}
