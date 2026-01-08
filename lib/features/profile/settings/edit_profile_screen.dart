// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:testabd/core/theme/app_images.dart';
//
// class EditProfileScreen extends StatelessWidget {
//   const EditProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const _View();
//   }
// }
//
// class _View extends StatefulWidget {
//   const _View({super.key});
//
//   @override
//   State<_View> createState() => _ViewState();
// }
//
// class _ViewState extends State<_View> {
//   late final TextEditingController _nameTextController;
//   late final TextEditingController _lastnameTextController;
//   late final TextEditingController _emailTextController;
//   late final TextEditingController _phoneNumberTextController;
//   late final TextEditingController _bioTextController;
//
//   @override
//   void initState() {
//     _nameTextController = TextEditingController();
//     _lastnameTextController = TextEditingController();
//     _emailTextController = TextEditingController(
//       text: "devmaverick8@gmail.com",
//     );
//     _phoneNumberTextController = TextEditingController();
//     _bioTextController = TextEditingController();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: const Text("Profilni tahrirlash"),
//         centerTitle: true,
//       ),
//
//       // 🔽 SAVE BUTTON AT THE BOTTOM
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SizedBox(
//             height: 52,
//             child: ElevatedButton(
//               onPressed: () {
//                 // TODO: Save profile changes
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: const Text(
//                 "O‘zgarishlarni saqlash",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               ),
//             ),
//           ),
//         ),
//       ),
//
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _ProfileImagePicker(),
//
//             const SizedBox(height: 24),
//
//             _InputField(
//               label: "Ism",
//               hint: "Ismingizni kiriting",
//               controller: _nameTextController,
//             ),
//             _InputField(
//               label: "Familiya",
//               hint: "Familiyangizni kiriting",
//               controller: _lastnameTextController,
//             ),
//             _InputField(
//               label: "Email",
//               enabled: false,
//               controller: _emailTextController,
//             ),
//             _InputField(
//               label: "Telefon raqami",
//               hint: "+998 xx xxx xx xx",
//               controller: _phoneNumberTextController,
//             ),
//             _InputField(
//               label: "Bio",
//               hint: "O‘zingiz haqingizda ma’lumot bering...",
//               maxLines: 4,
//               controller: _bioTextController,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class _ProfileImagePicker extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         children: [
//           ClipOval(
//             child: CachedNetworkImage(
//               width: 90,
//               height: 90,
//               imageUrl: '',
//               fit: BoxFit.cover,
//               placeholder: (_, __) =>
//                   Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
//               errorWidget: (_, __, ___) =>
//                   Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
//             ),
//           ),
//
//           const SizedBox(height: 12),
//
//           TextButton.icon(
//             onPressed: () {
//               // TODO: Pick image
//             },
//             icon: const Icon(Icons.upload),
//             label: const Text("Yangi rasm yuklash"),
//           ),
//
//           const Text(
//             "Tavsiya etilgan o‘lcham: 400x400px, maksimal hajm: 5MB",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 12, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _InputField extends StatelessWidget {
//   final TextEditingController controller;
//   final String label;
//   final String? hint;
//   final bool enabled;
//   final int maxLines;
//
//   const _InputField({
//     required this.controller,
//     required this.label,
//     this.hint,
//     this.enabled = true,
//     this.maxLines = 1,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(label, style: const TextStyle(color: Colors.white70)),
//           const SizedBox(height: 8),
//           TextFormField(
//             controller: controller,
//             enabled: enabled,
//             maxLines: maxLines,
//             style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
//             decoration: InputDecoration(
//               hintText: hint,
//               filled: true,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(12),
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class EditAndSettingsScreen extends StatelessWidget {
  const EditAndSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit & Settings"),
        centerTitle: true,
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Save changes"),
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _Section(title: "Profile Information"),
          _ProfileTile(title: "Name", value: "John"),
          _ProfileTile(title: "Last name", value: "Doe"),
          _ProfileTile(title: "Email", value: "john@gmail.com"),
          _ProfileTile(title: "Phone number", value: "+998 90 000 00 00"),
          _ProfileTile(title: "Bio", value: "Flutter developer"),

          SizedBox(height: 24),

          _Section(title: "Location"),
          _ProfileTile(title: "Region", value: "Tashkent"),
          _ProfileTile(title: "City", value: "Yunusobod"),

          SizedBox(height: 24),

          _Section(title: "App Preferences"),
          _AppModeTile(),

          SizedBox(height: 24),

          _Section(title: "Referral"),
          _ReferralHistoryTile(),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;

  const _Section({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(color: Colors.grey),
      ),
    );
  }
}
class _ProfileTile extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileTile({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Open edit dialog or new page
      },
    );
  }
}
class _AppModeTile extends StatelessWidget {
  const _AppModeTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("App mode"),
      subtitle: const Text("System default"),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Open bottom sheet or dialog
      },
    );
  }
}
class _ReferralHistoryTile extends StatelessWidget {
  const _ReferralHistoryTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Referral codes"),
      subtitle: const Text("View generated codes history"),
      trailing: const Icon(Icons.history),
      onTap: () {
        // Open referral history page
      },
    );
  }
}
