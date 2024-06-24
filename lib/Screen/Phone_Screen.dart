import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class PhoneScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController smsController = TextEditingController();
  final RxBool isCodeSent = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Authentication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
        backgroundColor: Colors.blue, // Change the AppBar color here
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => isCodeSent.value
                ? Column(
              children: [
                TextField(
                  controller: smsController,
                  decoration: InputDecoration(
                    labelText: 'SMS Code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    AuthController.instance.signInWithPhoneNumber(
                      smsController.text.trim(),
                    );
                  },
                  child: Text('Sign in with SMS Code'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  ),
                ),
              ],
            )
                : Column(
              children: [
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    AuthController.instance.verifyPhoneNumber(
                      phoneController.text.trim(),
                    );
                    isCodeSent.value = true;
                  },
                  child: Text('Verify Phone Number'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
