$ ->
  # Выбор способа оплаты заказа перед переходом на страницу яндекс кассы
  $('.payment_method_item a').on 'click', (e) ->
    e.preventDefault()
    $(this).parent().addClass('active').siblings('.payment_method_item').removeClass('active')
    $(this).closest('form').find('input#paymentType').val($(this).data('payment-method'))