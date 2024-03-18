import 'dart:ffi';

import '''
package:flutter/material.dart''';
import 'package:flutter_sms_inbox/flutter_sms_inbox.dart';
// import 'package:newapp/pages/homepage.dart';
import 'package:permission_handler/permission_handler.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final SmsQuery _query = SmsQuery();
  List<SmsMessage> _message = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read SMS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inbox'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: _message.isNotEmpty
              ? _MessagesListView(
                  messages: _message,
                )
              : Center(
                  child: Text(
                    'no massagess',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var permission = await Permission.sms.status;
            if (permission.isGranted) {
              final message = await _query.querySms(
                kinds: [SmsQueryKind.inbox, SmsQueryKind.sent],
                address: 'MPESA',
              );
              setState(() => _message = message);
            } else {
              await Permission.sms.request();
            }
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

class _MessagesListView extends StatelessWidget {
  final List<SmsMessage> messages;
  const _MessagesListView({required this.messages});
  // final var _sent;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          var message = messages[index];
          String? mess = message.body;
          print(extractSpecificPart(mess!, 'Ksh'));

          return ListTile(
            title: Text('${message.sender} [${message.date}]'),
            subtitle: Text('${message.body}'),
          );
        });
  }
}

String extractSpecificPart(String message, String keyword) {
  // Search for the keyword in the message
  int startIndex = message.indexOf(keyword);

  if (startIndex != -1) {
    // Keyword found, extract the desired part
    startIndex += keyword.length; // Move to the end of the keyword
    int endIndex = startIndex + 6;
    String extractedPart = message.substring(startIndex, endIndex).trim();
    return extractedPart;
  } else {
    // Keyword not found, return a default value or handle accordingly
    return 'Keyword not found in the message';
  }
}