class AnswersController < ApplicationController

  def create
    @answer   = Answer.new(params[:answer])
    @answer.owner = current_user
    @answer.question = Question.find(params[:question_id])
    @answer.save

    respond_with(@answer, location: @answer.question)
  end


   def report_abuse
    @answer = Answer.find(params[:answer_id])
    ReportMailer.notification(@answer, params[:text]).deliver
    flash[:notice] = "Sucessefully sent a message to Administration"
    redirect_to :back
  end

end

