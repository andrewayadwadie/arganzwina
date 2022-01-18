import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/search/search_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeFormWidget extends StatelessWidget {
   HomeFormWidget({Key? key}) : super(key: key);
 final _formKey = GlobalKey<FormState>();
 String searchWord='' ;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 18,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      child: Form(
        key: _formKey,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter search keyWrod'.tr;
            }
            return null;
          },
          onSaved: (value)=> searchWord =value!,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
            suffixIcon: InkWell(
              onTap: (){
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Get.to(SearchViewScreen(word: searchWord, catName: searchWord));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor, borderRadius: BorderRadius.circular(12)),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
