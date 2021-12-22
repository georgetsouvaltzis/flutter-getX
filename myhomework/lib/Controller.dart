import 'package:get/get.dart';

class Controller extends GetxController{
  var imageUrl = "/assets/bunny.png".obs;
  var name = "".obs;

  changeUrl(String url) => imageUrl.value = url;

  changename(String val) => name.value = val;

}