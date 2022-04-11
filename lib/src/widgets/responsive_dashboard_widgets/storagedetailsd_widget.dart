import 'package:flutter/material.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/colors.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/chartd_widget.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/storageinfocard_widget.dart';

class StorageDetailsDashboardWidget extends StatelessWidget {
  const StorageDetailsDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          ChartDashboardWidget(),
          SizedBox(height: defaultPadding),
          StorageInfoCardDashboardWidget(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCardDashboardWidget(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCardDashboardWidget(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCardDashboardWidget(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
