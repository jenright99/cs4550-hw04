defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
     2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    # Maybe delegate this too.
   y = []
   i = 2 
   whilefactor(x, i, y)
  end

  def whilefactor(x, i, y) do
	if i > x do
		y
	else
		if rem(x, i) == 0 do
			whilefactor(trunc(x/i), i, y ++ [i])
		else
			whilefactor(x, i+1, y)
		end
	end
  end

  # TODO: Add a palindrome? function.
  def palindrome(x) when is_binary(x)  do
	i = 0
	r = String.length(x) - 1
	whilepalindrome(x, i, r)
end

  def whilepalindrome(x, i, r) do
	if i >= r do
		true
	else

		if String.at(x, i) == String.at(x, r) do
			whilepalindrome(x, i + 1, r - 1)
		else
			false
		end
	end
  end
end
