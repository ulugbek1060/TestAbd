import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/widgets/loading_widget.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/profile/settings/regional_settings_cubit.dart';
import 'package:testabd/features/profile/settings/regional_settings_state.dart';

class RegionalSettingsScreen extends StatelessWidget {
  const RegionalSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => locator<RegionalSettingsCubit>()..fetchCountries(),
    child: const _View(),
  );
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Joylashuv"), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: context.read<RegionalSettingsCubit>().fetchCountries,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const _Header(),

            // spacer
            const SizedBox(height: 24),

            CountriesSection(),

            RegionSection(),

            DistrictsSection(),
          ],
        ),
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

class CountriesSection extends StatelessWidget {
  const CountriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegionalSettingsCubit, RegionalSettingsState>(
      buildWhen: (s1, s2) => s1.countries != s2.countries,
      builder: (context, state) {
        final countriesState = state.countries;
        return _DropdownField(
          label: "Davlat",
          hint: "Davlatni tanlang",
          value: countriesState.selected?.id,
          items: countriesState.countries
              .map(
                (e) => DropdownMenuEntry<int>(
                  label: e.name ?? '',
                  value: e.id ?? -1,
                ),
              )
              .toList(),
          onChanged: context.read<RegionalSettingsCubit>().selectCountry,
        );
      },
    );
  }
}

class RegionSection extends StatelessWidget {
  const RegionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegionalSettingsCubit, RegionalSettingsState>(
      buildWhen: (s1, s2) => s1.regions != s2.regions,
      builder: (context, state) {
        final regionState = state.regions;
        return _DropdownField(
          label: "Region",
          hint: "Regionni tanlang",
          isLoading: regionState.isLoading,
          value: regionState.selected?.id,
          items: regionState.regions
              .map(
                (e) => DropdownMenuEntry<int>(
                  label: e.name ?? '',
                  value: e.id ?? -1,
                ),
              )
              .toList(),
          onChanged: context.read<RegionalSettingsCubit>().selectRegion,
        );
      },
    );
  }
}

class DistrictsSection extends StatelessWidget {
  const DistrictsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegionalSettingsCubit, RegionalSettingsState>(
      buildWhen: (s1, s2) => s1.districts != s2.districts,
      builder: (context, state) {
        final districtState = state.districts;
        return _DropdownField(
          label: "District",
          hint: "Districtni tanlang",
          value: districtState.selected?.id,
          isLoading: districtState.isLoading,
          items: districtState.districts
              .map((e) => DropdownMenuEntry<int>(label: e.name, value: e.id))
              .toList(),
          onChanged: context.read<RegionalSettingsCubit>().selectDistrict,
        );
      },
    );
  }
}

class _DropdownField extends StatelessWidget {
  final String label;
  final int? value;
  final String? hint;
  final bool enabled;
  final bool isLoading;
  final List<DropdownMenuEntry<int>> items;
  final ValueChanged<int?> onChanged;

  const _DropdownField({
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.isLoading = false,
    this.hint,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: scheme.onSurface)),
          const SizedBox(height: 8),

          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<int>(
                    initialValue: value,
                    hint: hint != null ? Text(hint!) : null,
                    onChanged: enabled ? onChanged : null,
                    dropdownColor: scheme.surface,
                    items: items
                        .map(
                          (e) => DropdownMenuItem<int>(
                            value: e.value,
                            child: Text(
                              e.label,
                              style: TextStyle(color: scheme.onSurface),
                            ),
                          ),
                        )
                        .toList(),
                    decoration: InputDecoration(
                      filled: true,
                      enabled: enabled,
                      fillColor: scheme.surfaceVariant,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                if (isLoading)
                  const SizedBox(width: 8),

                if (isLoading)
                  ProgressView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
