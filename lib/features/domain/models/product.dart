// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
part 'product.g.dart';

@HiveType(typeId: 0)
class Product extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String desc;
  @HiveField(3)
  final bool isComplete;

  const Product({
    required this.id,
    required this.title,
    required this.desc,
    this.isComplete = false,
  });

  Product copyWith({int? id, String? title, String? desc, bool? isComplete}) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  @override
  List<Object?> get props => [id, title, desc, isComplete];
}
