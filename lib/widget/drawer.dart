import 'package:e_commerce_project/constant/color.dart';
import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/feature/chat/view.dart';
import 'package:e_commerce_project/feature/my_account/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../constant/size.dart';
import '../feature/chart/view.dart';
import '../feature/home/view.dart';
import '../navigate/navigator.dart';
class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.white70,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius:  BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kwhite,
          elevation: 0,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector (
                      behavior: HitTestBehavior.translucent,
                      child: const Icon(
                        Icons.add_alert_rounded,
                        color: Colors.black87,
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(width: 20),
                    GestureDetector (
                      behavior: HitTestBehavior.translucent,
                      child: const Icon(
                        Icons.add_shopping_cart_rounded,
                        color: Colors.black87,
                      ),
                      onTap: () {
                        kpush(context, const ChartScreen());
                        print('vxv');
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
        ),
        body: const Home(),
      ),
      drawer: SafeArea(
        child: Container(
          color: kPrimaryColor,
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 20.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'Image/ali.png',
                  ),
                ),
                Text("Pankaj Patel",style: kstyle(context, 16, kwhite)),
                const SizedBox(height: 5),
                Text("pankaj.patel@yahoo.com",style: kstyle(context, 16, kwhite)),
                const SizedBox(height: 20),

                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                ListTile(
                  onTap: () {
                    kpush(context,const  MyAcoount());
                  },
                  leading: const Icon(Icons.account_circle_rounded),
                  title: const Text('My Account'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.add_shopping_cart_rounded),
                  title: const Text('Chart'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
                ListTile(
                  onTap: () {
                    kpush(context, const ChatScreen());
                  },
                  leading: const Icon(Icons.chat),
                  title: const Text('Chat'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.control_camera_sharp),
                  title: const Text('Upcoming Orders '),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.bookmark_border_outlined ),
                  title: const Text('Offer Zone  '),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}