import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ludycom_test/presentation/provider/cat_provider.dart';
import 'package:provider/provider.dart';

class LadingView extends StatefulWidget {
  const LadingView({super.key});

  @override
  State<LadingView> createState() => _LadingViewState();
}

class _LadingViewState extends State<LadingView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    return Consumer<CatProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.black),
          );
        }

        final catsToShow = provider.filteredCats;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              SearchBar(
                controller: provider.searchController,
                focusNode: focusNode,
                onTapOutside: (event) => focusNode.unfocus(),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                elevation: WidgetStatePropertyAll(0),
                side: WidgetStatePropertyAll(
                  BorderSide(color: Colors.grey.shade400, width: 1.5),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                hintText: 'Search by name...',
                onChanged: (value) => provider.updateSearchQuery(value),
                trailing: [
                  if (provider.searchQuery.isNotEmpty)
                    IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => provider.clearSearch(),
                    )
                  else
                    Icon(Icons.search),
                ],
              ),
              Expanded(
                child: catsToShow.isEmpty
                    ? const Center(
                        child: Text(
                          'No results found',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        itemCount: catsToShow.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: GestureDetector(
                        onTap: () {
                          context.push('/details', extra: catsToShow[index]);
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      catsToShow[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'More...',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Image.network(
                                  catsToShow[index].imageUrl ??
                                      '', // Cambiar provider.cats[index] por catsToShow[index]
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      height: 150,
                                      width: 150,
                                      color: Colors.grey.shade200,
                                      child: const Icon(
                                        Icons.image_not_supported,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Country of origin: ${catsToShow[index].origin}', // Cambiar provider.cats[index] por catsToShow[index]
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Intelligence: ${catsToShow[index].intelligence}', // Cambiar provider.cats[index] por catsToShow[index]
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
