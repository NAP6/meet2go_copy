import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meet2go/cofig/Colors.dart';
import 'package:meet2go/models/Event.dart';

class EventGridItem extends ConsumerWidget {
  Event evetn;

  EventGridItem({super.key, required this.evetn});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 75, 76, 76)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            evetn.image,
            width: double.infinity,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Text(evetn.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    overflow: TextOverflow.clip)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
            child: Text(evetn.description,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: AppColors.input_text_grey,
                    fontSize: 13,
                    overflow: TextOverflow.clip)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
            child: Text(evetn.date,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: AppColors.input_text_grey,
                    fontSize: 10,
                    overflow: TextOverflow.clip)),
          ),
        ],
      ),
    );
  }
}
