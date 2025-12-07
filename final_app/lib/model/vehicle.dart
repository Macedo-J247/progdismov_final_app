import 'package:uuid/uuid.dart';

class Veiculo {
  final String id;        
  final String ownerId;
  final String marca;
  final String modelo;
  final String placa;
  final String? cor;
  final int createdAt;
  final int? updatedAt;
  final int? deletedAt;

  Veiculo({
    String? id,
    required this.ownerId,
    required this.marca,
    required this.modelo,
    required this.placa,
    this.cor,
    int? createdAt,
    this.updatedAt,
    this.deletedAt,
  })  : id = id ?? Uuid().v4(),
        createdAt = createdAt ?? DateTime.now().millisecondsSinceEpoch;
}