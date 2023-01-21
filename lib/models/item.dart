import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int id;
  final String name;
  final String? description;
  final double price;
  final String? image;
  final String? size;

  const Item(
      {required this.id,
      required this.name,
      required this.price,
      this.description,
      this.image,
      this.size});

  @override
  List<Object?> get props => [id, name, price, image, size, description];
}
