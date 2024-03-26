defmodule Exlivery.Users.User.Test do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are valid, return the user" do
      # name, email, cpf, age, address
      response =
        User.build(
          "Rafael",
          "rafael@banana.com",
          "123456789",
          27,
          "Rua das Bananeiras"
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid params, return a error" do
      response =
        User.build(
          "Andre Filho",
          "andre@banana.com",
          "98118006515",
          8,
          "Rua Raul Leite, 1470"
        )

      expected_response = {:error, "Invalid parameters!"}

      assert response == expected_response
    end
  end
end
