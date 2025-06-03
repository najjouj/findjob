import 'package:flutter/material.dart';

class CompanyOffer {
  final String logo;
  final String salary;
  final String jobTitle;
  final String location;
  final Color color;
  final List<String> jobTypes;

  CompanyOffer(
      {required this.logo,
      required this.salary,
      required this.jobTitle,
      required this.location,
      required this.color,
      required this.jobTypes});
}


List<CompanyOffer> companyOffer = [
  CompanyOffer(
      logo:
          "https://s.yimg.com/ny/api/res/1.2/.Zl5vT3mzbCYUGI3qKnkkA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTUzOQ--/https://media.zenfs.com/en/creative_bloq_161/f696b13c3908dd44caa59e696e4682b6",
      salary: "\$70k-\$100k",
      jobTitle: "Sotware Engineer",
      location: "Youtube, California",
      color: Colors.blueAccent,
      jobTypes: ["Fulle Time", "Remote"]),
      CompanyOffer(
      logo:
          "https://i.pinimg.com/originals/d4/ef/15/d4ef15517f04bc0b60023f6a4538ed5d.jpg",
      salary: "\$50k-\$90k",
      jobTitle: "Graphic Designer",
      location: "Microsoft, California",
      color: Colors.purpleAccent,
      jobTypes: ["Office", "Remote"]),
      CompanyOffer(
      logo:
          "https://t3.ftcdn.net/jpg/03/99/98/60/360_F_399986042_9iSLYUNyDv8npaKP31xsIpDVFjfqGLDF.jpg",
      salary: "\$100k-\$120k",
      jobTitle: "Product Designer",
      location: "Google, California",
      color: Colors.green,
      jobTypes: ["Office", "Remote"]),
      
];
