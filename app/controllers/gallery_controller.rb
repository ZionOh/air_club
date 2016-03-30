class GalleryController < ApplicationController
    def games
        @ggals = Ggal.all
    end
    
    def gaup
    end
    
    def gcre
        Ggal.create(user_id: current_user.id, title: params[:gtit], content: params[:gcon], image: params[:gimage])
        redirect_to controller: 'gallery', action: 'games'
    end

    def event
        @egals = Egal.all
    end
    
    def evup
    end
    
    def ecre
        Egal.create(user_id: current_user.id, title: params[:etit], content: params[:econ], image: params[:eimage])
        redirect_to controller: 'gallery', action: 'event'
    end

    def aprivate
        @agals = Agal.all
    end
    
    def prup
    end
    
    def acre
        Agal.create(user_id: current_user.id, title: params[:atit], content: params[:acon], image: params[:pimage])
        redirect_to controller: 'gallery', action: 'aprivate'
    end
    
    def total
        @ggals = Ggal.all
        @egals = Egal.all
        @agals = Agal.all
    end



end
