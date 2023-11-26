import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_list_view_items.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (BuildContext context, state) {
       if(state is FeaturedBooksSuccess){
         return SizedBox(
           height: MediaQuery.sizeOf(context).height * .3,
           child: ListView.builder(
             physics: BouncingScrollPhysics(),
             scrollDirection: Axis.horizontal,
             itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 7),
                 child: CustomListViewItems(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail,),
               );
             },
             itemCount: state.books.length,

           ),
         );
       }
       else if (state is FeaturedBooksFailure){
         return CustomErrorWidget(errMessage: state.errMessage);
       }
       else {
         return const CustomLoadingIndicator();
       }
      },
    );
  }
}
