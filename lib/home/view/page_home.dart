import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/auth/bloc/bloc_page_auth.dart';
import 'package:my_app/home/bloc/bloc_page_home.dart';
import 'package:my_app/home/widgets/card_info.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  void initState() {
    context.read<BlocPageHome>().add(const BlocPageHomeEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context
                  .read<BlocPageAuth>()
                  .add(const BlocPageAuthEvent.signOut());
            },
            icon: const Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: BlocListener<BlocPageAuth, BlocPageAuthState>(
        listener: (context, state) {
          state.whenOrNull(
            unAuthenticated: () => context.router.replaceNamed('/page-login'),
          );
        },
        child: BlocBuilder<BlocPageHome, BlocPageHomeState>(
          builder: (context, state) {
            if (state.status.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.status.isSuccess && state.listInfo.isNotEmpty) {
              return ListView.builder(
                itemCount: state.listInfo.length,
                itemBuilder: (context, index) =>
                    InfoCard(info: state.listInfo[index]),
              );
            }
            if (state.status.isSuccess && state.listInfo.isEmpty) {
              return const Center(
                child: Text('No hay nada que mostar'),
              );
            }
            if (state.status.isError) {
              return Center(
                child: Column(
                  children: [
                    const Text(
                      'Ocurrio un error. Por favor recarge la pantalla',
                    ),
                    IconButton(
                      onPressed: () {
                        context
                            .read<BlocPageHome>()
                            .add(const BlocPageHomeEvent.get());
                      },
                      icon: const Icon(Icons.replay_circle_filled_outlined),
                    )
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
