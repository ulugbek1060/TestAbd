import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => locator<ProfileCubit>(),
//       child: const _View(),
//     );
//   }
// }
//
// class _View extends StatelessWidget {
//   const _View();
//
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<ProfileCubit>();
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(onPressed: cubit.logout, child: Text('logout')),
//       ),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "@devmaverick",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.light_mode_rounded)),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                  const SizedBox(width: 20),

                  /// Stats
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _StatItem(title: "Tests", value: "175"),
                        _StatItem(title: "Followers", value: "0"),
                        _StatItem(title: "Following", value: "2"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Bio
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Beginner Developer 👨‍💻",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Learning • Practicing • Growing",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            /// Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: _ActionButton(text: "Edit profile")),
                  const SizedBox(width: 8),
                  Expanded(child: _ActionButton(text: "Share profile")),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Statistics Cards
            _InfoCard(
              title: "Savollarga javob",
              leftLabel: "To'g'ri",
              leftValue: "60",
              rightLabel: "Xato",
              rightValue: "115",
            ),

            _InfoCard(
              title: "Aniqlik darajasi",
              centerValue: "34.29%",
              centerColor: Colors.green,
            ),

            _InfoCard(
              title: "Haftalik faollik",
              leftLabel: "Jami",
              leftValue: "2.0",
              rightLabel: "O'rtacha",
              rightValue: "0.3",
            ),
          ],
        ),
      ),
    );
  }
}

/// ---------------- COMPONENTS ----------------

class _StatItem extends StatelessWidget {
  final String title;
  final String value;

  const _StatItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;

  const _ActionButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String? leftLabel;
  final String? leftValue;
  final String? rightLabel;
  final String? rightValue;
  final String? centerValue;
  final Color? centerColor;

  const _InfoCard({
    required this.title,
    this.leftLabel,
    this.leftValue,
    this.rightLabel,
    this.rightValue,
    this.centerValue,
    this.centerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          if (centerValue != null)
            Text(
              centerValue!,
              style: TextStyle(
                color: centerColor ?? Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CardItem(label: leftLabel!, value: leftValue!),
                _CardItem(label: rightLabel!, value: rightValue!),
              ],
            ),
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String label;
  final String value;

  const _CardItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
