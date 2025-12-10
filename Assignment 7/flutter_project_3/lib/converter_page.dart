import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController semesterController = TextEditingController();

  String name = "";
  int? id;
  String dept = "";
  String semester = "";
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Info"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 380,
          child: Card(
            color: const Color.fromARGB(255, 131, 184, 245),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorText: errorText,
                      hintText: "Enter your name",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: idController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      errorText: errorText,
                      hintText: "Enter your ID",
                      labelText: "ID",
                      prefixIcon: Icon(Icons.badge),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: deptController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorText: errorText,
                      hintText: "Enter your department",
                      labelText: "Department",
                      prefixIcon: Icon(Icons.school),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: semesterController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      errorText: errorText,
                      hintText: "Enter your semester",
                      labelText: "Semester",
                      prefixIcon: Icon(Icons.timeline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        errorText = null;
                        if (nameController.text.isEmpty ||
                            idController.text.isEmpty ||
                            deptController.text.isEmpty ||
                            semesterController.text.isEmpty) {
                          errorText = "Field is empty";
                        } else {
                          name = nameController.text;
                          id = int.tryParse(idController.text);
                          dept = deptController.text;
                          semester = semesterController.text;
                        }
                      });
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 16),
                  Text("Name    : $name"),
                  Text("ID      : $id"),
                  Text("Dept    : $dept"),
                  Text("Semester: $semester"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
