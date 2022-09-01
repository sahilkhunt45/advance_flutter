import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool lockval = false;
  bool printval = false;
  bool passwordval = false;

  bool iosLockval = false;
  bool iosPrintval = false;
  bool IosPasswordval = false;

  bool Ios = false;
  @override
  Widget build(BuildContext context) {
    return (Ios == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.red,
              ),
            ),
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                    activeColor: Colors.red,
                    value: Ios,
                    onChanged: (val) {
                      setState(() {
                        Ios = val;
                      });
                    },
                  ),
                ],
                title: const Text("Settings UI"),
                backgroundColor: Colors.red,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Language",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Language"),
                      subtitle: Text("English"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.cloud_queue),
                      title: Text("Environment"),
                      subtitle: Text("Production"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.call),
                      title: Text("Phone number"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Sign out"),
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phonelink_lock),
                      title: const Text("Lock app in background"),
                      trailing: Switch(
                        activeTrackColor: Colors.red,
                        activeColor: Colors.red,
                        value: passwordval,
                        onChanged: (val) {
                          setState(() {
                            passwordval = val;
                          });
                        },
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.fingerprint),
                      title: const Text("Use fingerPrint"),
                      trailing: Switch(
                        activeTrackColor: Colors.red,
                        activeColor: Colors.red,
                        value: printval,
                        onChanged: (val) {
                          setState(() {
                            printval = val;
                          });
                        },
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.lock),
                      title: const Text("Change password"),
                      trailing: Switch(
                        activeTrackColor: Colors.red,
                        activeColor: Colors.red,
                        value: lockval,
                        onChanged: (val) {
                          setState(() {
                            lockval = val;
                          });
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.miscellaneous_services_outlined),
                      title: Text("Term of services"),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.save_as_sharp),
                      title: Text("Open source licenses"),
                    ),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              backgroundColor: Colors.grey.shade300,
              navigationBar: CupertinoNavigationBar(
                trailing: CupertinoSwitch(
                  activeColor: Colors.white,
                  thumbColor: Colors.red,
                  value: Ios,
                  onChanged: (val) {
                    setState(() {
                      Ios = val;
                    });
                  },
                ),
                middle: Text(
                  "Settings UI",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                backgroundColor: Colors.red,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Common",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.language,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Language",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "English",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          const Spacer(),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.cloud_queue,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Environment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Production",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.call,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.logout,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Sign Out",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.phonelink_lock,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Lock app in background",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              CupertinoSwitch(
                                activeColor: Colors.red,
                                value: iosLockval,
                                onChanged: (val) {
                                  setState(() {
                                    iosLockval = val;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.fingerprint,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Use fingerprint",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              CupertinoSwitch(
                                activeColor: Colors.red,
                                value: iosPrintval,
                                onChanged: (val) {
                                  setState(() {
                                    iosPrintval = val;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Change password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              CupertinoSwitch(
                                activeColor: Colors.red,
                                value: IosPasswordval,
                                onChanged: (val) {
                                  setState(() {
                                    IosPasswordval = val;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.miscellaneous_services,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Terms of Service",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.save_as_sharp,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Open source licenses",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
