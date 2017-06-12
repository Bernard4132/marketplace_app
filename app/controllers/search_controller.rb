class SearchController < ApplicationController


       def index
            q = params[:q]
            @posters = Poster.search(title_or_description_cont: q).result
        end

end

