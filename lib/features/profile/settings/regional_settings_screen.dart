import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/settings/regional_settings_cubit.dart';

class RegionalSettingsScreen extends StatelessWidget {
  const RegionalSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => locator<RegionalSettingsCubit>(),
    child: const _View(),
  );
}

class _View extends StatefulWidget {
  const _View({super.key});

  @override
  State<_View> createState() => _ViewView();
}

class _ViewView extends State<_View> {
  String country = "Uzbekistan";
  String? region;
  String? district;
  String? mahalla;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Joylashuv"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _Header(),
          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              context.read<RegionalSettingsCubit>().fetchCountries();
            },
            child: Text("fetchCountries"),
          ),

          _DropdownField(
            label: "Davlat",
            value: country,
            items: const ["Uzbekistan"],
            onChanged: (_) {},
          ),

          _DropdownField(
            label: "Viloyat",
            value: region,
            hint: "Viloyatni tanlash",
            enabled: true,
            items: const ["Toshkent", "Samarqand", "Andijon"],
            onChanged: (v) => setState(() {
              region = v;
              district = null;
              mahalla = null;
            }),
          ),

          _DropdownField(
            label: "Tuman",
            value: district,
            hint: "Tumanni tanlash",
            enabled: region != null,
            items: const ["Yunusobod", "Chilonzor"],
            onChanged: (v) => setState(() {
              district = v;
              mahalla = null;
            }),
          ),

          _DropdownField(
            label: "Mahalla",
            value: mahalla,
            hint: "Mahallani tanlash",
            enabled: district != null,
            items: const ["Bog‘bon", "Shodlik"],
            onChanged: (v) => setState(() {
              mahalla = v;
            }),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Joylashuv",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "O‘zingizning joylashuvingizni tanlang",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class _DropdownField extends StatelessWidget {
  final String label;
  final String? value;
  final String? hint;
  final bool enabled;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const _DropdownField({
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: value,
            hint: Text(hint ?? ""),
            onChanged: enabled ? onChanged : null,
            dropdownColor: Theme.of(context).colorScheme.surface,
            items: items
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                )
                .toList(),
            decoration: InputDecoration(
              filled: true,
              enabled: enabled,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
