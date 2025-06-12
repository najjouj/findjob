import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          
        ],
        title: Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
        
      ),
      body: 
        SafeArea(child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010136.jpg?semt=ais_hybrid",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text("Najia ELOUAER",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Center(
                child: Text("Flutter Developper",style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: .5
                ),),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 // CircularProgressIndicator()
                ],
              )
            ],
          ),
        )),
      
    );
  }
}