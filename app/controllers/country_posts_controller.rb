class CountryPostsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :check_admin, except: [:index]
    before_action :set_country, only: [:show, :index, :edit, :update, :destroy]
    before_action :set_country_post, only: [:show, :edit, :update, :destroy]

    def index
        @country_posts = @country.country_posts.includes(:user)
    end

    def new
        @countries = Country.all
        @country_post = CountryPost.new
    end

    def create
        code = country_post_params[:new_country_code]
        country = Country.find_by!(code: code)
        @country_post = country.country_posts.build(country_post_params.except(:new_country_code))
        @country_post.user = current_user

        if @country_post.save
            redirect_to root_path, notice: "投稿が完了しました（地図に戻りました）"
        else
            @countries = Country.all
            render :new, status: :unprocessable_entity
        end
    end
    def show
    end
    def edit
        @countries = Country.all
        @country_post.new_country_code = @country.code
    end

    def update
        @countries = Country.all
        if (code = country_post_params[:new_country_code]).present?
          @country = Country.find_by!(code: code)
          @country_post.country = @country
        end

        if @country_post.update(country_post_params.except(:new_country_code))
            redirect_to root_path, notice: "更新しました（地図に戻りました）"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @country_post.destroy
        redirect_to root_path, notice: "削除しました（地図に戻りました）"
    end

    private

    def set_country
        code_or_num = params[:country_code] || params[:code]
        @country = code_or_num.to_s.match?(/\A\d+\z/) ? Country.find(code_or_num) : Country.find_by!(code: code_or_num)
    end

    def set_country_post
        @country_post = @country.country_posts.find(params[:id])
    end

    def check_admin
        redirect_to root_path, alert: "管理者のみ利用可能です" unless current_user.admin?
    end

    def country_post_params
        params.require(:country_post).permit(:title, :content, :new_country_code, :image)
    end
end

