ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 25,
  :domain               => "google.com",
  :user_name            => "dharasydnia@gmail.com",
  :password             => "dhara123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

#ActionMailer::Base.default_url_options[:host] = "localhost:3000"
ActionMailer::Base.default_url_options[:host] = "http://quiet-winter-6219.herokuapp.com"

Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?