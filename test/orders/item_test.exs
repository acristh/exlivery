defmodule Exlivery.Orders.Item.Test do
    use ExUnit.Case

    alias Exlivery.Orders.Item


    import Exlivery.Factory

    describe "build/" do
      test "when all params are valid, return a item" do
        response =  Item.build("Pizza de peperoni", :pizza, "30.50", 1)
        expected_response = {:ok, build(:item)}

        assert response == expected_response
      end

      test "when there is an invalid category, returns an error" do
        response =  Item.build("Pizza de peperoni", :banana, "30.50", 1)
        expected_response = {:error, "Invalid parameters"}

        assert response == expected_response
      end

      test "when there is an invalid price, returns an error" do
        response =  Item.build("Pizza de peperoni", :pizza, "banana", 1)
        expected_response = {:error, "Invalid price"}

        assert response == expected_response
      end

      test "when there is an invalid quantity, returns an error" do
        response =  Item.build("Pizza de peperoni", :pizza, "30.50", -1)
        expected_response = {:error, "Invalid parameters"}

        assert response == expected_response
      end
    end
  end
