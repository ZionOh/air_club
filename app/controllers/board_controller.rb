class BoardController < ApplicationController
    before_action :authenticate_user!, except: :announce

    def announce
        @ablogs = Annct.all.reverse
    end

    def annwrt
        Annct.create(user_id: current_user.id, content: params[:acon], image: params[:aimage])
        redirect_to controller: 'board', action: 'announce'
    end
    
    def annedit
    end
    
    def anndel
    end
    
    def oboard
        @oblogs = Oblog.all.paginate(:page => params[:page]).order('id DESC')
        @users = User.all
    end

    def osingle
        @osingle = Oblog.find(params[:id])
        #Ysingle.create(user_id: current_user.id, blog_id: params[:blog_id], content: params[:ycon], image: params[:yimage], url: params[:yvideo])

        render controkker: 'board', action: 'osingle'
    end

    def owrite
        Oblog.create(user_id: current_user.id, content: params[:ocon], image: params[:oimage])
        redirect_to controller: 'board', action: 'oboard'
    end
    
    def oedit
    end
    
    def odel
    end
        
    def yboard
        @yblogs = Yblog.all.paginate(:page => params[:page]).order('id DESC')
        @users = User.all
    end
    
    def ysingle
        @ysingle = Yblog.find(params[:id])
        #Ysingle.create(user_id: current_user.id, blog_id: params[:blog_id], content: params[:ycon], image: params[:yimage], url: params[:yvideo])

        render controkker: 'board', action: 'ysingle'
    end
    
    def btest
        @yblogs = Yblog.all
    end
    
    def ywrite
        Yblog.create(user_id: current_user.id, content: params[:ycon], image: params[:yimage], url: params[:yvideo])
        redirect_to controller: 'board', action: 'yboard'
    end
    
    def yedit
        @ye = Yblog.find(params[:id])
    end
    
    def yupdate
        pup = Yblog.find(params[:id])
        pup.content = params[:ycon]
        pup.image = params[:yimage] 
            if params[:yimage].nil?
                pup.image = Yblog.find(params[:id]).image 
            end
        pup.url = params[:yvideo] 
            if params[:yvideo] == "" 
               pup.url = Yblog.find(params[:id]).url 
            end
        pup.save
        redirect_to controller: 'board', action: 'yboard'
    end
    
    def ydel
        yp = Yblog.find(params[:id])
        yp.destroy
        redirect_to controller: 'board', action: 'yboard'
    end
    
    def total
        @ablogs = Annct.all
        @oblogs = Oblog.all
        @yblogs = Yblog.all
    end
    
    def comment
        Comment.create(user_id: current_user.id, yblog_id: params[:yblog_id], msg: params[:comment])
        Comment.create(user_id: current_user.id, oblog_id: params[:oblog_id], msg: params[:comment])
        Comment.create(user_id: current_user.id, annct_id: params[:annct_id], msg: params[:comment])
        #Comment.create(user_id: current_user.id, pblog_id: params[:pblog_id], msg: params[:comment])
        redirect_to :back
    end
    

    def profile
        @profile = User.find(params[:id])
        #Ysingle.create(user_id: current_user.id, blog_id: params[:blog_id], content: params[:ycon], image: params[:yimage], url: params[:yvideo])

        render controkker: 'board', action: 'profile'
    end

end
