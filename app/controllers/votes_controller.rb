class VotesController < ApplicationController
skip_before_filter :verify_authenticity_token  

	def create
	# return render json: params.inspect
	puts '87-fd890d-fga'*80
		@story = Story.find(params[:story_id])
 		@story.votes.create
 		respond_to do |format|
format.html { redirect_to @story }
format.js
end
 	# 	respond_to do |format|
		# 	format.html { redirect_to stories_path }
		# 	format.js {return true}
		# end
  # 		return true
		redirect_to :back
	end

	def index
		@story = Story.find(params[:story_id])
		@story.votes.create!
	end
	


	def update_votes
		if params[:story_id].present? && params[:story_id] != ""
			# previous_votes = params[:votes].to_i
			# previous_votes = previous_votes+1
			@story = Story.find(params[:story_id])
 			@story.votes.create
 			@updated_votes = @story.votes.count
		end
		return render partial: "votes/update_votes"
	end
 end
