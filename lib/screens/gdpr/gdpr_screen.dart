import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_bloc_event.dart';
import 'package:twelv/screens/gdpr/bloc/gdpr_state.dart';

class GdprScreen extends StatefulWidget {
  final bool enableBack;

  const GdprScreen({required this.enableBack, Key? key}) : super(key: key);

  @override
  _GdprScreenState createState() => _GdprScreenState();
}

class _GdprScreenState extends State<GdprScreen> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.primaryColor,
        appBar: AppBar(
            leading: widget.enableBack
                ? IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Image.asset(context.theme.backImage.assetName),
                  )
                : null,
            title: Center(
                child: Padding(
              padding:
                  EdgeInsets.only(right: widget.enableBack ? 45 : 0), // ignore: no-magic-number
              child: Image(image: context.theme.logoHeaderImage),
            ))),
        body: BlocListener<GdprBloc, GdprState>(
          listener: (BuildContext context, GdprState state) =>
              manageLoadingView(context, show: state is Loading),
          child: _buildContent(),
        ),
      );

  Widget _buildContent() => SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 25), // ignore: no-magic-number
        child: Column(children: <Widget>[
          AppText(
            Str.of(context).GDPRScreenTitleText,
          ),
          padded(
              AppTextHtmlAction(
                text: Str.of(context).GDPRScreenMainText,
              ),
              top: 25),
          padded(Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => setState(() {
                  _checked = !_checked;
                }),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 10, 15),
                    child: Image(
                      image: _checked ? context.theme.uncheckImage : context.theme.checkImage,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AppTextHtmlAction(
                  text: Str.of(context).GDPRScreenCheckboxText,
                ),
              )
            ],
          )),
          padded(
              AppButtonFilled(
                Str.of(context).GDPRScreenAcceptButtonTitle,
                enabled: _checked,
                onPressed: () =>
                    context.read<GdprBloc>().add(GdprEvent.userDecided(accepted: _checked)),
              ),
              top: 20),
        ]),
      );
}
