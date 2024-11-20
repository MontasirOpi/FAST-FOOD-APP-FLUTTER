import 'package:flutter/material.dart';

class promoApplyWidget extends StatelessWidget {
  const promoApplyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       children: [
          Expanded(
           child: TextField(
           decoration: InputDecoration(
             border: const OutlineInputBorder(),
             hintText: 'Apply promo',
             suffixIcon: TextButton(onPressed: (){},
              child:const Text('Apply',style: TextStyle(
               color: Colors.red,
              ),) ),
           ),
           ),
         ),
        // TextButton(onPressed: (){}, child: Text('Apply'))
       ],
                      ),
    );
  }
}