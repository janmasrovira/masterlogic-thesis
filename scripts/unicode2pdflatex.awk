#!/usr/bin/awk -f

# usage: ./unicode2pdflatex.awk input > output

{
    gsub("∀", "\\forall ");
    gsub("⊆", "\\subseteq ");
    gsub("ⁿ", "^n");
    gsub("₀", "_0");
    gsub("⁰", "^0");
    gsub("ᵢ", "_i");
    gsub("∩", "\\cap ");
    gsub("…", "\\ldots ");
    gsub("⇒", "\\Rightarrow ");
    gsub("⇐", "\\Leftarrow ");
    gsub("≠", "\\neq ");
    gsub("∈", "\\in ");
    gsub("∃", "\\exists ");
    gsub("⊩", "\\Vdash ");
    gsub("≔", "\\coloneqq ");
    gsub("⊨", "\\vDash ");
    gsub("⇔", "\\iff ");
    gsub("⟦", "\\llbracket ");
    gsub("⟧", "\\rrbracket ");
    gsub("ₙ", "_n");
    gsub("∧", "\\wedge ");
    gsub("□", "\\Box ");
    gsub("▷", "\\rhd ");
    gsub("♢", "\\Diamond ");
    gsub("𝔸", "\\mathbb{A}");
    gsub("𝔹", "\\mathbb{B}");
    gsub("ℂ", "\\mathbb{C}");
    gsub("𝔻", "\\mathbb{D}");
    gsub("ℕ", "\\mathbb{N}");
    gsub("∅", "\\empty ");
    gsub("≤", "\\leq ");
    gsub("¬", "\\neg ");
    print;
};
