class Course {
  final String title;
  final String description;
  final String image;
  final String monthOne;
  final String monthTwo;
  final String monthThree;

  Course({
    required this.title,
    required this.description,
    required this.image,
    required this.monthOne,
    required this.monthTwo,
    required this.monthThree,
  });
}

final List<Course> courses = [
  Course(
    title: 'SOFTWARE DEVELOPMENT',
    description:
        'Looking forward to become a developer, transit into a career in tech or simply boost your career path, we offer Software develoment Programs across the three tracks: Front-End, Back-End and FullStack.',
    image: 'assets/images/software.png',
    monthOne: '30,000',
    monthTwo: '60,000',
    monthThree: '110,000',
  ),
  Course(
    title: 'UI/UX DESIGN',
    description:
        'A magnificent UI goes beyond capturing the user’s attention, creating outstanding UX, and building the business brand.Choose a career path in ui/ux design to become a professional Product designer using our training guidelines',
    image: 'assets/images/ux.jpg',
    monthOne: '25,000',
    monthTwo: '55,000',
    monthThree: '100,000',
  ),
  Course(
    title: 'GRAPHICS DESIGN',
    description:
        'To better understand the meaning of graphic design, it is important to be aware of the elements and principles that make up design. Elements are used in conjunction or opposition with each other to create visually striking and impactful designs.',
    image: 'assets/images/graphics.png',
    monthOne: '25,000',
    monthTwo: '50,000',
    monthThree: '90,000',
  ),
  Course(
    title: 'PROJECT MANAGEMENT',
    description:
        'Our Outlines include Project Management Techniques, Data Handling and Decision Making, Project Analytics and Quality Management. At the end of this programme You will be able to develop your confidence in managing a team and executing projects of all sizes.',
    image: 'assets/images/project.png',
    monthOne: '30,000',
    monthTwo: '60,000',
    monthThree: '110,000',
  ),
  Course(
    title: 'HARDWARE MAINTANCE & REPAIR',
    description:
        'Dive your way into learning how to identifying, troubleshooting and resolving problems and issues in a faulty computer.',
    image: 'assets/images/hardware.png',
    monthOne: '20,000',
    monthTwo: '50,000',
    monthThree: '90,000',
  ),
  Course(
    title: 'DATA SCIENCE/ANALYSIS',
    description:
        'LTo better understand the meaning of Data Science/Analysis”, it describes a series of techniques aimed at extracting relevant and valuable information from extensive and diverse sets of data gathered from different sources and varying in sizes. Apply to get started.',
    image: 'assets/images/data.png',
    monthOne: '30,000',
    monthTwo: '60,000',
    monthThree: '110,000',
  ),
  Course(
    title: 'IoT AND IT AUTOMATION',
    description:
        'Learn your way into technologies designed to facilitate the user’s life, automating specific processes, allowing remote control, simplifying plant management, and generally optimizing the management of the environment.',
    image: 'assets/images/automation.jpg',
    monthOne: '30,000',
    monthTwo: '60,000',
    monthThree: '100,000',
  ),
  Course(
    title: 'CSYBER SECURITY',
    description:
        'Learn and understand how to use technologies, processes and controls to protect computers, servers, devices, electronic systems, networks, programs and data from malicious cyber attacks.',
    image: 'assets/images/security.png',
    monthOne: '30,000',
    monthTwo: '60,000',
    monthThree: '110,000',
  ),
];
