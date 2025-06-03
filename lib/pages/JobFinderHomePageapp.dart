import 'package:findjob/JobFinderAppUI/common/job_items.dart';
import 'package:findjob/JobFinderAppUI/common/search_bar.dart';
import 'package:findjob/JobFinderAppUI/models/company_offer.dart';
import 'package:findjob/JobFinderAppUI/models/job_category_model.dart';
import 'package:findjob/JobFinderAppUI/models/job_opportunity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class JobFinderHomePageapp extends StatelessWidget {
  const JobFinderHomePageapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: false,
        leading: IconButton(onPressed: () {}, icon: Icon(Iconsax.menu5)),
        title: Text(
          "Find a Perfect Job",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileSection(),
                  //for search bar
                  MySearchBar(),
                  //for category items
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: jobCategories
                          .map((categories) => Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffF8F5F5),
                                          Color(0xffEEE8F3)
                                        ]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    categories.title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Company Offer",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 190,
                    margin: EdgeInsets.only(top: 10,left: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: companyOffer
                          .map((job) => buildPopularCompaniesList(job))
                          .toList(),
                    ),
                  )
                  

                  ,
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Job Oppurtunity",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    height: 225,
                    margin: EdgeInsets.only(left: 15,right: 15,top: 5),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: jobOpportunities
                          .map((job) => JobItems(job:job))
                          .toList(),
                    ),
                  )
               
               
               
                ]),
          )),
    );
  }

  Widget buildPopularCompaniesList(CompanyOffer job) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: job.color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(job.logo,height: 40,),
              SizedBox(height: 10,),
              Text(job.jobTitle,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
              Text(job.location,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 15
              ),),
              SizedBox(height: 10,),
              Row(
                children: job.jobTypes.map((type)=>Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15
                  ),
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Text(type),
                )).toList(),
              )
            ],
          ),
          ),
          Positioned(
            right: 1,
            bottom: 1,
            top: 1,
            child: Container(
            margin:EdgeInsets.only(
              top: 30,right: 20
            ),
            child: Text(job.salary,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17
            ),
          )))
          
        ],
      ),
    );
  }

  GestureDetector ProfileSection() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.grey.shade400)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    "https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010136.jpg?semt=ais_hybrid",
                    height: 60,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Najia Elouaer",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Flutter Developper",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ],
              ),
              const Spacer(),
              SvgPicture.asset("assets/jobfinder/ic_message.svg"),
              const SizedBox(
                width: 15,
              )
            ]),
      ),
    );
  }
}
