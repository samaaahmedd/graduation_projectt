import 'package:flutter/material.dart';
import 'package:with_me/details_request_pages/details_request.dart';

import '../common/custom_widgets/custom_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff5661f1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Text("Sama , ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ),
                  const Text("female",style: TextStyle(fontSize: 15, ) ),

                ],
              ),
              const SizedBox(height: 12,),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    size: 21,
                  ),

                  SizedBox(
                    width: 5,
                  ),
                  Text( 'Egypt/cairo' ,style: TextStyle(fontSize: 15),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  Icon(
                    Icons.phone,
                    size: 21,
                  ),

                  SizedBox(
                    width: 5,
                  ),

                  Text( '01225555200' ,style: TextStyle(fontSize: 15),),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider (thickness: 1,color: Colors.white,
              ),
              const SizedBox(height: 5,),
              const Text("Tourguide" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              const Divider(thickness: 1,color: Colors.white,),
              const SizedBox(height: 12,),
              const Text("About Me" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10,),
              const Text("Hello, my name's sama" ,style: TextStyle(fontSize: 15),),

              const Divider (thickness: 1,color: Colors.white,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailsRequest(),));

                },
                text: "Send Request",
              ),

            ],

          ),
        ),
      ),
    );
  }
}
