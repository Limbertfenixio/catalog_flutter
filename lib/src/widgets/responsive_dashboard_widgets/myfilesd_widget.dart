import 'package:flutter/material.dart';
import 'package:widget_catalog/src/models/responsive_dashboard_models/myfiles.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/colors.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/responsive_util.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/fileinfocardd_widget.dart';

class MyFilesDashboardWidget extends StatelessWidget {
  const MyFilesDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding /
                      (ResponsiveUtilDashboard.isMobile(context) ? 2 : 3),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            )
          ],
        ),
        SizedBox(height: defaultPadding),
        ResponsiveUtilDashboard(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCardDashoardWidget(
        info: demoMyFiles[index],
      ),
    );
  }
}
