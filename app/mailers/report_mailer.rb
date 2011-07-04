class ReportMailer < ActionMailer::Base
  default :from => "noreply@oraculo.com"

  def notification(answer, text)
    @user = answer.user_id
    @answer = answer.id
    @text = text

    mail :to => "junior8801@gmail.com"
  end
end

