require 'test_helper'

class AccountTransactionsControllerTest < ActionController::TestCase
  setup do
    @account_transaction = account_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_transaction" do
    assert_difference('AccountTransaction.count') do
      post :create, account_transaction: { credit: @account_transaction.credit, debit: @account_transaction.debit, note: @account_transaction.note }
    end

    assert_redirected_to account_transaction_path(assigns(:account_transaction))
  end

  test "should show account_transaction" do
    get :show, id: @account_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_transaction
    assert_response :success
  end

  test "should update account_transaction" do
    patch :update, id: @account_transaction, account_transaction: { credit: @account_transaction.credit, debit: @account_transaction.debit, note: @account_transaction.note }
    assert_redirected_to account_transaction_path(assigns(:account_transaction))
  end

  test "should destroy account_transaction" do
    assert_difference('AccountTransaction.count', -1) do
      delete :destroy, id: @account_transaction
    end

    assert_redirected_to account_transactions_path
  end
end
