import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Job Description',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
            ),
            subtitle: Text(
              'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
              style: TextStyle(
                  fontSize: 9.sp, color: Color(0xFF4B5563), height: 1.5),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          ListTile(
            title: Text(
              'Skill Required',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
            ),
            subtitle: Text(
              '''* A strong visual portfolio with clear understanding of UI methodologies
* Ability to create hi-fidelity mock-ups in Figma
* Ability to create various graphics for the web e.g. illustrations and icons
* Able to facilitate workshops and liaise with stakeholders
* Proficiency in the Adobe Creative Suite
* Confident communicator with an analytical mindset
* Design library/Design system experience
* 4+ years of commercial experience in UI/Visual Design
                ''',
              style: TextStyle(
                  fontSize: 9.sp, color: Color(0xFF4B5563), height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827)),
                ),
              ),
              // Contact us Text -----------------------------
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          // White Space ----------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 11.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE5E7EB), width: 1),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style:
                      TextStyle(fontSize: 10.sp, color: Color(0xFF9CA3AF)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'twitter@mail.com',
                      style:
                      TextStyle(fontSize: 10.sp, color: Color(0xFF111827)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 11.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFE5E7EB), width: 1),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Website',
                      style:
                      TextStyle(fontSize: 10.sp, color: Color(0xFF9CA3AF)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'https://twitter.com',
                      style:
                      TextStyle(fontSize: 10.sp, color: Color(0xFF111827)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // 2 containers ---------------------------
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                'About Company',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xFF111827),
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              '''Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.
              ''',
              style: TextStyle(
                height: 1.5,
                fontSize: 9.sp,
                color: Color(0xFF4B5563),
              ),
            ),
          )
          // About Company ----------------------------------------------
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? value = 'UI/UX Designer';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '6 Employees for',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'UI/UX Design',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6B7280)),
                  )
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF0D0D4DA),
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 30.w,
                  child: DropdownButton(
                    iconSize: 26,
                    style: TextStyle(fontSize: 9.sp, color: Color(0xFF111827)),
                    icon: Icon(Icons.keyboard_arrow_down),
                    isExpanded: true,
                    underline: Container(),
                    items: ['UI/UX Designer', 'UI/UX', 'art']
                        .map(
                          (e) => DropdownMenuItem(
                        child: Text('$e'),
                        value: e,
                      ),
                    )
                        .toList(),
                    onChanged: (data) {
                      setState(() {
                        value = data;
                      });
                    },
                    value: value,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              height: 5.h,
              thickness: 1.5,
              color: Color(0xFFE5E7EB),
            ),
            itemBuilder: (context, index) => ProfileWidget(),
            itemCount: 6,
          ),
        )
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(
            height: 8.h,
            'assets/images/zoom.png',
            fit: BoxFit.cover,
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dimas Adi Saputro',
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827)),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Senior UI/UX Designer at Twitter',
              style: TextStyle(fontSize: 9.sp, color: Color(0xFF6B7280)),
            ),
          ],
        ),
        Spacer(
          flex: 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Work during',
              style: TextStyle(fontSize: 9.sp, color: Color(0xFF6B7280)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  '5 Years',
                  style: TextStyle(fontSize: 9.sp, color: Color(0xFF3366FF)),
                ),
              ],
            ),
          ],
        ),
        Spacer()
      ],
    );
  }
}
