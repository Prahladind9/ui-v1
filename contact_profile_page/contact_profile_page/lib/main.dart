import 'package:flutter/material.dart';

void main() {
  runApp(ContactProfilePage());
}

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.purple,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.star_border),
                color: Colors.black,
                onPressed: () {
                  print("Contact is starred");
                },
              )
            ],
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Image.network(
                      //Image location - URL
                        "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                        fit: BoxFit.cover),
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rao's Friend",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  dividerGrey(),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCallButton(),
                        buildTextButton(),
                        buildVideoButton(),
                        buildEmailButton(),
                        buildDirectionsButton(),
                        buildPayButton(),
                      ],
                    ),
                  ),
                  dividerGrey(),
                  mobilePhoneListTitle(),
                  dividerGrey(),
                  otherPhoneListTitle(),
                  dividerGrey(),
                  emailListTile(),
                  dividerGrey(),
                  addressListTitle()
                ],
              )
            ],
          )),
    );
  }

  Widget dividerGrey(){
    return Divider(
      color: Colors.grey,
    );
  }

  Widget addressListTitle(){
    return ListTile(
      leading: Icon(Icons.location_on),
      title: Text("122 Sunny St, Virginia"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(Icons.directions),
        color: Colors.indigo.shade800,
        onPressed: (){},
      ),
    );
  }

  Widget emailListTile(){
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("rao@rao.com"),
      subtitle: Text("work"),
    );
  }

  Widget otherPhoneListTitle(){
    return ListTile(
      leading: Text(""),
      title: Text("440-330-2312"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: (){},
      ),
    );
  }

  Widget mobilePhoneListTitle(){
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("220-330-2312"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: (){},
      ),
    );
  }

  Widget buildPayButton(){
    return Column(
      children: [
        IconButton(icon: Icon(Icons.attach_money, color: Colors.indigo.shade800,), onPressed: null),
        Text("Pay"),
      ],
    );
  }


  Widget buildDirectionsButton(){
    return Column(
      children: [
        IconButton(icon: Icon(Icons.directions, color: Colors.indigo.shade800,), onPressed: null),
        Text("Directions"),
      ],
    );
  }

  Widget buildEmailButton(){
    return Column(
      children: [
        IconButton(icon: Icon(Icons.email, color: Colors.indigo.shade800,), onPressed: null),
        Text("Email"),
      ],
    );
  }

  Widget buildVideoButton(){
    return Column(
      children: [
        IconButton(icon: Icon(Icons.video_call, color: Colors.indigo.shade800,), onPressed: null),
        Text("Video"),
      ],
    );
  }

  Widget buildCallButton() {
    return Column(
      children: [
        IconButton(
            icon: Icon(Icons.call, color: Colors.indigo.shade800),
            onPressed: null),
        Text("Call"),
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: [
        IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.indigo.shade800,
            ),
            onPressed: () {}),
        Text("Text"),
      ],
    );
  }
}
