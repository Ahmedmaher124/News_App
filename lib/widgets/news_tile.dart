// import 'package:flutter/material.dart';
// import 'package:news_app/models/articl_model.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.articleModel});
//   final ArticlModel articleModel;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(
//               articleModel.image!,
//               height: 200,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             )),
//         const SizedBox(
//           height: 12,
//         ),
//         Text(
//           articleModel.title!,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: const TextStyle(
//             color: Colors.black87,
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         Text(
//           articleModel.subTitle ?? "",
//           style: const TextStyle(color: Colors.grey, fontSize: 14),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticlModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Handle null image case by providing a placeholder image or a fallback
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey,
                  child: const Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        // Handle null title case by providing default text
        Text(
          articleModel.title ?? "No title available",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        // Subtitle can also be null, provide a default text
        Text(
          articleModel.subTitle ?? "No subtitle available",
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
