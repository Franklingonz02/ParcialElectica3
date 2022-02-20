import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 5),
              child: const CircleAvatar(                
                child: Text('FG'),
              ),
            )
          ],
        ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/736x/5a/36/a1/5a36a11aee712c8452ae989ab425827d.jpg'),fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: Form(
              child: Column(
                children: [
                  

                  Padding(
                    padding: const EdgeInsets.all(55.0),
                    child: const CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/65/PNG/128/users_12820.png'),
                    ),
                  ),
        Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                           Flexible(
                           child:
                           
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextFormField(
                                   keyboardType: TextInputType.text,
                                   // ignore: prefer_const_constructors
                                   decoration: InputDecoration(
                                     hintText: 'Nombre',
                                     labelText: 'Nombre',
                                     prefixIcon: Icon(Icons.account_box_sharp),
                                   ),
                  ),
                           ),


                                           ),
                  // ignore: unnecessary_new
                  new Flexible(
                        child:
                       
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Apellido',
                    labelText: 'Apellido',
                    prefixIcon: Icon(Icons.account_box_sharp)
                  ),
                  ),
                        ),
                            ),


                ],//widget
              ),//row



                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.account_box_sharp)
                    ),
                  ),


                  
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Dirección',
                      labelText: 'Dirección',
                      prefixIcon: Icon(Icons.account_box_sharp)
                      
                      
                    ),
                  ),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock)
                    ),
                  ),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock)
                    ),
                  ),

                   ElevatedButton(
                     onPressed: () {  },
                     child: const SizedBox(
                       width: double.infinity,
                       child: Center(child: const Text('Guardar'))
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent
                      ), 
                    ),

                     ElevatedButton(
                     onPressed: () {  },
                     child: const SizedBox(
                       width: double.infinity,
                       child: Center(child: const Text('Cancelar'))
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent
                      ), 
                    )
            
                ],
              ),
            )
          ),
        ),
      )
      ),
    );
  }
}