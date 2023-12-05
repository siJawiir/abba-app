import 'package:flutter/material.dart';
import 'dart:io';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';
import 'package:abba_app/common/widget/my_image.dart';
import 'package:abba_app/utils/constants/image_strings.dart';

class OthersCard extends StatefulWidget {
  const OthersCard({Key? key}) : super(key: key);

  @override
  _OthersCardState createState() => _OthersCardState();
}

class _OthersCardState extends State<OthersCard> {
  @override
  void initState() {
    super.initState();
  }

  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    Future _pickImageFromGallery() async {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        _selectedImage = File(image!.path);
      });
    }

    Future _pickImageFromCamera() async {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      setState(() {
        _selectedImage = File(image!.path);
      });
    }

    return Card(
      elevation: 2,
      color: dark ? MyColors.darkContainer : MyColors.lightContainer,
      child: Padding(
        padding: const EdgeInsets.all(MySizes.spacingMedium),
        child: Form(
          child: Column(
            children: [
              Text(
                MyTexts.reportOthers,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.spacingLarge,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportChronology,
                      alignLabelWithHint: true,
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportNeeds,
                      alignLabelWithHint: true,
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  ),
                  Text(
                    MyTexts.reportNeedDescription,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportNotes,
                      alignLabelWithHint: true,
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  ),
                  Text(
                    MyTexts.reportNoteDescription,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  Text(
                    MyTexts.reportImage,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: _selectedImage != null
                            ? MyZoomableImage(selectedImage: _selectedImage!)
                            : Image.asset(
                                MyImages.images,
                                height: 120.0,
                              ),
                      ),
                      const SizedBox(
                        width: MySizes.spacingMedium,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () => _pickImageFromGallery(),
                            color: MyColors.primary,
                            child: const Icon(
                              Iconsax.image,
                              color: MyColors.light,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () => _pickImageFromCamera(),
                            color: MyColors.primary,
                            child: const Icon(
                              Iconsax.camera,
                              color: MyColors.light,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
