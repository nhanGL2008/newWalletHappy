class TransactionsController < ApplicationController
  before_action :find_transaction, :calculate_balance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @transactions = Transaction.all
    # @wallets = Wallet.all
    # @categories = Category.all
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end


  def create
    # @wallet = Wallet.find(params[:wallet_id])
    # @category = Category.find(params[:category_id])
    @transaction = Transaction.new(transactions_params)
    # @transaction.category_id = @category.id
    # @transaction.wallet_id = @wallet.id
    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
      render "New"
    end
  end

  def edit

  end

  def update
    if @transaction.update(transactions_params)
      redirect_to @transaction
    else
      render "Edit"
    end
  end

  def destroy
    @transaction.destroy
    redirect_to root_path
  end

  private

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

  def transactions_params
    params.require(:transaction).permit(:day, :money, :note, :wallet_id, :category_id)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
