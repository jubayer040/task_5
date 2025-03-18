import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/myimage.dart';

class CmSearchField extends StatelessWidget {
  const CmSearchField({
    super.key,
    required this.controller,
    this.hintText = "Search Contacts",
    this.onSearch,
    this.icon = MyImage.searchIconImg,
  });
  final TextEditingController controller;
  final String hintText;
  final Function? onSearch;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        autofocus: false,
        textInputAction: TextInputAction.search,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Image.asset(icon),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          fillColor: MyColor.ashhLight,
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: MyColor.inActiveColor, width: 0.3),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: MyColor.inActiveColor, width: 0.3),
          ),
        ),
        onSubmitted: (val) {
          if (onSearch != null) onSearch!();
        },
      
        // onSearch == null
        //     ? const SizedBox()
        //     : ElevatedButton(
        //         onPressed: () => onSearch!(),
        //         style: ElevatedButton.styleFrom(
        //           padding: const EdgeInsets.all(0),
        //           shape: ContinuousRectangleBorder(
        //             borderRadius: BorderRadius.circular(24),
        //           ),
        //         ),
        //         child: const Icon(CupertinoIcons.search, color: Colors.white),
        //       ),
      ),
    );
  }
}
