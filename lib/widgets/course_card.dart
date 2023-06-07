import 'package:flutter/material.dart';

import '../models/course.dart';
import './dialog.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({
    super.key,
    required this.course,
  });
  final Course course;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  String courseTitle = '';
  Future<void> _dialogBuilder(BuildContext context, String courseTitle) =>
      showDialog<void>(
        context: context,
        builder: (context) => RegistrationDialog(courseTitle: courseTitle),
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset(
                widget.course.image,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.course.title,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  widget.course.description,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Pricing',
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: const Color(0xff2780F0)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '0 - 1 month: NGN ${widget.course.monthOne}',
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: const Color.fromRGBO(226, 53, 62, 1),
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '2 - 3 months: NGN ${widget.course.monthTwo}',
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: const Color.fromRGBO(226, 53, 62, 1),
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '4 - 6 months: NGN ${widget.course.monthThree}',
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: const Color.fromRGBO(226, 53, 62, 1),
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      courseTitle = widget.course.title;
                    });
                    _dialogBuilder(context, courseTitle);
                  },
                  child: const Text('APPLY NOW'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
