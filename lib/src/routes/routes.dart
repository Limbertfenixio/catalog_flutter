import 'package:flutter/material.dart';
import 'package:widget_catalog/src/pages/catalog/alert_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/animatedbuilder_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/animatedcontainer_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/animatedicon_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/animatedopacity_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/animationspackages_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/fadeinimage_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/fadetransition_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/hero2_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/hero_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/home_animations_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/rotatetransition_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/scaletransition_page.dart';
import 'package:widget_catalog/src/pages/catalog/animation_pages/transform_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/backdrop_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/basic_appbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/bottom_appbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/convex_appbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/home_appbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/appbar_pages/search_appbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/async_pages/home_async_page.dart';
import 'package:widget_catalog/src/pages/catalog/async_pages/stream_builder_page.dart';
import 'package:widget_catalog/src/pages/catalog/avatar_page.dart';
import 'package:widget_catalog/src/pages/catalog/bottomsheet_page.dart';
import 'package:widget_catalog/src/pages/catalog/buttons_page.dart';
import 'package:widget_catalog/src/pages/catalog/clipper_pages/clip_path_page.dart';
import 'package:widget_catalog/src/pages/catalog/clipper_pages/custom_painter_page.dart';
import 'package:widget_catalog/src/pages/catalog/clipper_pages/home_clipper_page.dart';
import 'package:widget_catalog/src/pages/catalog/drawer_menu_pages/drawer_simple_page.dart';
import 'package:widget_catalog/src/pages/catalog/drawer_menu_pages/home_drawer_menu_page.dart';
import 'package:widget_catalog/src/pages/catalog/form_page.dart';
import 'package:widget_catalog/src/pages/catalog/gestures_pages/absorb_pointer_page.dart';
import 'package:widget_catalog/src/pages/catalog/gestures_pages/home_gestures_page.dart';
import 'package:widget_catalog/src/pages/catalog/image_pages/home_image_page.dart';
import 'package:widget_catalog/src/pages/catalog/image_pages/image_filtered_page.dart';
import 'package:widget_catalog/src/pages/catalog/image_pages/image_page.dart';
import 'package:widget_catalog/src/pages/catalog/information_pages/home_information_pages.dart';
import 'package:widget_catalog/src/pages/catalog/information_pages/tooltip_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/align_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/container_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/contrainbox_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/expanded_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/fittedbox_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/flex_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/flexible_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/fractionallybox_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/home_layout_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/intrinsic_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/material_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/positioned_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/rowcolumn_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/safearea_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/sizedbox_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/slivers_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/spacer_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/stack_page.dart';
import 'package:widget_catalog/src/pages/catalog/layout_pages/wrap_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/dismissible_list_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/expansion_tile_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/home_list_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/list_wheel_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/listview_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/reorder_list_page.dart';
import 'package:widget_catalog/src/pages/catalog/lists_pages/slidable_list_page.dart';
import 'package:widget_catalog/src/pages/catalog/pageview_pages/home_pageview_page.dart';
import 'package:widget_catalog/src/pages/catalog/pageview_pages/pv_simple_page.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/layout_builder_page.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/layout_package_page.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/responsive_main_page.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/responsive_package_page.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/responsive_sizer_package.dart';
import 'package:widget_catalog/src/pages/catalog/responsive_pages/screen_util_package_page.dart';
import 'package:widget_catalog/src/pages/catalog/table_pages/datatable_page.dart';
import 'package:widget_catalog/src/pages/catalog/table_pages/home_table_page.dart';
import 'package:widget_catalog/src/pages/catalog/table_pages/simple_table_page.dart';
import 'package:widget_catalog/src/pages/catalog/tabs_pages/bottom_navigation_page.dart';
import 'package:widget_catalog/src/pages/catalog/tabs_pages/bottom_tabbar_page.dart';
import 'package:widget_catalog/src/pages/catalog/tabs_pages/home_tabs_page.dart';
import 'package:widget_catalog/src/pages/catalog/tabs_pages/page_selector_page.dart';
import 'package:widget_catalog/src/pages/catalog/tabs_pages/tab_simple_page.dart';
import 'package:widget_catalog/src/pages/catalog/text_pages/home_text_pages.dart';
import 'package:widget_catalog/src/pages/catalog/text_pages/richtext_page.dart';
import 'package:widget_catalog/src/pages/catalog/text_pages/textstandard_page.dart';
import 'package:widget_catalog/src/pages/home_page.dart';
import 'package:widget_catalog/src/pages/integrations/bloc_pages/bloc_main.dart';
import 'package:widget_catalog/src/pages/integrations/bloc_pages/bloc_page2.dart';
import 'package:widget_catalog/src/pages/integrations/getx_pages/getX_main_page.dart';
import 'package:widget_catalog/src/pages/integrations/google_maps_pages/goole_maps_page.dart';
import 'package:widget_catalog/src/pages/integrations/inherited_pages/inherited_page.dart';
import 'package:widget_catalog/src/pages/integrations/preview_html_pages/preview_html_main_page.dart';
import 'package:widget_catalog/src/pages/integrations/provider_pages/provider_main_page.dart';
import 'package:widget_catalog/src/pages/integrations/riverpood_pages/riverpood_page.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/main_responsive_dashboard_page.dart';
import 'package:widget_catalog/src/widgets/card_page.dart';

final routes = <String, WidgetBuilder>{
  // Catalog Routes
  '/': (BuildContext context) => HomePage(),
  '/avatar': (BuildContext context) => const AvatarPage(),
  '/alert': (BuildContext context) => AlertPage(),
  '/bottom-sheet': (BuildContext context) => BottomSheetPage(),
  '/buttons': (BuildContext context) => const ButtonsPage(),
  '/card': (BuildContext context) => CardPage(),
  '/forms': (BuildContext context) => FormPage(),
  '/drawer-menu': (BuildContext context) => const HomeDrawerMenuPage(),
  '/drawer-simple': (BuildContext context) => const DrawerSimplePage(),

  /* Animations routes */
  '/animations': (BuildContext context) => const HomeAnimationsPage(),
  '/animated-container': (BuildContext context) =>
      const AnimatedContainerPage(),
  '/animated-icon': (BuildContext context) => const AnimatedIconPage(),
  '/animated-opacity': (BuildContext context) => const AnimatedOpacityPage(),
  '/fade-transition': (BuildContext context) => FadeTransitionPage(),
  '/rotate-transition': (BuildContext context) => const RotateTransitionPage(),
  '/scale-transition': (BuildContext context) => const ScaleTransitionPage(),
  '/fade-image': (BuildContext context) => const FadeInImagePage(),
  '/animated-builder': (BuildContext context) => AnimatedBuilderPage(),
  '/transform': (BuildContext context) => const TransformPage(),
  '/hero': (BuildContext context) => const HeroPage(),
  '/hero-second': (BuildContext context) => const HeroSecondPage(),
  '/animations-packages': (BuildContext context) =>
      const AnimationsPackagesPage(),

  /* Layouts routes  */
  '/layouts': (BuildContext context) => const HomeLayoutPage(),
  '/row-column': (BuildContext context) => const RowAndColumnPage(),
  '/intrinsic': (BuildContext context) => const IntrinsicPage(),
  '/stack': (BuildContext context) => const StackPage(),
  '/positioned': (BuildContext context) => const PositionedPage(),
  '/expanded': (BuildContext context) => const ExpandedPage(),
  '/constrained': (BuildContext context) => const ConstrainBoxPage(),
  '/align': (BuildContext context) => const AlignPage(),
  '/container': (BuildContext context) => const ContainerPage(),
  '/material': (BuildContext context) => const MaterialLayoutPage(),
  '/slivers': (BuildContext context) => const SliversLayoutPage(),
  '/sizedbox': (BuildContext context) => const SizedBoxPage(),
  '/safearea': (BuildContext context) => const SafeareaPage(),
  '/flexible': (BuildContext context) => const FlexiblePage(),
  '/spacer': (BuildContext context) => const SpacerPage(),
  '/fractionally-box': (BuildContext context) => const FractionallyBoxPage(),
  '/wrap': (BuildContext context) => const WrapPage(),
  '/flex': (BuildContext context) => const FlexPage(),
  '/fitted-box': (BuildContext context) => const FittedBoxPage(),

  /* Text Routes */
  '/text': (BuildContext context) => const HomeTextPage(),
  '/rich-text': (BuildContext context) => const RichTextPage(),
  '/text-standard': (BuildContext context) => const TextStandardPage(),

  /* Responsive routes */
  '/layout-builder': (BuildContext context) => const LayoutBuilderPage(),
  '/responsive': (BuildContext context) => const ResponsiveMainPage(),
  '/screen-util': (BuildContext context) => const ScreenUtilPackagePage(),
  '/responsive-sizer': (BuildContext context) =>
      const ResponsiveSizerPackagePage(),
  '/responsive-package': (BuildContext context) =>
      const ResponsivePackagePage(),
  '/layout-package': (BuildContext context) => const LayoutPackagePage(),

  /* PageView routes */
  '/page-view': (BuildContext context) => const HomePageViewPage(),
  '/pv-simple': (BuildContext context) => const PageViewSimplePage(),

  /* Tables routes */
  '/tables': (BuildContext context) => const HomeTablePage(),
  '/table-simple': (BuildContext context) => const SimpleTablePage(),
  '/data-table': (BuildContext context) => const DataTablePage(),

  /* Async routes */
  '/async': (BuildContext context) => const HomeAsyncPage(),
  '/stream-builder': (BuildContext context) => const StreamBuilderPage(),

  /* Clippers routes */
  '/clippers': (BuildContext context) => const HomeClippersPage(),
  '/clip-path': (BuildContext context) => const ClipPathPage(),
  '/custom-painter': (BuildContext context) => const CustomPainterPage(),

  /* Display Information routes */
  '/information': (BuildContext context) => const HomeDisplayInformationPage(),
  '/tooltip': (BuildContext context) => const TooltipPage(),

  /* Gestures routes */
  '/gestures': (BuildContext context) => const HomeGesturesPage(),
  '/absorb-pointer': (BuildContext context) => const AbsorbPointerPage(),

  /* Images routes */
  '/images': (BuildContext context) => const HomeImagePage(),
  '/image-filtered': (BuildContext context) => const ImageFilteredPage(),
  '/image': (BuildContext context) => const ImagePage(),

  /* Lists routes */
  '/lists': (BuildContext context) => const HomeListPage(),
  '/dismissible': (BuildContext context) => const DismissibleListPage(),
  '/expansion-tile': (BuildContext context) => const ExpansionTilePage(),
  '/list-view': (BuildContext context) => const ListViewPage(),
  '/reorder-list': (BuildContext context) => const ReorderListPage(),
  '/list-wheel': (BuildContext context) => const ListWheelPage(),
  '/slidable-list': (BuildContext context) => const SlidableListPage(),

  /* AppBar routes */
  '/app-bar': (BuildContext context) => const HomeAppBarPage(),
  '/basic-appbar': (BuildContext context) => const BasicAppBarPage(),
  '/bottom-appbar': (BuildContext context) => const BottomAppBarPage(),
  '/search-appbar': (BuildContext context) => const SearchAppBarPage(),
  '/backdrop': (BuildContext context) => const BackdropPage(),
  '/convex-appbar': (BuildContext context) => ConvexAppBarPage(),

  /* Tabs routes */
  '/tabs-home': (BuildContext context) => const HomeTabsPage(),
  '/tabs-simple': (BuildContext context) => const TabSimplePage(),
  '/bottom-tab': (BuildContext context) => const BottomTabBarPage(),
  '/bottom-navigation': (BuildContext context) => BottomNavigationBarPage(),
  '/page-selector': (BuildContext context) => const PageSelectorPage(),

  // Integration Routes
  '/inherited-widget': (context) => const InheritPage(),
  '/bloc-state': (context) => const BlocMainPage(),
  '/bloc-secondpage': (context) => const BlocSecondPage(),
  '/provider': (context) => const ProviderMainPage(),
  '/getx': (context) => const GetxMainPage(),
  '/riverpood': (context) => const RiverPoodPage(),
  '/preview-html': (context) => const PreviewHtmlPage(),
  '/google-maps': (context) => const GoogleMapsPage(),
  // Screens Routes
  '/responsive-dashboard': (context) => const ResponsiveDashboardMainPage(),
};
