import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';
import 'dart:io';

class ProfileView extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Be Vietnam Pro', // Change to your desired font family
            fontSize: 24, // Change the font size
            fontWeight: FontWeight.bold, // Set the font weight (e.g., bold)
            color: Colors.black, // Change the text color
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icon for the back button
          onPressed: () {
            // Navigate back to the previous screen
            Get.back();
          },
        ),
        backgroundColor: const Color(0xFFA9D6EB), // Change AppBar background color
      ),
      body: Container(
        color: const Color(0xFFA9D6EB),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // CircleAvatar
                  Obx(() => CircleAvatar(
                        radius: 120,
                        backgroundImage: controller.profileImage.isNotEmpty
                            ? FileImage(File(controller.profileImage.value))
                            : const AssetImage('assets/default_profile.png')
                                as ImageProvider,

                                
                      )),
                  // Icon on top of CircleAvatar
                  
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.pickImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF151855), // Change button background color
                  foregroundColor: Colors.white, // Change button text color
                ),
                child: Text(
                  'Pick Image from Gallery',
                  style: TextStyle(fontFamily: 'Be Vietnam pro', fontSize: 20), ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.resetImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF151855), // Change reset button background color
                  foregroundColor:
                      Colors.white, // Change reset button text color
                ),
                child: Text('Reset Profile Image',style: TextStyle(fontFamily: 'Be Vietnam pro', fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
