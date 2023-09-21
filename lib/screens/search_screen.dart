import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff233D78),
                Color(0xff172d77),
                Color(0xff83C8EF),
                Color(0xffC6EAFA),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Enter Your City',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8,left: 8),
                child: TextField(

                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  style: const TextStyle(fontSize: 35),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter the city',
                    hintStyle: const TextStyle(fontSize: 25,fontWeight:FontWeight.w400),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.black, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(right: 14),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 45,
                      ),
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
