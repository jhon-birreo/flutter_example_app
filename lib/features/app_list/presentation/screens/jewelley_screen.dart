import 'package:flutter/material.dart';
import 'package:flutter_example_app/features/app_list/data/models/models.dart';
import 'package:flutter_example_app/features/app_list/data/repositories/jewellery_repository_impl.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class JewelleryScreen extends StatefulWidget {
  const JewelleryScreen({super.key});

  @override
  State<JewelleryScreen> createState() => _JewelleryScreenState();
}

class _JewelleryScreenState extends State<JewelleryScreen> {
  final List<GlobalKey> categoryKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  late ScrollController scrollController;
  BuildContext? tabContext;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(animateToTab);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  void animateToTab() {
    late RenderBox renderBox;
    for (var i = 0; i < categoryKeys.length; i++) {
      renderBox =
          categoryKeys[i].currentContext!.findRenderObject() as RenderBox;
      Offset position = renderBox.localToGlobal(Offset.zero);

      if (scrollController.offset >= position.dy) {
        DefaultTabController.of(tabContext!)
            .animateTo(i, duration: const Duration(milliseconds: 100));
      }
    }
  }

  void scrollToIndex(int index) async {
    scrollController.removeListener(animateToTab);
    final categories = categoryKeys[index].currentContext;
    await Scrollable.ensureVisible(
      categories!,
      duration: const Duration(milliseconds: 500),
    );

    scrollController.addListener(animateToTab);
  }

  @override
  Widget build(BuildContext context) {
    final jewelleryRepository = JewelleryRepositoryImpl();

    return DefaultTabController(
      length: 14,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Builder(builder: (context) {
          tabContext = context;
          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                _buildCategoryTitle('Earrings', 0, context),
                _buildItemList(jewelleryRepository.earnings()),
                _buildCategoryTitle('Rings', 1, context),
                _buildItemList(jewelleryRepository.rings()),
                _buildCategoryTitle('Diamonds', 2, context),
                _buildItemList(jewelleryRepository.diamond()),
                _buildCategoryTitle('Diamonds2', 2, context),
                _buildItemList(jewelleryRepository.diamon2()),
                _buildCategoryTitle('Diamonds3', 2, context),
                _buildItemList(jewelleryRepository.diamon3()),
                _buildCategoryTitle('Diamonds4', 2, context),
                _buildItemList(jewelleryRepository.diamon4()),
                _buildCategoryTitle('Diamonds5', 2, context),
                _buildItemList(jewelleryRepository.diamon5()),
                _buildCategoryTitle('Diamonds6', 2, context),
                _buildItemList(jewelleryRepository.diamon6()),
                _buildCategoryTitle('Diamonds7', 2, context),
                _buildItemList(jewelleryRepository.diamon7()),
                _buildCategoryTitle('Diamonds8', 2, context),
                _buildItemList(jewelleryRepository.diamon8()),
                _buildCategoryTitle('Diamonds9', 2, context),
                _buildItemList(jewelleryRepository.diamon9()),
                _buildCategoryTitle('Diamonds10', 2, context),
                _buildItemList(jewelleryRepository.diamon10()),
                _buildCategoryTitle('Diamonds11', 2, context),
                _buildItemList(jewelleryRepository.diamon11()),
                _buildCategoryTitle('Diamonds12', 2, context),
                _buildItemList(jewelleryRepository.diamon12()),
              ],
            ),
          );
        }),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.menu_1),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.search_favorite),
        ),
      ],
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Purchase your jewellery in  a minute with',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          Text(
            'JewelleryGo',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                color: Colors.black),
          ),
        ],
      ),
      bottom: TabBar(
        isScrollable: true,
        // unselectedLabelColor: Colors.white.withOpacity(0.3),
        indicatorColor: Colors.redAccent,
        tabs: [
          Tab(
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Earrings'),
            ),
          ),
          const Tab(child: Text('Rings')),
          const Tab(child: Text('Diamonds')),
          const Tab(child: Text('Diamonds2')),
          const Tab(child: Text('Diamonds3')),
          const Tab(child: Text('Diamonds4')),
          const Tab(child: Text('Diamonds5')),
          const Tab(child: Text('Diamonds6')),
          const Tab(child: Text('Diamonds7')),
          const Tab(child: Text('Diamonds8')),
          const Tab(child: Text('Diamonds9')),
          const Tab(child: Text('Diamonds10')),
          const Tab(child: Text('Diamonds11')),
          const Tab(child: Text('Diamonds12')),
        ],
        onTap: (index) => scrollToIndex(index),
      ),
    );
  }

  Widget _buildCategoryTitle(String title, int index, BuildContext context) {
    return Padding(
      key: categoryKeys[index],
      padding: const EdgeInsets.only(top: 14, right: 12, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }

  Widget _buildSingleItem(JewelleryModel item) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 160,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "€${item.price}",
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "€${item.price + 26.07}",
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 13,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Icon(Iconsax.arrow_right)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildItemList(List<JewelleryModel> categories) {
    return Column(
      children: categories.map((item) => _buildSingleItem(item)).toList(),
    );
  }
}
