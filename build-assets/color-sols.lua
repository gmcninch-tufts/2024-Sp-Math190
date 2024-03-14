function Div(el)

   if el.classes:includes("solution") then
    -- insert element in front
    table.insert(
      el.content, 1,
      pandoc.RawBlock("latex", "\\vspace{5mm} \\color{red} \\hrule \\vspace{2mm} \\noindent \\textsc{Solution}: \\par"))
    -- insert element at the back
    table.insert(
      el.content,
      pandoc.RawBlock("latex", "\\vspace{5mm} \\hrule \\color{black} \\vspace{5mm}"))
  end
  return el
end
