class Answer < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  belongs_to :question

  validates_presence_of :owner, :question, :body
  validates_associated :owner, :question
  #after_save :report
  #def report
    #puts "asdfasdf"
    #MessengerMailer.notification(self).deliver
  #end
end

