import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../light_modal_bottom_sheet.dart' as light_modal_bottom_sheet;

const Radius kDefaultBarTopRadius = Radius.circular(28);

class BarBottomSheet extends StatelessWidget {
  final Widget child;
  final Widget? control;
  final Clip? clipBehavior;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final SystemUiOverlayStyle? overlayStyle;

  const BarBottomSheet({
    super.key,
    required this.child,
    this.control,
    this.clipBehavior,
    this.shape,
    this.backgroundColor,
    this.elevation,
    this.overlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle ?? SystemUiOverlayStyle.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 22),
          SafeArea(
            bottom: false,
            child:
                control ??
                Container(
                  height: 4,
                  width: 32,
                  decoration: BoxDecoration(color: colorScheme.onSurfaceVariant, borderRadius: BorderRadius.circular(2)),
                ),
          ),
          const SizedBox(height: 22),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Material(
              shape:
                  shape ??
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: kDefaultBarTopRadius, topRight: kDefaultBarTopRadius),
                  ),
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              color: backgroundColor ?? colorScheme.surfaceContainerLow,
              elevation: elevation ?? 1,
              child: SizedBox(
                width: double.infinity,
                child: MediaQuery.removePadding(context: context, removeTop: true, child: child),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<T?> showBarModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  bool bounce = true,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? topControl,
  Duration? duration,
  RouteSettings? settings,
  SystemUiOverlayStyle? overlayStyle,
  double? closeProgressThreshold,
}) async {
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));
  final result = await Navigator.of(context, rootNavigator: useRootNavigator).push(
    light_modal_bottom_sheet.ModalSheetRoute<T>(
      builder: builder,
      bounce: bounce,
      closeProgressThreshold: closeProgressThreshold,
      containerBuilder: (_, _, child) => BarBottomSheet(
        control: topControl,
        clipBehavior: clipBehavior,
        shape: shape,
        backgroundColor: backgroundColor,
        elevation: elevation,
        overlayStyle: overlayStyle,
        child: child,
      ),
      secondAnimationController: secondAnimation,
      expanded: expand,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      isDismissible: isDismissible,
      modalBarrierColor: barrierColor,
      enableDrag: enableDrag,
      animationCurve: animationCurve,
      duration: duration,
      settings: settings,
    ),
  );
  return result;
}
