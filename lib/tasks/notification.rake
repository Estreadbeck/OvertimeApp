namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  # if Time.now.sunday?
    employees = Employee.all
    notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://streadbeck-overtime.herokuapp.com"

    employees.each do |employee|
      SmsTool.send_sms(number: employee.phone, message: notification_message)
    end
  # end
end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    puts "I'm in the manager email!"
    # 1. iterate of the overtime requests that have a status of "submitted"
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
        admin_users.each do |admin|
            ManagerMailer.email(admin).deliver_now
        
        end
    end
    # 2. check to see if there are any requests
    # 3. iterate over the list of admin users/managers
    # 4. send email to each admin
    
end

end
