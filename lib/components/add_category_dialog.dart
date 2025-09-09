import 'dart:math';
import 'package:flutter/material.dart';

class AddCategoryDialog extends StatefulWidget {
  const AddCategoryDialog({super.key});

  @override
  State<AddCategoryDialog> createState() => _AddCategoryDialogState();
}

class _AddCategoryDialogState extends State<AddCategoryDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emojiController = TextEditingController();

  Color? selectedColor;

  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    );

    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: const Text(
        "Add Category",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Category name
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Category Name",
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Emoji picker
          TextField(
            controller: emojiController,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 28), // make emoji big
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Pick Emoji",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
            onTap: () {
              setState(() {
                selectedColor = getRandomColor();
              });
            },
          ),
          const SizedBox(height: 20),

          // Show color preview if selected
          if (selectedColor != null)
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: selectedColor,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        ElevatedButton(
          style: buttonStyle,
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            if (nameController.text.isNotEmpty &&
                emojiController.text.isNotEmpty) {
              final category = {
                "name": nameController.text,
                "emoji": emojiController.text,
                "color": selectedColor ?? getRandomColor(),
              };

              Navigator.pop(context, category);
            }
          },
          child: const Text("Save"),
        ),
      ],
    );
  }
}
