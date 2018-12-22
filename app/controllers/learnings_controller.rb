class LearningsController < ApplicationController

 def entry
  @learninguser = Learninguser.new
 end
 
 def entrycreate
  @learninguser = Learninguser.new(params.require(:learning).permit(:namesei))
  @learninguser.save
  redirect_to learnings_entrycomplete_path
 end 

end
