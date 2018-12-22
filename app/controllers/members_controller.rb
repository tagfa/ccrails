class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params.require(:member).permit(:userid, :name, :password,:furigana,:mail,:cardcompany,:cardno,:cardlimit,:cardname))
   
    @member.save
    redirect_to members_complete_path    
  end

  def signin
    @member = Member.new
  end

  def error
  end

  def complete
  end

end
