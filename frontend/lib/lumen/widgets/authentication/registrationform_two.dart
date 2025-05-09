import 'package:flutter/material.dart';

class RegistrationformTwo extends StatefulWidget {
  const RegistrationformTwo({super.key});

  @override
  State<RegistrationformTwo> createState() => _RegistrationformTwo();
}

class _RegistrationformTwo extends State<RegistrationformTwo> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        birthdateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;

          return SizedBox(
            width: width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/others/temporarylogo.png',
                          height: 80,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'A gallery of light and time.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      controller: birthdateController,
                      decoration: const InputDecoration(
                        labelText: 'Birthdate',
                        border: OutlineInputBorder(),
                        hintText: 'Select your birthdate',
                        prefixIcon: Icon(
                          Icons.calendar_today,
                          color: Color.fromARGB(255, 57, 153, 107),
                        ),
                      ),
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Color.fromARGB(255, 57, 153, 107),
                        ),
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                        hintText: 'Create your custom username',
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        final name = birthdateController.text.trim();
                        if (name.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please Enter your birthdate'),
                            ),
                          );
                          return;
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Continue with birthdate'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 57, 153, 107),
                        minimumSize: const Size(double.infinity, 50),
                        textStyle: const TextStyle(fontSize: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Create my account',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
