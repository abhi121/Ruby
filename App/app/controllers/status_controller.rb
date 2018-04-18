class StatusController < ApplicationController
    
    def create 
    	@site=Site.find(params[:site_id])
    	@status=@site.statuses.create(par)
    	redirect_to site_path(@site)
    end
    

	private

	  def par
	  	params.require(:staus).permit(:body)
	  end
end
