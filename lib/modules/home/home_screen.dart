import '../../values/app_globals/app_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: double.maxFinite,
      child: Center(
        child: ListView.builder(
          itemCount: ClothingItems.clothingItems.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => GlassmorphicListItem(
            item: ClothingItems.clothingItems[index],
          ),
        ),
      ),
    );
  }
}
