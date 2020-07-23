class KudosController < ApplicationController
  before_action :authenticate_user!

  def index
    @kudos_facade = KudosFacade.new(current_user)
  end

  def new
    @kudo = Kudo.new
    @send_to_users = User.where(organization_id: current_user.organization_id).where.not(id: current_user.id)
  end

  def create
    kudo = Kudo.new(kudo_params)
    kudo.sent_by_user_id = current_user.id

    if current_user.kudos_available < 1
      flash[:danger] = "No Kudos available to send"
    elsif kudo && kudo.save
      current_user.kudos_available -= 1
      current_user.save
      flash[:notice] = "Successfully sent Kudo"
    else
    	flash[:danger] = "Failed to send Kudo"
    end
    redirect_to new_kudo_path
  end

  private

  def kudo_params
    params.require(:kudo).permit(:reason, :message, :sent_to_user_id)
  end

end