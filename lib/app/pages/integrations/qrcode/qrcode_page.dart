import 'package:flutify/app/pages/integrations/qrcode/qrcode_scanner_page.dart';
import 'package:flutify/app/pages/integrations/qrcode/qrcode_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  TextEditingController _textEditingController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QrCodes'),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
            onPressed: () => Get.to(QrCodeScannerPage()),
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _textEditingController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'input value required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "your data",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Get.to(
                          QrCodeViewPage(
                              data: _textEditingController.value.text),
                        );
                      }
                    },
                    child: Text("Generate"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
