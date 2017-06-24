defmodule Bitfinex do
  @moduledoc """
  Documentation for Bitfinex.
  """

  use HTTPoison.Base

  @base_url "https://api.bitfinex.com/v1/pubticker/btcusd"

  @doc """
  Tick BTC/USD

  ## Examples

      iex> Bitfinex.ticker

  """
  def ticker do
    with {:ok, result} <- get(@base_url),
         do: Poison.decode(result.body)
  end
end
