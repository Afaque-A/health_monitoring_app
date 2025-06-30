import 'package:health_monitoring_app/const/const.dart';

Widget infoTile(String title, String subtitle) {
    return ListTile(
      leading: const Icon(Icons.info),
      title: title.text.bold.make(),
      subtitle: subtitle.text.sm.gray600.make(),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    );
  }