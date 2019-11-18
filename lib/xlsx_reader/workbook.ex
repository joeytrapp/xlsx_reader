defmodule XlsxReader.Workbook do
  @moduledoc false

  defstruct sheets: [],
            rels: nil,
            shared_strings: nil,
            style_types: nil,
            base_date: nil

  @type t :: %__MODULE__{
          sheets: [XlsxReader.Sheet.t()],
          rels: nil | map(),
          shared_strings: nil | [Strings.t()],
          style_types: nil | XlsxReader.Styles.style_types(),
          base_date: nil | Date.t()
        }
end