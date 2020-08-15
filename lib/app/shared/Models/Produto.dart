class Produto {
  String nome;
  String descricao;
  String imageUrl;
  double valor;

  Produto.fromPostgres(Map sql) {
    nome = sql['produto']['descricao'];
    descricao = sql['produto']['descricaodetalhada'];
    imageUrl = sql['produto']['imageurl'];
    valor = sql['produto']['valor'];
  }
}
