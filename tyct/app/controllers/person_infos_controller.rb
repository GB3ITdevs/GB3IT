class PersonInfosController < ApplicationController
  # GET /person_infos
  # GET /person_infos.json

before_filter :set_headers

  def index
    @person_infos = PersonInfo.all

    render json: @person_infos
  end

  # GET /person_infos/1
  # GET /person_infos/1.json
  def show
    @person_info = PersonInfo.find(params[:id])

    render json: @person_info
  end

  # POST /person_infos
  # POST /person_infos.json
  def create
    @person_info = PersonInfo.new(person_info_params(params[:person_info]))

    if @person_info.save
      render json: @person_info, status: :created, location: @person_info
    else
      render json: @person_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /person_infos/1
  # PATCH/PUT /person_infos/1.json
  def update
    @person_info = PersonInfo.find(params[:id])

    if @person_info.update(person_info_params(params[:person_info]))
      head :no_content
    else
      render json: @person_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /person_infos/1
  # DELETE /person_infos/1.json
  def destroy
    @person_info = PersonInfo.find(params[:id])
    @person_info.destroy

    head :no_content
  end

  private
    
    def person_info_params(params)
      params.permit(:firstName, :lastName, :password, :email)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
