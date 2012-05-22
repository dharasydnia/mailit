ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 25,
  :domain               => "mail.rightwaysolution.com",
  :user_name            => "test@rightwaysolution.com",
  :password             => "test@123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"

Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?