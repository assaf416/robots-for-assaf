class PlayListItemsController < ApplicationController
  before_action :set_play_list_item, only: %i[ show edit update destroy ]

  # GET /play_list_items or /play_list_items.json
  def index
    @play_list_items = PlayListItem.all
  end

  # GET /play_list_items/1 or /play_list_items/1.json
  def show
  end

  # GET /play_list_items/new
  def new
    @play_list_item = PlayListItem.new
  end

  # GET /play_list_items/1/edit
  def edit
  end

  # POST /play_list_items or /play_list_items.json
  def create
    @play_list_item = PlayListItem.new(play_list_item_params)

    respond_to do |format|
      if @play_list_item.save
        format.html { redirect_to @play_list_item, notice: "Play list item was successfully created." }
        format.json { render :show, status: :created, location: @play_list_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @play_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_list_items/1 or /play_list_items/1.json
  def update
    respond_to do |format|
      if @play_list_item.update(play_list_item_params)
        format.html { redirect_to @play_list_item, notice: "Play list item was successfully updated." }
        format.json { render :show, status: :ok, location: @play_list_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @play_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_list_items/1 or /play_list_items/1.json
  def destroy
    @play_list_item.destroy
    respond_to do |format|
      format.html { redirect_to play_list_items_url, notice: "Play list item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_list_item
      @play_list_item = PlayListItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def play_list_item_params
      params.require(:play_list_item).permit(:pair, :params, :play_list_id)
    end
end
