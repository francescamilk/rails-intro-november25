class PagesController < ApplicationController
  def about
    # logic...
  end

  def home; end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    @query = params[:member]

    if @query
      @members = @members.select do |member|
        member.start_with?(@query.downcase())
      end
    end
  end
end
