import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({
    super.key,
    required this.searchController,
    this.width = 67.5,
  });

  final TextEditingController searchController;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.sp),
      ),
      width: width.w,
      child: TextField(
        controller: searchController,
        cursorColor: Theme.of(context).primaryColor,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            hintText: "Cari Rumah Impianmu...",
            hintStyle: TextStyle(fontSize: 15.sp),
            suffixIcon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 40,
              minHeight: 40,
            ),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 4.w),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20.sp),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20.sp),
            )),
      ),
    );
  }
}
