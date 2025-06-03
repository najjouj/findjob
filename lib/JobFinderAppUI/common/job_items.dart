
import 'package:findjob/JobFinderAppUI/models/job_opportunity_model.dart';
import 'package:flutter/material.dart';

class JobItems extends StatelessWidget {
  final JobOpportunity job;
  const JobItems( {super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7, top: 7),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.network(job.img,height: 40,width: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15
                    ),
                    child: Text(job.title,style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15
                    ),
                    child: Text(job.company,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),),
                  )
                ],
              )
              ],
            
              
              
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert,size: 30,),
          )
        ],
      ),
    );
  }
}
