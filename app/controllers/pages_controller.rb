class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["claire", "toni", "santi", "sarah"]

    search = params[:member] # what they typed in the form

    if search
      @members = @members.select do |member|
        member.start_with? search.downcase
      end
    end
  end

  def home
  end
end
