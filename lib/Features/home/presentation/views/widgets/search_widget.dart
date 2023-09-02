import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width:MediaQuery.of(context).size.width * 0.700,
      decoration: BoxDecoration(
        color: const Color(0xFFF4F5F9),
        border: Border.all(
          color: const Color(0xFFEFEFEF),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const Spacer(
            flex: 1,
          ),
          const Text('Find for food or restaurant...',
              style: TextStyle(color: Color(0xFF868889), fontSize: 15)),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
