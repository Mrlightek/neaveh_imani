module UserAssociations
  extend ActiveSupport::Concern

  included do
    after_create :create_associated_objects
  end

  private

  def create_associated_objects
  	create_dashboard_and_mailbox
    #Profile.create(user: self) # Create a Profile model associated with the user
    #WelcomeMailer.send_welcome_email(self).deliver_later # Send welcome email
  end

  def create_dashboard_and_mailbox
    # Create dashboard and mailbox for the user
    dashboard = Dashboard.create(user: self)
  mailbox = Mailbox.create()
  application_setting = ApplicationSetting.create()
  self.mailbox_id = mailbox.id
  self.application_setting = application_setting.id

  if dashboard.persisted? && mailbox.persisted?
    puts "Dashboard and Mailbox created for user #{self.id}"
  else
    puts "Failed to create Dashboard or Mailbox for user #{self.id}"
  end
end
end
