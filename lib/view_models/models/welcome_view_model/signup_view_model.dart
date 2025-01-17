import 'dart:convert';
import 'dart:io';

import 'package:cocoon/res/constants/imports.dart';

import '../../../utils/mixins/image_picker_mixin.dart';
import '../../../widgets/image_option.dart';

class SignUpViewModel extends GetxController with
    ImagePickerMixin{
  var base64Image;
  File? imgFile;
  String? imgUrl;


  void setImageFile() async {
    bool? isCamera = await ImageOption.show(Get.context!);
    if (isCamera != null) {
      imgFile = await pickImage(isCamera: isCamera);
      update();
      if (imgFile != null) {
        print('${imgFile!.path}         OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO');

        // Read the file as bytes
      //  var imageBytes = await imgFile!.readAsBytes();

        // // Encode the bytes to base64
        // base64Image = base64Encode(imageBytes);
        // print(base64Image);

        // Upload the file

      }
    }
  }

}