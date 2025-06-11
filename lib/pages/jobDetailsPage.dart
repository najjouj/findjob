import 'package:findjob/JobFinderAppUI/models/job_opportunity_model.dart';
import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
  final JobOpportunity job;
  const JobDetailsPage({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_outline,
            ),
          )
        ],
        title: Text(
          "Job Detail",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        border: Border.all()),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        job.img,
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  job.title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  job.company,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Job Description",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    job.jobDescription,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Requirement",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    job.requirement,
                    style: TextStyle(fontSize: 16),
                  ),
                
                   SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    job.education,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.maxFinite,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Apply",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(8)),
              ),
            )
          ],
        ),
      )),
    );
  }
}
