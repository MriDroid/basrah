import 'package:basrah/features/main_screens/presentation/cubit/main_screens_cubit.dart';
import 'package:basrah/features/main_screens/presentation/widgets/list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screensCubit = context.read<MainScreensCubit>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset(
                  screensCubit.imgPath,
                  fit: BoxFit.contain,
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(width: 15),
              Text(screensCubit.title)
            ],
          ),
          actions: [
            GestureDetector(
              child: const Icon(Icons.search),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              child: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) => const ListViewCard(),
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
