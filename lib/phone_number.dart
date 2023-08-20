import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class Contact_number extends StatefulWidget {
  const Contact_number({super.key});

  @override
  State<Contact_number> createState() => _Contact_numberState();
}

class _Contact_numberState extends State<Contact_number> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(4.0),
          padding: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 218, 209, 209),
            borderRadius: BorderRadius.circular(80.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1.0),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2), // Offset in the (x, y) direction
              ),
            ],
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            maxLines: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Enter mobile number',
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                prefixIcon: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final code = await countryPicker.showPicker(
                                context: context);
                            setState(() {
                              countryCode = code;
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Text(countryCode?.dialCode ?? "+91",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                        )
                      ],
                    ))),
          ),
        )
      ],
    );
  }
}
