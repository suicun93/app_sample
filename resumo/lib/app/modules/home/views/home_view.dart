import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/const.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: controller.mainView.value,
            ),
            Divider(height: 1),
            _menuIphone(controller),
          ],
        ),
      ),
    );
  }

  Widget _menuIphone(HomeController controller) => Container(
        // height: 90,
        color: primaryColor,
        child: Row(
          children: [
            _iconMenuPhone(
              controller: controller,
              mainView: MainView.HOME,
            ),
            _iconMenuPhone(
              controller: controller,
              mainView: MainView.CAMERA,
            ),
            _iconMenuPhone(
              controller: controller,
              mainView: MainView.YOUTUBE,
            ),
            _iconMenuPhone(
              controller: controller,
              mainView: MainView.GYM,
            ),
            _iconMenuPhone(
              controller: controller,
              mainView: MainView.PERSONAL,
            ),
          ],
        ),
      );

  Widget _iconMenuPhone({
    @required HomeController controller,
    MainView mainView,
  }) {
    bool selected = controller.selectedView.value == mainView;
    return Expanded(
      child: InkWell(
        onTap: () => controller.changeMainView(mainView),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 8),
          child: Container(
            padding: EdgeInsets.only(top: 8),
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color:
                  selected ? Colors.white.withAlpha(100) : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  mapItems[mainView].icon,
                  size: selected ? 23 : 18,
                  color: selected ? Colors.black : Colors.black.withAlpha(80),
                ),
                SizedBox(height: 8.5),
                Text(
                  mapItems[mainView].title,
                  style: TextStyle(
                    fontSize: 11,
                    color: selected ? Colors.black : Colors.black.withAlpha(80),
                    fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Map<MainView, MenuItem> mapItems = {
    MainView.HOME: MenuItem(Icons.attach_money_rounded, 'ホーム'),
    MainView.CAMERA: MenuItem(Icons.mobile_friendly, '撮影'),
    MainView.YOUTUBE: MenuItem(Icons.list_alt_rounded, '作成'),
    MainView.GYM: MenuItem(Icons.supervisor_account_sharp, 'レッスン'),
    MainView.PERSONAL: MenuItem(Icons.settings, 'マイページ'),
  };
}

class MenuItem {
  final IconData icon;
  final String title;

  MenuItem(this.icon, this.title);
}
