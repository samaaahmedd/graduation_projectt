
import 'package:flutter/material.dart';
import 'package:with_me/tourist_request/tourist_request.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5661f1),
      appBar: AppBar(centerTitle: true,title: const Text('Requests' , style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return
              GestureDetector(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TouristRequest(),));
              },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
            children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("Sahar Ahmed", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("22/12/2005" , style: TextStyle(fontSize: 16),)],

          ),
                ),
              );
        },
      ),
    );
  }
}
