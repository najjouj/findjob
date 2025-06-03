class JobOpportunity {
  final String title;
  final String img;
  final String company;
  final String jobDescription;
  final String requirement;
  final String education;

  JobOpportunity({ required this.jobDescription,required this.requirement, required this.education, 
      required this.company, required this.title, required this.img});
}

List<JobOpportunity> jobOpportunities = [
  JobOpportunity(
      company: "Google",
      title: "Sotware Engineer",
      education: "Bachelor's degree",
      jobDescription: "Lutron Electronics Co., Inc. is seeking Software Engineers (multiple openings) for its office in Austin, TX to use object-oriented, front-end, and database languages to develop software to solve complex problems and finish projects. ",
      requirement: "Strong understanding of object-oriented design concepts using C++, C#, or JAVA and experience with GUI development, design patterns, database architecture, and network programming.",
      img:
          "https://t3.ftcdn.net/jpg/03/99/98/60/360_F_399986042_9iSLYUNyDv8npaKP31xsIpDVFjfqGLDF.jpg"),
          
  JobOpportunity(
      company: "Adobe",
      title: "UI/UX Designer",
      education: "Bachelor's degree",
      requirement: "Four or more years of relevant experience required, demonstrated through work experience and/or military experience.",
      jobDescription: "Create wireframes, graphic layouts to communicate the functionality and design to stakeholders and developers.",
      img: "https://1000logos.net/wp-content/uploads/2019/06/Adobe-Log.jpg"),
  JobOpportunity(
      company: "Youtube",
      title: "Data Scientist",
      education: "Bachelor's degree",
      requirement: "2+ year in a data science, machine learning engineering, artificial intelligence or equivalent role , or a PhD in a related field",
      jobDescription: "Collaborate with Firm functional departments (e.g., Finance, Talent, Business Development, IT) to analyze data and develop solutions to support operational objectives",
      img:
          "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"),
  JobOpportunity(
      company: "Microsoft",
      title: "Graphic Designer",
      jobDescription: "Creative & Detail-Oriented: Passionate about design and creating brands, with a keen eye for detail. You're able to translate complex ideas into simple, engaging visuals.",
      requirement: "Expert knowledge of Adobe Creative Cloud and Figma.",
      education: "Bachelor's degree",
      img:
          "https://i.pinimg.com/originals/d4/ef/15/d4ef15517f04bc0b60023f6a4538ed5d.jpg"),
          JobOpportunity(
      company: "Google",
      title: "Sotware Engineer",
      education: "Bachelor's degree",
      jobDescription: "Lutron Electronics Co., Inc. is seeking Software Engineers (multiple openings) for its office in Austin, TX to use object-oriented, front-end, and database languages to develop software to solve complex problems and finish projects. ",
      requirement: "Strong understanding of object-oriented design concepts using C++, C#, or JAVA and experience with GUI development, design patterns, database architecture, and network programming.",
      img:
          "https://t3.ftcdn.net/jpg/03/99/98/60/360_F_399986042_9iSLYUNyDv8npaKP31xsIpDVFjfqGLDF.jpg"),
          
  JobOpportunity(
      company: "Adobe",
      title: "UI/UX Designer",
      education: "Bachelor's degree",
      requirement: "Four or more years of relevant experience required, demonstrated through work experience and/or military experience.",
      jobDescription: "Create wireframes, graphic layouts to communicate the functionality and design to stakeholders and developers.",
      img: "https://1000logos.net/wp-content/uploads/2019/06/Adobe-Log.jpg"),
  JobOpportunity(
      company: "Youtube",
      title: "Data Scientist",
      education: "Bachelor's degree",
      requirement: "2+ year in a data science, machine learning engineering, artificial intelligence or equivalent role , or a PhD in a related field",
      jobDescription: "Collaborate with Firm functional departments (e.g., Finance, Talent, Business Development, IT) to analyze data and develop solutions to support operational objectives",
      img:
          "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"),
  JobOpportunity(
      company: "Microsoft",
      title: "Graphic Designer",
      jobDescription: "Creative & Detail-Oriented: Passionate about design and creating brands, with a keen eye for detail. You're able to translate complex ideas into simple, engaging visuals.",
      requirement: "Expert knowledge of Adobe Creative Cloud and Figma.",
      education: "Bachelor's degree",
      img:
          "https://i.pinimg.com/originals/d4/ef/15/d4ef15517f04bc0b60023f6a4538ed5d.jpg")
];
