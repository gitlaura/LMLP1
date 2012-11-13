class WelcomeController < ApplicationController

  def index
    @person = Person.new
  end

  def register_email

    person = Person.new params[:person]
    puts "person: #{person.email}"
    puts "valid: #{person.valid?}"

    if person.valid?

      unless ENV["MAILCHIMP_LIST_ID"].nil? or ENV["MAILCHIMP_API_KEY"].nil?

        gb = Gibbon.new
        response = gb.list_subscribe({id: ENV["MAILCHIMP_LIST_ID"], email_address: person.email, double_optin: false, send_welcome: false})
        puts "response: #{response}"
        render 'welcome/registered_email_success'

      else

        @message = "*********** Please specify MAILCHIMP_LIST_ID and MAILCHIMP_API_KEY in the environment variables."
        Rails.logger.debug("*********** Please specify MAILCHIMP_LIST_ID and MAILCHIMP_API_KEY in the environment variables.")
        render 'welcome/registered_email_failure'
      end

    else

      @message = "Email didn't register, email " << person.errors[:email].join(', ')
      render 'welcome/registered_email_failure'

    end

    
  end

end