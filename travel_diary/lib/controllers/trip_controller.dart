import 'package:get/get.dart';

class TripController extends GetxController {
  RxString location = "".obs;
  RxString state = "".obs;
  RxInt amount = (-1).obs;
  RxInt intake = (-1).obs;
  RxString date = "".obs;
  RxInt days = (-1).obs;
}
