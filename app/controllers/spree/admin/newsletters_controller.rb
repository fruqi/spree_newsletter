module Spree
  module Admin
    class NewslettersController < Spree::Admin::BaseController
      def index
        # @newsletters = Spree::Newsletter.all
        @newsletter = Spree::Newsletter.new
      end

      def create
        @newsletter = Spree::Newsletter.new(email_params)
        if @newsletter.save
          if subscribers = Spree::Subscriber.all
            subscribers.each do |subscriber|
              NewsletterMailer.newsletter_email(subscriber, @newsletter).deliver
            end
          end
          redirect_to :back
        else
          render 'index'
        end
        # Worker.send_newsletter(@email) 
      end

      private

        def email_params
          params.require(:newsletter).permit(:body, :subject)   
        end
    end
  end
end