class ImportantDatesController < ApplicationController
  # GET /important_dates
  # GET /important_dates.json
  def index
    @important_dates = ImportantDate.where('date >= ?', Date.today).order("date")

    respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @important_dates }
    end
  end

  # GET /important_dates/1
  # GET /important_dates/1.json
  def show
    @important_date = ImportantDate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @important_date }
    end
  end

  # GET /important_dates/new
  # GET /important_dates/new.json
  def new
    @important_date = ImportantDate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @important_date }
    end
  end

  # GET /important_dates/1/edit
  def edit
    @important_date = ImportantDate.find(params[:id])
  end

  # POST /important_dates
  # POST /important_dates.json
  def create
    @important_date = ImportantDate.new(params[:important_date])

    respond_to do |format|
      if @important_date.save
        format.html { redirect_to @important_date, notice: 'Important date was successfully created.' }
        format.json { render json: @important_date, status: :created, location: @important_date }
      else
        format.html { render action: "new" }
        format.json { render json: @important_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /important_dates/1
  # PUT /important_dates/1.json
  def update
    @important_date = ImportantDate.find(params[:id])

    respond_to do |format|
      if @important_date.update_attributes(params[:important_date])
        format.html { redirect_to @important_date, notice: 'Important date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @important_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /important_dates/1
  # DELETE /important_dates/1.json
  def destroy
    @important_date = ImportantDate.find(params[:id])
    @important_date.destroy

    respond_to do |format|
      format.html { redirect_to important_dates_url }
      format.json { head :no_content }
    end
  end
end
