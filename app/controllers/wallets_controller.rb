class WalletsController < ApplicationController
  before_action :set_wallet, :calculate_balance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @wallets = Wallet.all.order("created_at DESC")
  end

  def show
  end

  def new
    @wallet = current_user.wallets.build
  end

  def edit
  end

  def calculate_balance
    Wallet.all.each do |wallet|
      Transaction.all.each do |transac|
        if wallet.id === transac.wallet_id
          Category.all.each do |cate|
            if cate.id === transac.category_id
              if cate.ctype ===true
                wallet.balance += transac.money
              else
                wallet.balance -= transac.money
              end
              if wallet.balance <= 0
                wallet.balance = 0
              end
            end
          end
        end
      end
    end
  end

  def create
    @wallet = current_user.wallets.build(wallet_params)

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to @wallet, notice: 'Wallet was successfully created.' }
        format.json { render :show, status: :created, location: @wallet }
      else
        format.html { render :new }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallets/1
  # PATCH/PUT /wallets/1.json
  def update
    respond_to do |format|
      if @wallet.update(wallet_params)
        format.html { redirect_to @wallet, notice: 'Wallet was successfully updated.' }
        format.json { render :show, status: :ok, location: @wallet }
      else
        format.html { render :edit }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallets/1
  # DELETE /wallets/1.json
  def destroy
    @wallet.destroy
    respond_to do |format|
      format.html { redirect_to wallets_url, notice: 'Wallet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_wallet
    @wallet = Wallet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def wallet_params
    params.require(:wallet).permit(:name, :balance)
  end
end
