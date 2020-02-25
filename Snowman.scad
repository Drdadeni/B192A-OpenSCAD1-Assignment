%import("D:/Dokumenty/CVUT/BI-3DT/02/STLs/snowman.stl");



module snowman(r=50, factor=0.7, overlap=0.2) {
    sphere(r);
    middle = r*factor;
    translate([0, 0, (r+middle)-overlap*2*r]) sphere(middle);
    top = middle*factor;
    translate([0, 0, (2*r+top)-overlap*2*middle])sphere(top);
}

// pro zobrazení musíte modul zavolat
snowman();