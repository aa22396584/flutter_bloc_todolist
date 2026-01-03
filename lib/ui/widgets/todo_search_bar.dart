import 'package:flutter/material.dart';

class TodoSearchBar extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const TodoSearchBar({
    super.key,
    required this.onChanged,
  });

  @override
  State<TodoSearchBar> createState() => _TodoSearchBarState();
}

class _TodoSearchBarState extends State<TodoSearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _controller,
      hintText: 'Search todos...',
      leading: const Icon(Icons.search),
      onChanged: widget.onChanged,
      trailing: [
        ValueListenableBuilder<TextEditingValue>(
          valueListenable: _controller,
          builder: (context, value, child) {
            if (value.text.isNotEmpty) {
              return IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                  widget.onChanged('');
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
