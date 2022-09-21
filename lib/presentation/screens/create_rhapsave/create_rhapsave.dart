import 'package:flutter/material.dart';
import '../../core/assets.dart';
import '../../core/dimens.dart';
import '../../widgets/profile_header.dart';
import 'modal.dart';

class CreateRhapsaveScreen extends StatelessWidget {
  const CreateRhapsaveScreen({Key? key}) : super(key: key);

  static const _items = [
    {
      'icon': Icons.security_outlined,
      'title': 'Security',
    },
    {
      'icon': Icons.credit_card_outlined,
      'title': 'Cards',
    },
    {
      'icon': Icons.notifications_outlined,
      'title': 'Notifications',
    },
    {
      'icon': Icons.support_agent,
      'title': 'Live Support',
    },
    {
      'icon': Icons.info_outline,
      'title': 'About Us',
    },
    {
      'icon': Icons.contact_phone_outlined,
      'title': 'Contact Us',
    },
    {
      'icon': Icons.credit_card_off_outlined,
      'title': 'Terms & Privacy Policy',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.appBackground),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Create Rhapsave",
          style: theme.textTheme.bodyText1,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _addRhapsave(context),
            icon: const Icon(
              Icons.add_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [],
        ),
      ),
    );
  }

  _addRhapsave(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (_) {
        return const CreateRhapsaveModal();
      },
    );
  }
}
