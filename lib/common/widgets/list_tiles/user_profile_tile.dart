import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flu_ecom/utils/constants/colors.dart';
import 'package:flu_ecom/utils/constants/image_strings.dart';
import 'package:flu_ecom/common/widgets/images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text('Lakshya Goyal', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text('lakshya@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}
