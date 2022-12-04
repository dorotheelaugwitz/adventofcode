defmodule Day01 do
  @moduledoc false

  def max_calories(full_item_list) do
    split_elf_groups(full_item_list)
    |> Enum.map(fn x -> add_up_calories(x) end)
    |> Enum.max()
  end

  def top_three_total(full_item_list) do
    split_elf_groups(full_item_list)
    |> Enum.map(fn x -> add_up_calories(x) end)
    |> Enum.sort()
    |> Enum.take(-3)
    |> Enum.sum()
  end

  defp split_elf_groups(full_item_list) do
    String.split(full_item_list, "\n\n")
    |> Enum.map(fn x -> split_elf_group(x) end)
  end

  defp split_elf_group(elf_item_list) do
    String.split(elf_item_list, "\n", trim: true)
  end

  defp add_up_calories(elf_items) do
    Enum.map(elf_items, &String.to_integer/1)
    |> Enum.sum()
  end
end
