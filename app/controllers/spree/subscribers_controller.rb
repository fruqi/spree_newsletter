module Spree
  class SubscribersController < Spree::StoreController
    def index
      @subscriber = Spree::Subscriber.new
    end

    def create
      @subscriber = Spree::Subscriber.new(subscriber_params)

      if @subscriber.save
        flash[:success] = "Awesome, you will receive newsletter from us in the future. Stay tuned!"
        NewsletterMailer.welcome_email(@subscriber).deliver
        redirect_to root_path
      else
        flash.now[:error] = @subscriber.errors.full_messages
        render 'index'
      end
    end

    private

      def subscriber_params
        params.require(:subscriber).permit(:email)
      end
  end
end