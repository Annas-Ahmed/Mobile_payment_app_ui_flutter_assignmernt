import 'package:flutter/cupertino.dart';
import 'package:mobile_payment_ui/widgets/text_button_offers.dart';

offersTab(context) {
  return Column(children: [
    textButtonOffers(
        context,
        "Mobile Recharge Offer\nUse Code FIRST20",
        "Get 20 % Instant cashback upto Rs 50 on\nyour firs mobile recharge. T&C apply",
        "ladyOffer",
        0xFF242042),
    textButtonOffers(
        context,
        "DTH Recharge Offer\nUse Code FIRSDTHT20",
        "Get 20 % Instant cashback upto Rs 50 on\nyour firs mobile recharge. T&C apply",
        "offerImage2",
        0xff3B2042),
    textButtonOffers(
        context,
        "Flipcart Shopping Offer",
        "Get 20 % Instant cashback upto Rs 50 on\nyour firs mobile recharge. T&C apply",
        "offerImage3",
        0xff422028),
    textButtonOffers(
        context,
        "Money Transfer Offer",
        "Get 20 % Instant cashback upto Rs 50 on\nyour firs mobile recharge. T&C apply",
        "offerImage4",
        0xff242042),
    textButtonOffers(
        context,
        "Rs 50 Off on Flights",
        "Get 20 % Instant cashback upto Rs 50 on\nyour firs mobile recharge. T&C apply",
        "offerImage4",
        0xff3B2042)
  ]);
}
