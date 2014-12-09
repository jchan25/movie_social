class UserFavoritedGenresController < ApplicationController
  def index
    @user_favorited_genres = UserFavoritedGenre.all
  end

  def show
    @user_favorited_genre = UserFavoritedGenre.find(params[:id])
  end

  def new
    @user_favorited_genre = UserFavoritedGenre.new
  end

  def create
    params.each do |key,value|

    if key == "genre_Mystery"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end


    if key == "genre_Sci-Fi"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Thriller"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Action"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Comedy"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Documentary"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Animation"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Romance"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Crime"
    @user_favorited_genre = UserFavoritedGenre.new
    @user_favorited_genre.user_ID = current_user.id
    @user_favorited_genre.genre_ID = value
    @user_favorited_genre.save
    else
    end

    if key == "genre_Drama"
        @user_favorited_genre = UserFavoritedGenre.new
        @user_favorited_genre.user_ID = current_user.id
        @user_favorited_genre.genre_ID = value
        @user_favorited_genre.save
    end

  end

    if params.keys.count == 0
        flash[:error] = "Must select a box"
      render 'new'
    else
      redirect_to "/user_favorited_genres/new", :notice => "User favorited genre created successfully."
    end
  end

  def edit
    @user_favorited_genre = UserFavoritedGenre.find(params[:id])
  end

  def update
    @user_favorited_genre = UserFavoritedGenre.find(params[:id])

    @user_favorited_genre.user_ID = params[:user_ID]
    @user_favorited_genre.genre_ID = params[:genre_ID]

    if @user_favorited_genre.save
      redirect_to "/user_favorited_genres", :notice => "User favorited genre updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_favorited_genre = UserFavoritedGenre.find(params[:id])

    @user_favorited_genre.destroy

    redirect_to "/user_favorited_genres", :notice => "User favorited genre deleted."
  end
end
