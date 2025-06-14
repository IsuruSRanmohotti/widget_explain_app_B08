import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Widget Explain App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Text Widget'),
              Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text('Icon Widget'),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              SizedBox(height: 20),
              Text('Image Widget'),
              Image.network(
                'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              // Image(
              //   image: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&height=900&width=1600&fit=bounds'),
              //   width: 200,
              //   height: 200,
              //   fit: BoxFit.cover,
              // ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/flower.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text('Row'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.green),
                  Icon(Icons.search, size: 50, color: Colors.blue),
                  Icon(Icons.favorite, size: 50, color: Colors.red),
                ],
              ),
              SizedBox(height: 20),
              Text('Container'),
              SizedBox(height: 40),
              Container(
                width: 300,
                height: 300,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/flower.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 5, color: Colors.red),

                  gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade900],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text('Text Button'),
              TextButton(
                onPressed: () {
                  //Anonymous function
                  print('Pressed');
                },
                child: Text('Save to my board'),
              ),
              Text('Icon Button'),
              IconButton(
                onPressed: () {
                  print('Icon Button Pressed');
                },
                onLongPress: () {
                  print('Long Press');
                },
                icon: Icon(Icons.add_a_photo_rounded),
              ),
              Text('Filled Button'),
              FilledButton(
                onPressed: () {
                  print('filled button');
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                ),

                child: Text('Save'),
              ),
              Text('Elevated Button'),
              ElevatedButton(onPressed: () {}, child: Text('Save Files')),
              SizedBox(height: 30),

              Text('Custom Button'),

              SizedBox(height: 10),
              InkWell(
                onDoubleTap: () {
                  print('double tapped');
                },
                onTap: () {
                  print('tapped');
                },
                onTapCancel: () {
                  print('cancelled');
                },
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber.shade700,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  print('Tapped');
                },
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Signin',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Chip & Padding'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
                    child: Chip(
                      label: Text('Adventure'),
                      deleteIcon: Icon(Icons.delete),
                      onDeleted: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(label: Text('Drama'), avatar: CircleAvatar()),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Circle Avatar'),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/147/147140.png',
                ),
              ),
              SizedBox(height: 20,),

              SizedBox(height: 500),
            ],
          ),
        ),
      ),
    );
  }
}
