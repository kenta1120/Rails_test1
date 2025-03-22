class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start, :end_date, :allday, :schedule_memo))
    if @schedule.save
      flash[:notice] = "予定を新規登録しました。"
      redirect_to :schedules
    else
      flash.now[:notice] = "登録に失敗しました。"
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start, :end_date, :allday, :schedule_memo))
      flash[:notice] = "予定IDが「#{@schedule.id}」の情報を更新しました。"
      redirect_to schedules_path
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to schedules_path
  end
end