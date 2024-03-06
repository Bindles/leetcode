defmodule Solution do
  def insert(intervals, new_interval) do
    [new_interval | intervals]
    |> Enum.sort()
    |> merge([])
  end

  def merge([], result), do: Enum.reverse(result)
  def merge([[s, e] | tail], []), do: merge(tail, [[s, e]])
  def merge([[s, e] | tail], [[ps, pe] | p_tail] = rest) do
    if s <= pe do
      merge(tail, [[ps, max(pe, e)] | p_tail])
    else
      merge(tail, [[s, e] | rest])
    end
  end
end
