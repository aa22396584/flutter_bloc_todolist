// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sqflite/sqflite.dart' as _i779;

import 'bloc/todo_bloc.dart' as _i747;
import 'database/database_module.dart' as _i151;
import 'database/todo_dao.dart' as _i836;
import 'repository/todo_repository.dart' as _i279;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    await gh.factoryAsync<_i779.Database>(
      () => databaseModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i836.TodoDao>(() => _i836.TodoDao(gh<_i779.Database>()));
    gh.lazySingleton<_i279.ITodoRepository>(
      () => _i279.TodoRepository(gh<_i836.TodoDao>()),
    );
    gh.factory<_i747.TodoBloc>(
      () => _i747.TodoBloc(gh<_i279.ITodoRepository>()),
    );
    return this;
  }
}

class _$DatabaseModule extends _i151.DatabaseModule {}
