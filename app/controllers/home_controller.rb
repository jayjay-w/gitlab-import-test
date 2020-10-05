class HomeController < ApplicationController
    def delete_done
        @delete_done = List.where(:completed => true).destroy_all
        redirect_to root_url, notice: 'All done items have been deleted'
    end

    def delete_all
        @delete_all = List.all.destroy_all
        redirect_to root_url, notice: 'All items have been deleted'
    end
end