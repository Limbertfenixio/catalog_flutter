import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/src/provider.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/colors.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/responsive_util.dart';
import 'package:widget_catalog/src/providers/responsive_admin_dashboard/menu_dashboard_provider.dart';

class HeaderDashboardWidget extends StatelessWidget {
  const HeaderDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Si la pantalla pertenece a una tablet o a un movil mostramos el menu hamburguesa
        if (!ResponsiveUtilDashboard.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuProvider>().controlMenu,
          ),
        // SI la pantalla es de un desktop o table mostramos el titulo
        if (!ResponsiveUtilDashboard.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!ResponsiveUtilDashboard.isMobile(context))
          Spacer(flex: ResponsiveUtilDashboard.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 30,
          ),
          if (!ResponsiveUtilDashboard.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                "Angelina Jolie",
                style: TextStyle(color: Colors.white),
              ),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
