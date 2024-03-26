defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Rafael",
      email: "rafael@banana.com",
      cpf: "123456789",
      age: 27,
      address: "Rua das Bananeiras"
    }
  end

  def item_factory do
    %Item{
      description: "Pizza de peperoni",
      category: :pizza,
      unity_price: Decimal.new("30.50"),
      quantity: 1
    }
  end

end
