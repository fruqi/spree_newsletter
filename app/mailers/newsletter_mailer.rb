class NewsletterMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(subscriber)
    @url = "localhost:3000"
    mail(to: subscriber.email, subject: "Test email yo") 
  end

  def newsletter_email(subscriber, newsletter)
    @newsletter_body = newsletter.body
    mail(to: subscriber.email, subject: newsletter.subject)
  end
end
