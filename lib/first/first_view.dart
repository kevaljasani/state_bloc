import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'first_bloc.dart';
import 'first_event.dart';
import 'first_state.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FirstBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();
    final bloc = BlocProvider.of<FirstBloc>(context);

    return Scaffold(

      appBar: AppBar(),

      body: Column(
        children: [
          TextField(
            controller: t1,
          ),

          TextField(
            controller: t2,
          ),

          ElevatedButton(onPressed: () {

            bloc.add(sum_event(t1.text,t2.text));
          }, child: Text("sum")),

          ElevatedButton(onPressed: () {

            bloc.add(sub_event(t1.text,t2.text));
          }, child: Text("sub")),

          BlocBuilder<FirstBloc,FirstState>(builder: (context, state) {
            if(state is sum_state)
              {
                return Text("${state.total}");
              }
            else
              {
                return Text("0");
              }
          },),

          BlocBuilder<FirstBloc,FirstState>(builder: (context, state) {
            if(state is sub_state)
              {
                return Text("${state.total}");
              }
            else
              {
                return Text("0");
              }
          },)
        ],
      ),
    );
  }
}

