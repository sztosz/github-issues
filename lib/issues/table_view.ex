defmodule TableView do
  def outpu_table(list) do
    header
    Enum.each(list, &row(&1))
  end

  defp header do
    IO.puts " #  | created_at           | title                                   "
    IO.puts "----+----------------------+-----------------------------------------"
  end

  defp row(row) do
    IO.puts(
      String.rjust(row[:id], 4) <>
      spacer <>
      String.rjust(row[:created_at], 20) <>
      spacer <>
      String.rjust(row[:name], 20)
    )
  end

  defp spacer do
    "-+-"
  end
end
