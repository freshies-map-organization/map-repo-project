import 'package:exercise3/services/ingredient/ingredient_service.dart';
import 'package:exercise3/services/ingredient/ingredient_service_rest.dart';
import 'package:exercise3/services/user/user_service.dart';
import 'package:exercise3/services/user/user_service_rest.dart';
import 'package:get_it/get_it.dart';

import '../services/rest.dart';
import '../screens/user/user_viewmodel.dart';

import '../services/auth/auth_service.dart';
import '../services/counter/counter_service.dart';
import '../services/recipe/recipe_service.dart';

import '../services/auth/auth_service_rest.dart';
import '../services/counter/counter_service_rest.dart';
import '../services/recipe/recipe_service_rest.dart';

// import '../services/auth/auth_service_mock.dart';
// import '../services/counter/counter_service_mock.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services

  dependency.registerLazySingleton<RestService>(
    // () => RestService(
    //     baseUrl: 'http://192.168.43.91:3000'), // with Local JSON-server
    // () => RestService(
    //     baseUrl:
    //         'http://192.168.43.91:5001/my-mvvm-project/us-central1/api'),
    () => RestService(
        baseUrl:
            'https://us-central1-my-mvvm-project.cloudfunctions.net/api'), // with Local Firebase
  );

  dependency.registerLazySingleton<CounterService>(() => CounterServiceRest());
  dependency.registerLazySingleton<AuthService>(() => AuthServiceRest());
  dependency.registerLazySingleton<RecipeService>(() => RecipeServiceRest());
  dependency
      .registerLazySingleton<IngredientService>(() => IngredientServiceRest());
  dependency.registerLazySingleton<UserService>(() => UserServiceRest());

  // Viewmodels
  dependency.registerLazySingleton(() => UserViewmodel());
}
