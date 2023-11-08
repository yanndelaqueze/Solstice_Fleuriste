class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]
    mail(to: ENV["GMAIL_EMAIL"], subject: "Solstice Fleuriste : Nouvelle Commande !")
  end

  def order_ready_email
    @order = params[:order]
    mail(to: @order.user.email, subject: "Solstice Fleuriste : Votre commande est prête !")
  end

  def order_confirmation_email
    @order = params[:order]
    mail(to: @order.user.email, subject: "Solstice Fleuriste : Confirmation de commande")
  end
end
