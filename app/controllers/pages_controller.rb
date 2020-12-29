class PagesController < ApplicationController
  def home
    @date = Date.today.strftime("%B #{Date.today.day.ordinalize}")
  end

  def about
  end

  def contact
    search = params[:member]
    # raise
    @members = %w[Julian Helena Bulut Greg Elle]

    if search.present?
      @members = @members.select { |name| name.start_with?(search) }
    end
  end
end
