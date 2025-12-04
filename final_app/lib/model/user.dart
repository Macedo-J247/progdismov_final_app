class User {
  int? id;
  String name;
  String email;
  String password;
  String role; // 'passageiro' ou 'motorista'
  int? veiculoId;
  double? avaliacao;
  int? totalAvaliacoes;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    this.veiculoId,
    this.avaliacao,
    this.totalAvaliacoes,
  });
}
