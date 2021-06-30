import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text("Driver Profile", style: TextStyle(color: Colors.black)),
        actions: [
          Container(
            height: 20,
            padding: EdgeInsets.all(12),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Sign Out",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          )
        ],
      ),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileButtons(onEditPressed: () {}, onProfilePressed: () {}),
        LinearProfileUpdateProgres(),
        ProfileInfoText(),
        WidgetForEditProfileShareAndCard(),
        HorizontalScrollWidget(),
        RowWidgetAlignment(),
        EdditPersionalInfoButton(),
        SizedBox(height: 10),
        InputFormWidget()
      ],
    );
  }
}

class EdditPersionalInfoButton extends StatelessWidget {
  const EdditPersionalInfoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Spacer(),
          ButtonWithIcon(
            text: 'Edit This Section',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class InputFormWidget extends StatefulWidget {
  const InputFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  _InputFormWidgetState createState() => _InputFormWidgetState();
}

class _InputFormWidgetState extends State<InputFormWidget> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Form(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Personal Infaormation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              InputWidget(
                controller: name,
                textLabel: "Full Name",
                filled: true,
              ),
              InputWidget(
                controller: name,
                textLabel: "Contac Phone.",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Email Registered",
                filled: true,
              ),
              InputWidget(
                controller: null,
                textLabel: "Residential Location",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "County /City",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Nationality.",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Language Spoken.",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Year Born.",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Gender.",
                filled: false,
              ),
              InputWidget(
                controller: name,
                textLabel: "Marital Status.",
                filled: false,
              ),
              InputWidgetRadiosButtons() /**yyou can pass values from this state to the widget throug constructor arguments */
            ],
          ),
        ),
      ),
    );
  }
}

class InputWidgetRadiosButtons extends StatelessWidget {
  const InputWidgetRadiosButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Text("Do you drink?"),
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      groupValue: 2,
                      value: 1,
                      onChanged: (int? value) {},
                    ),
                    Text("Yes"),
                    Radio(
                      groupValue: 2,
                      value: 2,
                      onChanged: (int? value) {},
                    ),
                    Text("No"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Text("Do you drink?"),
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      groupValue: 2,
                      value: 1,
                      onChanged: (int? value) {},
                    ),
                    Text("Yes"),
                    Radio(
                      groupValue: 2,
                      value: 2,
                      onChanged: (int? value) {},
                    ),
                    Text("No"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.textLabel,
    required this.controller,
    required this.filled,
  }) : super(key: key);

  final String? textLabel;
  final TextEditingController? controller;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textLabel!,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                ),
              ],
            ),
            TextFormField(
              controller: controller,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                focusColor: Colors.grey[200],
                filled: filled,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowWidgetAlignment extends StatelessWidget {
  const RowWidgetAlignment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ListTile(
                    subtitle: Text("You are not live. No timestamp"),
                    title: Text(
                      "Last Seen",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ListTile(
                    subtitle: Text("Unavailabel For Hire."),
                    trailing: Switch(
                      onChanged: (bool val) {},
                      value: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Spacer(),
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ListTile(
                    subtitle: Text("Freeze Profile."),
                    trailing: Switch(
                      onChanged: (bool val) {},
                      value: false,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            Padding(padding: EdgeInsets.all(12)),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            // image: AssetImage(/**image resourse url (network or asset) */),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[200],
            border: Border.all(style: BorderStyle.solid),
          ),
          height: 180,
          width: 120,
        ),
      ),
    );
  }
}

class WidgetForEditProfileShareAndCard extends StatelessWidget {
  const WidgetForEditProfileShareAndCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Spacer(),
                ButtonWithIcon(
                  text: 'Edit This Section',
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 52,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(""),
                Container(
                  width: 200,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            color: Colors.grey[200],
                            height: 20,
                            width: 200,
                            child: Text("" /** update text from state*/),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.phone_android),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.grey[200],
                                height: 20,
                                width: 130,
                                child: Text(
                                    "" /**Add Text Here during update from state*/),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Icon(Icons.share_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  final Function()? onTap;
  final String? text;

  const ButtonWithIcon({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(text!),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.edit),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoText extends StatelessWidget {
  const ProfileInfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(
        "Your profile will be live once it's 100% complete. It will take you about 7 minutes to complete your profile",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}

class LinearProfileUpdateProgres extends StatelessWidget {
  const LinearProfileUpdateProgres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            height: 30,
            child: LinearProgressIndicator(
              minHeight: 20,
              value: 0.2, //this is 20%
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text("20%"),
        )
      ],
    );
  }
}

class ProfileButtons extends StatelessWidget {
  final Function()? onEditPressed;
  final Function()? onProfilePressed;
  const ProfileButtons({
    Key? key,
    required this.onEditPressed,
    required this.onProfilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width / 2.5,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: 45,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.black),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: onEditPressed,
                    child: Text(
                      "Edit Profile.",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: onProfilePressed,
                    child: Text(
                      "View Profile.",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        // backgroundColor:
                        //     MaterialStateProperty.all(Colors.white),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
