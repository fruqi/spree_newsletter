module Spree
  module Admin
    class NewslettersController < Spree::Admin::BaseController
      def index
        @newsletters = Spree::Newsletter.all.page(params[:page]).per(10)
        @newsletter = Spree::Newsletter.new
      end

      def create
        @newsletter = Spree::Newsletter.new(email_params)

        if @newsletter.save
          if subscribers = Spree::Subscriber.all
            subscribers.each do |subscriber|
              NewsletterMailer.delay.newsletter_email(subscriber, @newsletter)
            end
          end
          redirect_to :back
        else
          render 'index'
        end
      end

      def show
        @newsletter = Spree::Newsletter.find params[:id]
        render layout: false
      end

      private

        def email_params
          params.require(:newsletter).permit(:body, :subject)   
        end
    end
  end
end