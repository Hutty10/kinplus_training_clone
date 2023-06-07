import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';
import '../widgets/drawer.dart';
import '../widgets/icon_text.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      endDrawer: const CustomDrawer(),
      // drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        centerTitle: false,
        title: const Text(
          'KINPLUS TECHNOLOGIES',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: theme.primaryColor,
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Building Tech Leaders',
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Text(
                    'Our training programs are structured according to industry knowledge experts, creating opportunies for learners, students and youths in our society',
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'Home  ',
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.primaryColor),
                    children: [
                      TextSpan(
                        text: '/  Training',
                        style: theme.textTheme.bodyLarge!
                            .copyWith(color: const Color(0xffc1c1c1)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                ListView.separated(
                  itemCount: courses.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    final course = courses[index];
                    return CourseCard(course: course);
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                )
              ],
            ),
          ),
          Container(
            color: theme.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  height: 60,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Kinplus Technologies is a software development company focused on building scalable applications and software for businesses, corporate organisations, and individuals.',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                Text(
                  'Links',
                  style:
                      theme.textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  'Homepage',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Know more about us',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Our training programs',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Get in touch with us',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Internship programs',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'IT/SIWES program',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                Text(
                  'Address',
                  style:
                      theme.textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
                Text(
                  'Top Floor, 68B Christore Building,\nOpp. Crunchies Restaurant,\nSimiloluwa, Ado Ekiti, Ekiti State, Nigeria.\nEmail: help@kinplusgroup.com\nPhone: +2347069718643, +2348071572767',
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 20),
                const IconText(
                  icon: Icons.wechat,
                  text: 'Whatsapp',
                ),
                const IconText(
                  icon: Icons.facebook,
                  text: 'Facebook',
                ),
                const IconText(
                  icon: Icons.mail,
                  text: 'Email',
                ),
                const IconText(
                  icon: Icons.telegram,
                  text: 'Telegram',
                ),
                const IconText(
                  icon: Icons.flutter_dash,
                  text: 'Twitter',
                ),
                const IconText(
                  icon: Icons.wechat,
                  text: 'LinkedIn',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
