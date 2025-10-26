numeric u; u := 1pc;
%outputtemplate := "%j-%c.eps";
% notes to self:
% (1) epsilon is smallest number possible in (fixed-point mode)
%     epsilon = 2^-14
% (2) eps is almost as small, it is 0.00049 (why shouldn't it be 2e-11?)
verbatimtex
\font\tenssbx=cmssbx10
\font\twelvessbx=cmssbx12
\font\twelvess=cmss12
etex;

beginfig(0)
  path ground, floor, logic, sets;
  picture pic[];
  numeric i,j,w,dy; w := 2.5pt; % thickness of "ground"
  color lightgray; lightgray := 0.65white;
  ground = (-6u,-w)--(6u,-w);
  pic0 = thelabel(btex \twelvessbx Logic \#1 etex, (0,0));
  pic1 = thelabel(btex \twelvessbx Set Theory \#1 etex, (0,0));
  z0 = (min(xpart llcorner pic0, xpart llcorner pic1),-0.5w) - (0.5u, 0);
  z1 = (max(xpart lrcorner pic0, xpart lrcorner pic1),-0.5w) + (0.5u, 0);
  z2 = (xpart z1, max(ypart urcorner pic0, ypart urcorner pic1)) + (0, u);
  z3 = (xpart z0, max(ypart ulcorner pic0, ypart ulcorner pic1)) + (0, u);
  floor = z0--z1--z2--z3--cycle;
  sets := floor;
  logic := floor; % yscaled 1.05;
  dy := ypart (ulcorner logic) - ypart (llcorner logic);
  j := 0;
  % draw the floors
  for i=0 upto 1:
    draw logic shifted (0,j*dy);
    pic[j] := thelabel(btex \twelvessbx Logic \# etex, (-3pt, 1pt + j*dy + (y[2]/3.0)));
    draw pic[j];
    label(decimal(j+1) infont "cmssbx12", (3.5pt,1pt) + 0.5[lrcorner pic[j],urcorner pic[j]]);
    j := j + 1;
    draw floor shifted (0,j*dy);
    fill (floor shifted (0,j*dy)) withcolor black;
    pic[j] := thelabel(btex \twelvessbx Set Theory \# etex, (-3pt, 1pt + j*dy + (y[2]/3.0)));
    draw pic[j] withcolor white;
    label(decimal(j+1) infont "cmssbx12", (3.5pt,1pt) + 0.5[lrcorner pic[j],urcorner pic[j]]) withcolor white;
    j := j + 1;
  endfor;
  draw ground withcolor lightgray withpen pencircle scaled w;
  label(btex \twelvessbx Finitary Metatheory etex, (0, -u)) withcolor (2/3)[black,lightgray];
endfig;
end;