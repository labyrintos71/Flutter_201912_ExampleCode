import 'package:flutter/material.dart';
import 'package:examplecopy/CodeScreen.dart';
import 'package:examplecopy/screens/ComingSoon.dart';
import 'package:examplecopy/screens/WebViewWidget.dart';
import 'package:examplecopy/screens/absorb_pointer.dart';
import 'package:examplecopy/screens/align.dart';
import 'package:examplecopy/screens/animated_builder.dart';
import 'package:examplecopy/screens/animated_container.dart';
import 'package:examplecopy/screens/animated_list.dart';
import 'package:examplecopy/screens/animated_opacity.dart';
import 'package:examplecopy/screens/backdrop_filter.dart';
import 'package:examplecopy/screens/clip_r_rect.dart';
import 'package:examplecopy/screens/constrained_box.dart';
import 'package:examplecopy/screens/container.dart';
import 'package:examplecopy/screens/custom_paint.dart';
import 'package:examplecopy/screens/dismissible.dart';
import 'package:examplecopy/screens/draggable.dart';
import 'package:examplecopy/screens/expanded.dart';
import 'package:examplecopy/screens/fade_in_image.dart';
import 'package:examplecopy/screens/fade_transition.dart';
import 'package:examplecopy/screens/fitted_box.dart';
import 'package:examplecopy/screens/flexible.dart';
import 'package:examplecopy/screens/floating_action_button.dart';
import 'package:examplecopy/screens/fractionally_sizedbox.dart';
import 'package:examplecopy/screens/future_builder.dart';
import 'package:examplecopy/screens/hero.dart';
import 'package:examplecopy/screens/hero2.dart';
import 'package:examplecopy/screens/home_page.dart';
import 'package:examplecopy/screens/inherited_model.dart';
import 'package:examplecopy/screens/layout_builder.dart';
import 'package:examplecopy/screens/list_tile.dart';
import 'package:examplecopy/screens/list_view.dart';
import 'package:examplecopy/screens/media_query.dart';
import 'package:examplecopy/screens/opacity.dart';
import 'package:examplecopy/screens/page_view.dart';
import 'package:examplecopy/screens/positioned.dart';
import 'package:examplecopy/screens/safe_area.dart';
import 'package:examplecopy/screens/selectable_text.dart';
import 'package:examplecopy/screens/semantics_widget.dart';
import 'package:examplecopy/screens/sized_box.dart';
import 'package:examplecopy/screens/sliver_app_bar.dart';
import 'package:examplecopy/screens/sliver_grid.dart';
import 'package:examplecopy/screens/sliver_list.dart';
import 'package:examplecopy/screens/spacer.dart';
import 'package:examplecopy/screens/stack_widget.dart';
import 'package:examplecopy/screens/stream_builder.dart';
import 'package:examplecopy/screens/table.dart';
import 'package:examplecopy/screens/tooltip.dart';
import 'package:examplecopy/screens/transform.dart';
import 'package:examplecopy/screens/value_listenable_builder.dart';
import 'package:examplecopy/screens/wrap.dart';
import 'package:examplecopy/screens/inherited_widget.dart';
import 'package:examplecopy/screens/animated_icon.dart';
import 'package:examplecopy/screens/aspect_ratio.dart';
import 'package:examplecopy/screens/limited_box.dart';
import 'package:examplecopy/screens/placeholder.dart';
import 'package:examplecopy/screens/rich_text.dart';
import 'package:examplecopy/screens/reorderable_listiew.dart';
import 'package:examplecopy/screens/animated_switcher.dart';
import 'package:examplecopy/screens/animated_positioned.dart';
import 'package:examplecopy/screens/animated_padding.dart';
import 'package:examplecopy/utils.dart';

import 'VideoView.dart';
import 'screens/indexed_stack.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: Utils.appName,
    theme: ThemeData(
      primaryColor: Colors.white,
      fontFamily: Utils.ubuntuFont,
      canvasColor: Colors.white,
      accentColor: Colors.white,

      ///For tooltip
      brightness: Brightness.light,
      backgroundColor: Colors.black87,
      primaryTextTheme: TextTheme(
        body1: TextStyle(color: Colors.white),
      ),

      ///For slider label
      accentTextTheme: TextTheme(
        body2:
            TextStyle(color: Colors.white, backgroundColor: Colors.lightBlue),
      ),
    ),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: HomePage(),

    // initialRoute: Utils.notFoundRoute,

    //all the app routes are listed here
    routes: <String, WidgetBuilder>{
      Utils.codeRoute: (BuildContext context) => CodeScreen(code: ""),
      Utils.videoView: (BuildContext context) => VideoView(
            videoUrl: "",
            title: "",
          ),
      Utils.webView: (BuildContext context) => WebViewWidget(url: ""),
      Utils.homeRoute: (BuildContext context) => HomePage(),
      Utils.safeArea: (BuildContext context) => SafeAreaWidget(),
      Utils.expanded: (BuildContext context) => ExpandedWidget(),
      Utils.wrap: (BuildContext context) => WrapWidget(),
      Utils.animatedContainer: (BuildContext context) =>
          AnimatedContainerWidget(),
      Utils.opacity: (BuildContext context) => OpacityWidget(),
      Utils.futureBuilder: (BuildContext context) => FutureBuilderWidget(),
      Utils.fadeTransition: (BuildContext context) => FadeTransitionWidget(),
      Utils.floatingActionButton: (BuildContext context) =>
          FloatingActionButtonWidget(),
      Utils.pageView: (BuildContext context) => PageViewWidget(),
      Utils.table: (BuildContext context) => TableWidget(),
      Utils.sliverAppBar: (BuildContext context) => SliverAppBarWidget(),
      Utils.sliverList: (BuildContext context) => SliverListWidget(),
      Utils.sliverGrid: (BuildContext context) => SliverGridWidget(),
      Utils.fadeInImage: (BuildContext context) => FadeInImageWidget(),
      Utils.streamBuilder: (BuildContext context) => StreamBuilderWidget(),
      Utils.inheritedModel: (BuildContext context) => InheritedModelWidget(),
      Utils.clipRRect: (BuildContext context) => ClipRRectWidget(),
      Utils.hero: (BuildContext context) => HeroWidget(),
      Utils.hero2: (BuildContext context) => Hero2Widget(),
      Utils.customPaint: (BuildContext context) => CustomPaintWidget(),
      Utils.tooltip: (BuildContext context) => TooltipWidget(),
      Utils.fittedBox: (BuildContext context) => FittedBoxWidget(),
      Utils.layoutBuilder: (BuildContext context) => LayoutBuilderWidget(),
      Utils.absorbPointer: (BuildContext context) => AbsorbPointerWidget(),
      Utils.transform: (BuildContext context) => TransformWidget(),
      Utils.backDropFilter: (BuildContext context) => BackdropFilterWidget(),
      Utils.align: (BuildContext context) => AlignWidget(),
      Utils.positioned: (BuildContext context) => PositionedWidget(),
      Utils.animatedBuilder: (BuildContext context) => AnimatedBuilderWidget(),
      Utils.dismissible: (BuildContext context) => DismissibleWidget(),
      Utils.sizedBox: (BuildContext context) => SizedBoxWidget(),
      Utils.valueListenableBuilder: (BuildContext context) =>
          ValueListenableBuilderWidget(),
      Utils.draggable: (BuildContext context) => DraggableWidget(),
      Utils.animatedList: (BuildContext context) => AnimatedListWidget(),
      Utils.flexible: (BuildContext context) => FlexibleWidget(),
      Utils.mediaQuery: (BuildContext context) => MediaQueryWidget(),
      Utils.spacer: (BuildContext context) => SpacerWidget(),
      Utils.inheritedWidget: (BuildContext context) => InheritedWidgett(),
      Utils.animatedIcon: (BuildContext context) => AnimatedIconWidget(),
      Utils.aspectRatio: (BuildContext context) => AspectRatioWidget(),
      Utils.limitedBox: (BuildContext context) => LimitedBoxWidget(),
      Utils.placeholder: (BuildContext context) => PlaceholderWidget(),
      Utils.richText: (BuildContext context) => RichTextWidget(),
      Utils.reorderableListView: (BuildContext context) => ReorderableListViewWidget(),
      Utils.animatedSwitcher: (BuildContext context) => AnimatedSwitcherWidget(),
      Utils.animatedPositioned: (BuildContext context) => AnimatedPositionedWidget(),
      Utils.animatedPadding: (BuildContext context) => AnimatedPaddingWidget(),
      Utils.indexedStack: (BuildContext context) => IndexedStackWidget(),
      Utils.semantics: (BuildContext context) => SemanticsWidget(),
      Utils.constrainedBox: (BuildContext context) => ConstrainedBoxWidget(),
      Utils.stack: (BuildContext context) => StackWidget(),
      Utils.animatedOpacity: (BuildContext context) => AnimatedOpacityWidget(),
      Utils.fractionallySizedBox: (BuildContext context) => FractionallySizedBoxWidget(),
      Utils.listView: (BuildContext context) => ListViewWidget(),
      Utils.listTile: (BuildContext context) => ListTileWidget(),
      Utils.container: (BuildContext context) => ContainerWidget(),
      Utils.selectableText: (BuildContext context) => SelectableTextWidget(),
      Utils.dataTable: (BuildContext context) => ComingSoon(),
      Utils.slider: (BuildContext context) => ComingSoon(),
      Utils.alertDialog: (BuildContext context) => ComingSoon(),
      Utils.animatedCrossFade: (BuildContext context) => ComingSoon(),
      Utils.draggableScrollableSheet: (BuildContext context) => ComingSoon()
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
