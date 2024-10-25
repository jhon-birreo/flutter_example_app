import 'package:flutter_example_app/features/app_list/data/models/models.dart';
import 'package:flutter_example_app/features/app_list/domain/repositories/repositories.dart';

class JewelleryRepositoryImpl extends JewelleryRepository {
  @override
  List<JewelleryModel> earnings() {
    return [
      JewelleryModel(
          name: 'Hoop earrings with bow charm',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 19.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_3906_1.jpg'),
      JewelleryModel(
          name: 'Three hearts statement earrings',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 19.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_7044.jpg'),
      JewelleryModel(
          name: 'Oval chain earrings',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 22.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/o/o/oorringen_ovale_schakel-mj01568-1200.jpg'),
    ];
  }

  @override
  List<JewelleryModel> rings() {
    return [
      JewelleryModel(
          name: 'Ring with small heart',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 15.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_1736.jpg'),
      JewelleryModel(
        name: 'Wide structure mix ring',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        price: 15.99,
        image:
            'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/s/t/stretch_ringen_set-mj04332-1500.jpg',
      ),
      JewelleryModel(
          name: 'Ring with hearts',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 19.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/m/i/mix_ring_breed_structuur-mj04892-1200.jpg'),
      JewelleryModel(
          name: 'Universe statement ring ',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 19.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_my_0797.jpg'),
    ];
  }

  @override
  List<JewelleryModel> diamond() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon2() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon3() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon4() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon5() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon6() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon7() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon8() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon9() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon10() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon11() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }

  List<JewelleryModel> diamon12() {
    return [
      JewelleryModel(
          name: 'Chain necklace with cubic zirconia initial',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 29.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/88cfb905fc78966ffa0563039e5fb511/p/r/product_images-_mj_2442.jpg'),
      JewelleryModel(
          name: 'Ring with clear zirconia',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 20.00,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0107.jpg'),
      JewelleryModel(
          name: 'Initial ring with rhinestone',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
          price: 17.99,
          image:
              'https://www.my-jewellery.com/media/catalog/product/cache/11c3b41386dea29ed7e600d018f63705/p/r/product_images-_mj_0719.jpg'),
    ];
  }
}
