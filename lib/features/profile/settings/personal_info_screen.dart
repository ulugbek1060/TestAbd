import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/account/entities/personal_info_dto.dart';
import 'package:testabd/features/profile/settings/personal_info_cubit.dart';
import 'package:testabd/features/profile/settings/personal_info_state.dart';

import '../../../core/theme/app_images.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => locator<PersonalInfoCubit>(),
    child: const _View(),
  );
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  late final TextEditingController _usernameTextController;
  late final TextEditingController _nameTextController;
  late final TextEditingController _lastnameTextController;
  late final TextEditingController _emailTextController;
  late final TextEditingController _phoneNumberTextController;
  late final TextEditingController _bioTextController;

  @override
  void initState() {
    _usernameTextController = TextEditingController();
    _nameTextController = TextEditingController();
    _lastnameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _phoneNumberTextController = TextEditingController();
    _bioTextController = TextEditingController();
    super.initState();
  }

  void onSaveChanges() {
    final dto = PersonalInfoDto(
      username: _usernameTextController.text,
      firstName: _nameTextController.text,
      lastName: _lastnameTextController.text,
      email: _emailTextController.text,
      phoneNumber: _phoneNumberTextController.text,
      bio: _bioTextController.text,
    );
    context.read<PersonalInfoCubit>().changePersonalInfo(dto);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PersonalInfoCubit>();

    return BlocConsumer<PersonalInfoCubit, PersonalInfoState>(
      listener: (context, state) {
        _usernameTextController.text = state.myInfo?.username ?? '';
        _emailTextController.text = state.myInfo?.email ?? '';
        _nameTextController.text = state.myInfo?.firstName ?? '';
        _lastnameTextController.text = state.myInfo?.lastName ?? '';
        _phoneNumberTextController.text = state.myInfo?.phoneNumber ?? '';
        _bioTextController.text = state.myInfo?.bio ?? '';
      },
      builder: (context, state) {
        return Scaffold(
          // 🔽 APPBAR
          appBar: AppBar(
            elevation: 0,
            title: const Text("Profilni tahrirlash"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: cubit.toggleEditableMode,
                icon: state.isEditable ? Icon(Icons.close) : Icon(Icons.edit),
              ),
            ],
          ),

          // 🔽 BOTTOM NAVIGATION BAR
          bottomNavigationBar: !state.isEditable
              ? null
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: onSaveChanges,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "O‘zgarishlarni saqlash",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

          // 🔽 SCROLLABLE BODY
          body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProfileImagePicker(enabled: state.isEditable),

                const SizedBox(height: 24),
                _InputField(
                  label: "Username",
                  hint: "Username",
                  controller: _usernameTextController,
                  enabled: state.isEditable,
                ),
                _InputField(
                  label: "Ism",
                  hint: "Ismingizni kiriting",
                  controller: _nameTextController,
                  enabled: state.isEditable,
                ),
                _InputField(
                  label: "Familiya",
                  hint: "Familiyangizni kiriting",
                  controller: _lastnameTextController,
                  enabled: state.isEditable,
                ),
                _InputField(
                  label: "Email",
                  controller: _emailTextController,
                  enabled: state.isEditable,
                ),
                _InputField(
                  label: "Telefon raqami",
                  hint: "+998 xx xxx xx xx",
                  controller: _phoneNumberTextController,
                  enabled: state.isEditable,
                ),
                _InputField(
                  label: "Bio",
                  hint: "O‘zingiz haqingizda ma’lumot bering...",
                  maxLines: 4,
                  controller: _bioTextController,
                  enabled: state.isEditable,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ProfileImagePicker extends StatelessWidget {
  final bool enabled;

  const _ProfileImagePicker({required this.enabled});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ClipOval(
            child: CachedNetworkImage(
              width: 90,
              height: 90,
              imageUrl: '',
              fit: BoxFit.cover,
              placeholder: (_, __) =>
                  Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
              errorWidget: (_, __, ___) =>
                  Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
            ),
          ),

          const SizedBox(height: 12),

          if (enabled)
            TextButton.icon(
              onPressed: () {
                // TODO: Pick image
              },
              icon: const Icon(Icons.upload),
              label: const Text("Yangi rasm yuklash"),
            ),

          if (enabled)
            const Text(
              "Tavsiya etilgan o‘lcham: 400x400px, maksimal hajm: 5MB",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hint;
  final bool enabled;
  final int maxLines;

  const _InputField({
    required this.controller,
    required this.label,
    this.hint,
    this.enabled = true,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            enabled: enabled,
            maxLines: maxLines,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
