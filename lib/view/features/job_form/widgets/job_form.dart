// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ubs/model/form_model.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/core/custom_button.dart';
import 'package:ubs/view/core/custom_textformfield.dart';
import 'package:ubs/view_model/cubits/form/apply_form_cubit.dart';

import '../../../constants/data.dart';

class JobForm extends StatefulWidget {
  const JobForm({super.key});
  static const List<String> options = [
    'Mobile App',
    'Local Recruitment',
    'Web Site',
  ];

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  final formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var companyController = TextEditingController();
  var mailController = TextEditingController();
  var numberController = TextEditingController();
  var messageController = TextEditingController();

  String? selectedOption = JobForm.options.first;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.3),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Name must be not empty!!';
                  } else if (!RegExp(DataValidations.validationName)
                      .hasMatch(value.trim())) {
                    return 'Name is not valid!';
                  } else {
                    return null;
                  }
                },
                controller: nameController,
                labelText: "* Your Name",
                radius: 8,
                color: AppTheme.white),
            CustomTextFormField(
                controller: companyController,
                labelText: "Company Name",
                radius: 8,
                color: AppTheme.white),
            CustomTextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Email must be not empty!!';
                  } else if (!RegExp(DataValidations.validationEmail)
                      .hasMatch(value.trim())) {
                    return 'Email is not valid!';
                  } else {
                    return null;
                  }
                },
                controller: mailController,
                labelText: "* Your email",
                radius: 8,
                color: AppTheme.white),
            CustomTextFormField(
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Phone number must be not empty!!';
                  } else if (!RegExp(DataValidations.validationPhone)
                      .hasMatch(value.trim())) {
                    return 'Phone number is not valid!';
                  } else {
                    return null;
                  }
                },
                controller: numberController,
                labelText: "* Mobile Number",
                radius: 8,
                color: AppTheme.white),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth * 0.367,
              height: screenHeight * 0.08,
              decoration: BoxDecoration(
                color: AppTheme.white, // Divider color
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(8),
                  dropdownColor: AppTheme.white,
                  value: selectedOption,
                  items: JobForm.options
                      .map((option) => DropdownMenuItem(
                            value: option,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                option,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: AppTheme.primary,
                                    ),
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selectedOption = value;
                      });
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomTextFormField(
              controller: messageController,
              labelText: "Your Message",
              lines: 5,
              radius: 8,
              color: AppTheme.white,
            ),
            SizedBox(height: screenHeight * 0.1),
            CustomButton(
                onPressed: () async {
                  if (formKey.currentState?.validate() == true) {
                    debugPrint("INN");
                    setState(() async {
                      debugPrint(messageController.text);
                      debugPrint(nameController.text);
                      debugPrint(mailController.text);
                      debugPrint(numberController.text.toString());
                      debugPrint(companyController.text);
                      debugPrint(selectedOption);

                      await context.read<ApplyFormCubit>().applyForm(FormModel(
                          name: nameController.text,
                          phoneNumber: numberController.text.toString(),
                          userMessage: messageController.text,
                          email: mailController.text,
                          service: selectedOption,
                          companyName: companyController.text));
                      // Clear the text fields
                      messageController.clear();
                      nameController.clear();
                      mailController.clear();
                      numberController.clear();
                      companyController.clear();
                    });
                  }
                },
                text: "Apply",
                color: AppTheme.primary,
                radius: 8,
                height: screenHeight * 0.08,
                width: screenWidth * 0.2,
                textColor: AppTheme.white)
          ],
        ),
      ),
    );
  }
}
