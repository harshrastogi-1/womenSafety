import 'package:flutter/cupertino.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  List images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
  ];

  void sendMessage(String message, List<String> recipient) async {
    String _result =
        await sendSMS(message: message, recipients: recipient, sendDirect: true)
            .catchError(
      (onError) {
        Get.snackbar("Unable to send message right now", "Come back Soon",
            dismissDirection: DismissDirection.horizontal,
            snackPosition: SnackPosition.BOTTOM,
            isDismissible: true,
            margin: const EdgeInsets.all(20));
      },
    );
    print(_result);
  }

  sendSms() async {
    // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    // Position location = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);

    String message =
        'An emergency alert was triggered in  device. Last known location is at';
    List<String> recipient = ['8905678009']; //Emergency Hotline

    sendMessage(message, recipient);
  }
}
