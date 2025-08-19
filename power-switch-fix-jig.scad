include <openscad-library-manager/BOSL2/std.scad>
include <openscad-library-manager/BOSL2/screws.scad>

$fn=50;

module jig()
{
    diff()
    cuboid([145, 150, 3])
    {
        fwd(3.65) grid_copies(n=[2,2], spacing=[19.05 * 2, 19.05 * 4])
        {
            position(TOP) cyl(d=8,l=7, anchor=BOTTOM);
            position(BOTTOM) tag("remove") screw_hole("M2.5", l=12, anchor=TOP, orient=DOWN, head="flat", counterbore=2);
        }
        tag("remove") position(BOTTOM) grid_copies(n=[2,2], spacing=[130,135]) screw_hole("1/4-20", l=12, anchor=BOTTOM);
    }
}

jig();
