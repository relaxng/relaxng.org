while (<>) {
    s/iso-8859-1/utf-8/g;
    print;
}
