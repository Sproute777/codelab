// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CounterCubit(),
              ),
              BlocProvider(
                create: (context) => SubCubit(),
              ),
            ],
            child: Container(),
          ),
        ),
      ),
    );


class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);
  void increment() {
    emit(state + 1);
  }
}

class SubCubit extends CounterCubit {
   SubCubit() : super();

  @override
  void increment() {
    emit(state + 1);
  }
}



// class CountRepo {
//   // ignore: prefer_final_fields
//   StreamController<int> _count = StreamController<int>.broadcast()..add(0);
//   Stream<int> get countStream => _count.stream;

//   void add(int value){
//      _currentValue  += value;
//      _count.add(_currentValue);
//   } 


//   int _currentValue = 0;
//   int get current => _currentValue;

  

//   }

// void main() => runApp(
//       MaterialApp(
//         home: RepositoryProvider(
//               create: (_) => CountRepo(),
//           child: Scaffold(
//             appBar: AppBar(title: Builder(
//               builder: (ctx) {
//                 return StreamBuilder(
//                   stream: RepositoryProvider.of<CountRepo>(ctx).countStream,
//                   builder: (ctx,snapshot) {
//                     return Text(snapshot.data.toString());
//                   },
//                 );
//               }
//             )),
//             body: 
//                ListView.builder(
//                   itemCount: 10,
//                   itemBuilder: (context, index) => BlocProvider(
//                         create: (ctx) => CounterCubit(
//                           RepositoryProvider.of<CountRepo>(ctx),
//                         ),
//                         child: BlocBuilder<CounterCubit, int>(
//                           builder: (context, state) {
//                             return Center(
//                                 child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: TextButton(
//                                 child: Text(
//                                   ' conting   $state',
//                                 ),
//                                 onPressed: () =>
//                                     context.read<CounterCubit>().increment(),
//                               ),
//                             ));
//                           },
//                         ),
//                       )),
//             ),
//         ),
//       ),
//     );

// class CounterCubit extends Cubit<int> {
//   final CountRepo _repo;
//   CounterCubit(CountRepo repo)
//       : _repo = repo,
//         super(-1);
//   void increment() {
//     _repo.add(1);
//     emit(state + 1);
//   }
// }

// class CountRepo {
//   // ignore: prefer_final_fields
//   StreamController<int> _count = StreamController<int>.broadcast()..add(0);
//   Stream<int> get countStream => _count.stream;

//   void add(int value){
//      _currentValue  += value;
//      _count.add(_currentValue);
//   } 


//   int _currentValue = 0;
//   int get current => _currentValue;

  

//   }
