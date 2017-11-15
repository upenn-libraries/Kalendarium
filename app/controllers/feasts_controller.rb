class FeastsController < ApplicationController
 before_action :set_feast, only: [:show, :edit, :update, :destroy]
 before_action :set_manuscript
 before_action :set_calendar_page, only: [:new, :create, :destroy]

  # GET /feasts
  # GET /feasts.json
  def index
    @feasts = Feast.all
  end

  # GET /feasts/1
  # GET /feasts/1.json
  def show
  end

  # GET /feasts/new
  def new
    @feast = @calendar_page.feasts.build(feast_params)
    @feast.manuscript = @calendar_page.manuscript # still needed?
  end

  # GET /feasts/1/edit
  def edit
  end

  # POST /feasts
  # POST /feasts.json
  def create
    @feast = @calendar_page.feasts.build(feast_params)

    respond_to do |format|
      if @feast.save
        format.html { redirect_to @calendar_page, notice: 'Feast was successfully created.' }
        format.json { render :show, status: :created, location: @feast }
      else
        format.html { redirect_to @calendar_page, notice: @feast.errors.full_messages.to_a }#'uhh' }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /feasts/1
  # PATCH/PUT /feasts/1.json
  def update
    respond_to do |format|
      if @feast.update(feast_params)
        format.html { redirect_to @feast.calendar_page, notice: 'Feast was successfully updated.' }
        format.json { render :show, status: :ok, location: @feast }
      else
        format.html { render :edit }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feasts/1
  # DELETE /feasts/1.json
  def destroy
    @feast.destroy
    respond_to do |format|
      format.html { redirect_to @feast.calendar_page, notice: 'This feast has ceased' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feast
      @feast = Feast.find(params[:id])
    end

    def set_manuscript
      # @manuscript = Manuscript.find(params[:manuscript_id])
    end

    def set_calendar_page
      @calendar_page = CalendarPage.find(params[:calendar_page_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def feast_params
      params.require(:feast).permit(
        :transcription,
        :saint_name,
        :saint_attributes,
        :saint_location,
        :modifier,
        :shading,
        :color,
        :month_number,
        :day_number,
        :calendar_page_id,
        :manuscript_id,

        :st_attr_abb,
        :st_attr_aep,
        :st_attr_card,
        :st_attr_cf,
        :st_attr_diac,
        :st_attr_ep,
        :st_attr_erem,
        :st_attr_m,
        :st_attr_mon,
        :st_attr_pb,
        :st_attr_pp,
        :st_attr_protom,
        :st_attr_s,
        :st_attr_v,
        :st_attr_vid

      )
    end
end


