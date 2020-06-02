within BioChem.Reactions.BiSubstrate;

model Ordubr "Ordered uni-bi kinetics"
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
  extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
  parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
  parameter BioChem.Units.Concentration KiP1 = 1 "Product inhibition constant of s1.c acting on the reverse reaction";
  parameter BioChem.Units.Concentration KmS1 = 1 "Concentration of s1.c such that v = vF/2 (Michaelis constant) at zero p1.c and zero p2.c";
  parameter BioChem.Units.Concentration KmP1 = 1 "Concentration of p1.c such that v = -vR/2 (Michaelis constant) at zero s1.c and zero s2.c";
  parameter BioChem.Units.Concentration KmP2 = 1 "Concentration of p2.c such that v = -vR/2 (Michaelis constant) at zero s1.c and saturating p1.c";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR = 1 "Reverse maximum velocity";
equation
  s1.r = rr;
  p1.r = -rr;
  p2.r = -rr;
  rr = vF * (s1.c - p1.c * p2.c / Keq) / (KmS1 + s1.c * (1 + p1.c / KiP1) + vF / (vR * Keq) * (KmP2 * p1.c + KmP1 * p2.c + p1.c * p2.c));
  annotation(
    Documentation(info = "<html>
 <p>
 Ordered uni-bi kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Ordubr;
