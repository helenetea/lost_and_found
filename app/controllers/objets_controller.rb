class ObjetsController < ApplicationController
  before_action :set_objet, only: %i[show edit update destroy]

  # GET /objets or /objets.json
  def index
    @objets = Objet.all
  end

  # GET /objets/1 or /objets/1.json
  def show
  end

  # GET /objets/new
  def new
    @objet = Objet.new
  end

  # GET /objets/1/edit
  def edit
  end

  # POST /objets or /objets.json
  def create
    @objet = Objet.new(objet_params)

    respond_to do |format|
      if @objet.save
        format.html { redirect_to @objet, notice: 'Objet was successfully created.' }
        format.json { render :show, status: :created, location: @objet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @objet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objets/1 or /objets/1.json
  def update
    respond_to do |format|
      if @objet.update(objet_params)
        format.html { redirect_to @objet, notice: 'Objet was successfully updated.' }
        format.json { render :show, status: :ok, location: @objet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @objet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objets/1 or /objets/1.json
  def destroy
    @objet = Objet.find(params[:id])
    @objet.destroy
    redirect_to root_path, notice: "L'annonce a été supprimée avec succès."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_objet
    @objet = Objet.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def objet_params
    params.expect(objet: %i[titre description photo lieu date statut])
  end
end
