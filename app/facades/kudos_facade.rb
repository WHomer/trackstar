class KudosFacade
  attr_reader :kudos_received, 
              :kudos_gave,
              :kudos_to_give

  def initialize(current_user)
    @kudos_received = Kudo.where(sent_to_user: current_user)
    @kudos_gave = Kudo.where(sent_by_user: current_user)
    @kudos_to_give = current_user.kudos_available
  end

end