class CalendarPagesController < ApplicationController
  before_action :set_calendar_page, only: [:show, :edit, :update, :destroy]
  before_action :set_manuscript, only: [:create, :new, :destory]

  # GET /calendar_pages
  # GET /calendar_pages.json
  def index
    @calendar_pages = CalendarPage.all
    render manuscript_path(id: @calendar_page.manuscript_id)
  end

  # GET /calendar_pages/1
  # GET /calendar_pages/1.json
  def show
  end

  # GET /calendar_pages/new
  def new
    # @calendar_page = CalendarPage.new
    @calendar_page = @manuscript.calendar_pages.build

    respond_to do |format|
      format.html{ render layout: !request.xhr? }
    end
  end

  # GET /calendar_pages/1/edit
  def edit
  end

  # POST /calendar_pages
  # POST /calendar_pages.json
  def create
    @calendar_page = @manuscript.calendar_pages.build calendar_page_params

    respond_to do |format|
      if @calendar_page.save
        format.html { redirect_to @calendar_page.manuscript, notice: 'Calendar page was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_page }
      else
        format.html { render :new }
        format.json { render json: @calendar_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_pages/1
  # PATCH/PUT /calendar_pages/1.json
  def update
    respond_to do |format|
      if @calendar_page.update(calendar_page_params)
        format.html { redirect_to [@manuscript, @calendar_page], notice: 'Calendar page was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_page }
      else
        format.html { render :edit }
        format.json { render json: @calendar_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_pages/1
  # DELETE /calendar_pages/1.json
  def destroy
    @calendar_page.destroy
    respond_to do |format|
      format.html { redirect_to @calendar_page.manuscript, notice: 'Calendar page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_page
      @calendar_page = CalendarPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_page_params
      params.require(:calendar_page).permit(:folio, :start_month, :end_month, :start_day, :end_day)
    end

    def set_manuscript
      @manuscript = Manuscript.find(params[:manuscript_id])
    end
end
