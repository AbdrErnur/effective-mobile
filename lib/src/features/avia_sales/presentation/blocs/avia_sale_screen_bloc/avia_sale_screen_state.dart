part of 'avia_sale_screen_bloc.dart';

class AviaSaleScreenState extends Equatable{
  final List<OfferEntityViewModel> offerViewModelList;

  const AviaSaleScreenState({required this.offerViewModelList});

  @override
  List<Object> get props => [offerViewModelList];

}