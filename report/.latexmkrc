$recorder = 1;
$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = "xelatex --halt-on-error --synctex=1 --shell-escape %O %S";
$pdf_previewer = "";


add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg ist";
sub makeglossaries {
    my ($base_name, $path) = fileparse( $_[0] );
    pushd $path;
    my $return = system "makeglossaries", $base_name;
    popd;
    return $return;
}