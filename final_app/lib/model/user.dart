class User {
    // Nome do usuário
    String name;
    // Email do usuário
    String email;
    // Senha do usuário
    String password;

    // Construtor: cria um usuário com nome, email e senha obrigatórios
    User({
		required this.name,
		required this.email,
		required this.password,
    });
}
