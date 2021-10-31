import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({ required this.user }) : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 280,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 192,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Olá, ',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: user.name,
                          style: AppTextStyles.titleBold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                        image: NetworkImage(
                          user.photoUrl,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardeWidget()
          ),
        ],
      ),
    ),
  );
}