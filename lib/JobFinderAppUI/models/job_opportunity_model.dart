class JobOpportunity {
  final String title;
  final String img;
  final String company;

  JobOpportunity({required this.company, required this.title, required this.img});
}


List<JobOpportunity> jobOpportunities = [

 JobOpportunity(company: "Google", title: "Sotware Engineer", img: "https://t3.ftcdn.net/jpg/03/99/98/60/360_F_399986042_9iSLYUNyDv8npaKP31xsIpDVFjfqGLDF.jpg"),
 JobOpportunity(company: "Adobe", title: "UI/UX Designer", img: "https://1000logos.net/wp-content/uploads/2019/06/Adobe-Log.jpg"),
 JobOpportunity(company: "Youtube", title: "Data Scientist", img: "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"),
 JobOpportunity(company: "Microsoft", title: "Graphic Designer", img: "https://i.pinimg.com/originals/d4/ef/15/d4ef15517f04bc0b60023f6a4538ed5d.jpg")
  
      
];
