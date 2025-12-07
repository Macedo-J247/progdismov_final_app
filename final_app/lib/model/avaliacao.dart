import 'package:uuid/uuid.dart';

class Avaliacao {
  final String id;
  final String tripId;      // id da viagem
  final String fromUserId;  // quem avaliou
  final String toUserId;    // quem foi avaliado
  final int rating;         // 1..5
  final String? comment;
  final int createdAt;

  Avaliacao({
    String? id,
    required this.tripId,
    required this.fromUserId,
    required this.toUserId,
    required this.rating,
    this.comment,
    int? createdAt,
  })  : id = id ?? Uuid().v4(),
        createdAt = createdAt ?? DateTime.now().millisecondsSinceEpoch {
    // validação leve 
    if (rating < 1 || rating > 5) {
      throw ArgumentError.value(rating, 'rating', 'Deve estar entre 1 e 5');
    }
  }
}