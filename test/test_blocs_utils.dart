import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';

void mockBlocState<E, S, B extends Bloc<E, S>>(B bloc, S state) =>
    when(() => bloc.state).thenAnswer((_) => state);
