import 'package:findjob/JobFinderAppUI/common/job_items.dart';
import 'package:findjob/JobFinderAppUI/common/search_bar.dart';
import 'package:findjob/JobFinderAppUI/models/job_opportunity_model.dart';
import 'package:flutter/material.dart';

class AllJobPage extends StatelessWidget {
   const AllJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text("See All Jobs",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color:Colors.black
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySearchBar(),
            const SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: jobOpportunities.map((job)=>JobItems(job: job)).toList(),
              ),
            ),
            )
            
          ],
        ),
      ),
    );
  }
}