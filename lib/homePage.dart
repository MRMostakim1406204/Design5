import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

String?DropdownValue;
String?dropDownValu;
bool isSelectedValue =false;
bool isSelectedvalue =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Add New Address",style: TextStyle(
                  fontSize: 20,color: Colors.black
                ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh9eh4TgduV3YBi5ExniaQGAcK1bVLTvq_J4o92ddkUZxGav-Fanra3YtzH2blItaTZwU&usqp=CAU",fit: BoxFit.fill),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Address",labelStyle: TextStyle(
                    fontSize: 22,color: Colors.black
                  ),
                  hintText: "Enter home/office address",hintStyle: TextStyle(
                    fontSize: 15,color: Colors.black
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DropdownButton(
                style: TextStyle(
                  fontSize: 18,color: Colors.black
                ),
                iconDisabledColor: Colors.blue,
                elevation: 10,
                hint: Text("City",style: TextStyle(
                  fontSize: 20,color: Colors.black
                ),),
                icon: Icon(Icons.keyboard_arrow_down),
                value: DropdownValue,
                isExpanded: true,
                items: [
                DropdownMenuItem(child: Text("Dhaka"),value: "Dhaka",),
                DropdownMenuItem(child: Text("Rajshahi"),value: "Rajshahi",),
                DropdownMenuItem(child: Text("Khulna"),value: "Khulna",),
                DropdownMenuItem(child: Text("Barishal"),value: "Barishal",),
                DropdownMenuItem(child: Text("Pabna"),value: "Pabna",),
                DropdownMenuItem(child: Text("Bogura"),value: "Bogura",),
                DropdownMenuItem(child: Text("Joypurhat"),value: "Joypurhat",),
                DropdownMenuItem(child: Text("Dinajpur"),value: "Dinajpur",),
                DropdownMenuItem(child: Text("Chittagong"),value: "Chittagong",),
                DropdownMenuItem(child: Text("Cumillah"),value: "Cumillah",),
                DropdownMenuItem(child: Text("Gazipur"),value: "Gazipur",),
                DropdownMenuItem(child: Text("Naogaon"),value: "Naogaon",),
                DropdownMenuItem(child: Text("Natore"),value: "Natore",),
                DropdownMenuItem(child: Text("Tangail"),value: "Tangail",),
                DropdownMenuItem(child: Text("Sonamganj"),value: "Sonamganj",),
                DropdownMenuItem(child: Text("Rangpur"),value: "Rangpur",),
                DropdownMenuItem(child: Text("Cox Bazar"),value: "Cox Bazar",),
                DropdownMenuItem(child: Text("Feni"),value: "Feni",),
              ],
               onChanged: (String?value){
                setState(() {
                  DropdownValue =value!;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DropdownButton(
                style: TextStyle(
                  fontSize: 18,color: Colors.black
                ),
                iconDisabledColor: Colors.blue,
                elevation: 10,
                hint: Text("Country",style: TextStyle(
                  fontSize: 20,color: Colors.black
                ),),
                icon: Icon(Icons.keyboard_arrow_down),
                value: dropDownValu,
                isExpanded: true,
                items: [
                DropdownMenuItem(child: Text("Afghanistan"),value: "Afghanistan",),
                DropdownMenuItem(child: Text("Albania"),value: "Albania",),
                DropdownMenuItem(child: Text("Algeria"),value: "Algeria",),
                DropdownMenuItem(child: Text("Argentina"),value: "Argentina",),
                DropdownMenuItem(child: Text("Australia"),value: "Australia",),
                DropdownMenuItem(child: Text("Bangladesh"),value: "Bangladesh",),
                DropdownMenuItem(child: Text("Belgium"),value: "Belgium",),
                DropdownMenuItem(child: Text("Bhutan"),value: "Bhutan",),
                DropdownMenuItem(child: Text("Brazil"),value: "Brazil",),
                DropdownMenuItem(child: Text("China"),value: "China",),
                DropdownMenuItem(child: Text("Colombia"),value: "Colombia",),
                DropdownMenuItem(child: Text("Denmark"),value: "Denmark",),
                DropdownMenuItem(child: Text("France"),value: "France",),
                DropdownMenuItem(child: Text("Germany"),value: "Germany",),
                DropdownMenuItem(child: Text("India"),value: "India",),
                DropdownMenuItem(child: Text("Iran"),value: "Iran",),
                DropdownMenuItem(child: Text("Iraq"),value: "Iraq",),
                DropdownMenuItem(child: Text("Italy"),value: "Italy",),
                DropdownMenuItem(child: Text("Japan"),value: "Japan",),
                DropdownMenuItem(child: Text("Jordan"),value: "Jordan",),
                DropdownMenuItem(child: Text("Kuwait"),value: "Kuwait",),
                DropdownMenuItem(child: Text("Kenya"),value: "Kenya",),
                DropdownMenuItem(child: Text("Lebanon"),value: "Lebanon",),
                DropdownMenuItem(child: Text("Libya"),value: "Libya",),
                DropdownMenuItem(child: Text("Malaysia"),value: "Malaysia",),
                DropdownMenuItem(child: Text("Mexico"),value: "Mexico",),
                DropdownMenuItem(child: Text("Nepal"),value: "Nepal",),
                DropdownMenuItem(child: Text("Netherlands"),value: "Netherlands",),
                DropdownMenuItem(child: Text("New Zealand"),value: "New Zealand",),
                DropdownMenuItem(child: Text("Pakistan"),value: "Pakistan",),
      
              ],
               onChanged: (String?value){
                setState(() {
                  dropDownValu =value!;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Zip Code",labelStyle: TextStyle(
                    fontSize: 22,color: Colors.black
                  ),
                  hintText: "Enter Zip Code",hintStyle: TextStyle(
                    fontSize: 15,color: Colors.black
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 130,),
                Checkbox(
              value: isSelectedValue, onChanged: (bool?value){
                setState(() {
                  isSelectedValue = value!;
                });
              }),
              Text("Home",style: TextStyle(
                fontSize: 18,color: Colors.black
              ),),
              SizedBox(width: 80,),
              Checkbox(
              value: isSelectedvalue, onChanged: (bool?value){
                setState(() {
                  isSelectedvalue = value!;
                });
              }),
              Text("Office",style: TextStyle(
                fontSize: 18,color: Colors.black
              ),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              onPressed: (){},
             child: Text("Cancel",style: TextStyle(
                fontSize: 20,color: Colors.white
              ),)),
              SizedBox(width: 100,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              onPressed: (){},
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Continue",style: TextStyle(
                    fontSize: 20,color: Colors.white
                  ),),
                  Icon(Icons.arrow_forward,color: Colors.white,)
               ],
             ))
              ],
            ),
             SizedBox(height:30) 
          ],
        ),
      ),
    );
  }
}