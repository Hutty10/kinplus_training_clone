import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:developer';

class RegistrationDialog extends StatefulWidget {
  const RegistrationDialog({super.key, required this.courseTitle});
  final String courseTitle;

  @override
  State<RegistrationDialog> createState() => _RegistrationDialogState();
}

class _RegistrationDialogState extends State<RegistrationDialog> {
  late TextEditingController _nameController,
      _emailController,
      _dobController,
      _numberController,
      _religionController,
      _genderController,
      _addressController,
      _trackController,
      _packagecontroller;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _dobController = TextEditingController();
    _numberController = TextEditingController();
    _religionController = TextEditingController();
    _genderController = TextEditingController();
    _addressController = TextEditingController();
    _trackController = TextEditingController(text: widget.courseTitle);
    _packagecontroller = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    _numberController.dispose();
    _religionController.dispose();
    _genderController.dispose();
    _addressController.dispose();
    _trackController.dispose();
    _packagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Dialog(
        insetPadding: const EdgeInsets.all(30),
        child: SizedBox(
          height: size.height - 200,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: const Icon(Icons.close),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Registration',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Full Name*'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email*'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _dobController,
                decoration: const InputDecoration(labelText: 'Date of Birth*'),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now());
                  if (pickedDate != null) {
                    log(pickedDate.toString());
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    log(formattedDate);

                    setState(() {
                      _dobController.text = formattedDate;
                    });
                  } else {
                    log("Date is not selected");
                  }
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _numberController,
                decoration: const InputDecoration(labelText: 'Mobile Number*'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _religionController,
                decoration: const InputDecoration(labelText: 'Religion*'),
                readOnly: true,
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DialogButton(
                            onTap: () {
                              _religionController.text = 'Christinity';
                              Navigator.of(context).pop();
                            },
                            text: 'Christinity\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _religionController.text = 'Islam';
                              Navigator.of(context).pop();
                            },
                            text: 'Islam\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _religionController.text = 'Traditional';
                              Navigator.of(context).pop();
                            },
                            text: 'Traditional\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _religionController.text = 'Others';
                              Navigator.of(context).pop();
                            },
                            text: 'Others\n',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _genderController,
                decoration: const InputDecoration(labelText: 'Gender*'),
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DialogButton(
                            onTap: () {
                              _genderController.text = 'Male';
                              Navigator.of(context).pop();
                            },
                            text: 'Male\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _genderController.text = 'Female';
                              Navigator.of(context).pop();
                            },
                            text: 'Female\n',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                readOnly: true,
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Address*'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _trackController,
                decoration: const InputDecoration(labelText: 'Track*'),
                readOnly: true,
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _packagecontroller,
                decoration: const InputDecoration(labelText: 'Package*'),
                readOnly: true,
                onTap: () => showDialog<void>(
                  context: context,
                  builder: (_) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DialogButton(
                            onTap: () {
                              _packagecontroller.text = '0 - 1 month';
                              Navigator.of(context).pop();
                            },
                            text: '0 - 1 month\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _packagecontroller.text = '2 - 3 months';
                              Navigator.of(context).pop();
                            },
                            text: '2 - 3 months\n',
                          ),
                          DialogButton(
                            onTap: () {
                              _packagecontroller.text = '4 - 6 months';
                              Navigator.of(context).pop();
                            },
                            text: '4 - 6 months',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text('* indicates required field'),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('CLOSE'),
                  ),
                  const SizedBox(width: 30),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text('Submit'),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 30,
        child: Text(text),
      ),
    );
  }
}
