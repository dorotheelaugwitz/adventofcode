defmodule Day03 do
  @moduledoc false

  @lookup_alphabet [
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
    "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
  ]

  def item_priority_sum(rucksacks) do
    String.split(rucksacks, "\n", trim: true)
    |> Enum.map(fn x -> prioritize_common_item(x) end)
    |> Enum.sum()
  end

  defp prioritize_common_item(rucksack_content) do
    {first_half, second_half} = split_content(rucksack_content)
    common_item = find_common_item(first_half, second_half)
    prioritize(common_item)
  end

  defp split_content(rucksack_content) do
    length = String.length(rucksack_content)
    String.split_at(rucksack_content, div(length, 2))
  end

  defp find_common_item(substring1, substring2) do
    list1 = String.split(substring1, "", trim: true)
    list2 = String.split(substring2, "", trim: true)
    List.first(list1 -- (list1 -- list2))
  end

  defp prioritize(item) do
    Enum.find_index(@lookup_alphabet, fn x -> x == item end) + 1
  end
end
