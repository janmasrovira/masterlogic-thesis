#!/usr/bin/awk -f

# usage: ./unicode2pdflatex.awk input > output
# alternative usage for the fish shell to rerun the program each time is modified:
# while inotifywait -e close_write ./unicode2pdflatex.awk
#     ./unicode2pdflatex.awk input > output
# end

{
    gsub("∀", "\\forall ");
    gsub("⊆", "\\subseteq ");
    gsub("ⁿ", "^n");
    gsub("₀", "_0");
    gsub("⁰", "^0");
    gsub("ᵢ", "_i");
    gsub("ⁱ", "^i");
    gsub("₂", "_2");
    gsub("₁", "_1");
    gsub("²", "^2");
    gsub("ⁿ", "^n");
    gsub("ₙ", "_n");
    gsub("ₓ", "_x");
    gsub("ᵣ", "_r");
    gsub("∩", "\\cap ");
    gsub("…", "\\ldots ");
    gsub("⇒", "\\Rightarrow ");
    gsub("⇐", "\\Leftarrow ");
    gsub("≠", "\\neq ");
    gsub("∈", "\\in ");
    gsub("∉", "\\notin ");
    gsub("∃", "\\exists ");
    gsub("⊩", "\\Vdash ");
    gsub("≔", "\\coloneqq ");
    gsub("⊨", "\\vDash ");
    gsub("⇔", "\\iff ");
    gsub("⟦", "\\llbracket ");
    gsub("⟧", "\\rrbracket ");
    gsub("∧", "\\wedge ");
    gsub("□", "\\Box ");
    gsub("▷", "\\rhd ");
    gsub("◁", "\\lhd ");
    gsub("♢", "\\Diamond ");
    gsub("𝔸", "\\mathbb{A}");
    gsub("𝔹", "\\mathbb{B}");
    gsub("ℂ", "\\mathbb{C}");
    gsub("𝔻", "\\mathbb{D}");
    gsub("𝔼", "\\mathbb{E}");
    gsub("𝔽", "\\mathbb{F}");
    gsub("𝔾", "\\mathbb{G}");
    gsub("ℕ", "\\mathbb{N}");
    gsub("𝒱", "\\mathcal{V}");
    gsub("𝒞", "\\mathcal{C}");
    gsub("𝒫", "\\mathcal{P}");
    gsub("∅", "\\empty ");
    gsub("≤", "\\leq ");
    gsub("×", "\\times ");
    gsub("¬", "\\neg ");
    gsub("⊮", "\\nVdash ");
    gsub("⊢", "\\vdash ");
    gsub("⊨", "\\vDash ");
    gsub("⊭", "\\nvDash ");
    gsub("⊥", "\\bot ");
    gsub("⊤", "\\top ");
    gsub("⊬", "\\nvdash ");
    gsub("→", "\\to ");
    gsub("∨", "\\lor ");
    gsub("∧", "\\land ");
    gsub("⟨", "\\langle ");
    gsub("⟩", "\\rangle ");
    gsub("⋃", "\\bigcup ");
    gsub("∖", "\\setminus ");
    gsub("Π", "\\Pi ");
    gsub("−", "\\minus ");
    gsub("⋆", "\\star ");
    print;
};
