class ReportMailer < ActionMailer::Base
  default :from => "noreply@oraculo.com"

  def notification( text)
    @text = text
    mail :to => "junior8801@gmail.com"
  end
end

