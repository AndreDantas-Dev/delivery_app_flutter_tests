abstract class ICheckoutViewModel {
  String confirmPaymentTitle;
  String checkoutTitle;
  String paymentMethodTitle;
  String changeButtonText;
  String deliveryAddressTitle;
  String deliveryOptionTitle;
}

class CheckoutViewModel implements ICheckoutViewModel {
  String confirmPaymentTitle = "CONFIRM PAYMENT";
  String checkoutTitle = "Checkout";
  String changeButtonText = "CHANGE";
  String deliveryAddressTitle = "Delivery Address";
  String deliveryOptionTitle = "Delivery Options";
  String paymentMethodTitle = "Payment Method";
}
