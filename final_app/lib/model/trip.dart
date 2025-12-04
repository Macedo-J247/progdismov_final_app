enum TripStatus { requested, accepted, inProgress, completed, cancelled }

class Viagem {
  final String id;          
  final String passengerId;
  final String? driverId;
  final String origin;
  final String destination;
  final int fareCents;      
  final TripStatus status;
  final int requestedAt;
  final int? acceptedAt;
  final int? startedAt;
  final int? finishedAt;
  final bool paid;

  Viagem({
    required this.id,
    required this.passengerId,
    this.driverId,
    required this.origin,
    required this.destination,
    required this.fareCents,
    this.status = TripStatus.requested,
    required this.requestedAt,
    this.acceptedAt,
    this.startedAt,
    this.finishedAt,
    this.paid = false,
  });
}
