import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:postgres/postgres.dart';
import 'package:uimanager/app/shared/Models/Produto.dart';

class PostgresRepository extends Disposable {
  final _connection = PostgreSQLConnection(
    '192.168.1.80',
    5432,
    'db_sgc_MOBILE',
    username: 'postgres',
    password: r'info$g10112',
  );

  Completer<PostgreSQLConnection> _query = Completer<PostgreSQLConnection>();

  _init() async {
    await _connection.open();
    _query.complete(_connection);
  }

  PostgresRepository() {
    _init();
  }

  Future<ObservableList<Produto>> getProdutos() async {
    ObservableList<Produto> list = ObservableList<Produto>();

    final query = await _query.future;

    final result = await query.mappedResultsQuery('''
      SELECT
        descricao,
        descricaodetalhada,
        imageurl,
        valor
      FROM
        produto
      WHERE identifier = '35316787000180'
      ''');

    result.forEach(
      (element) {
        list.add(Produto.fromPostgres(element));
      },
    );

    return list;
  }

  @override
  void dispose() async {
    final query = await _query.future;
    query.close();
  }
}
