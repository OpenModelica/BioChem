within BioChem.Reactions.MichaelisMenten;

model Isouur "Iso uni-uni"
  extends BioChem.Interfaces.Reactions.Uur;
  parameter Real Keq = 1 "Equilibrum constant";
  parameter Real Kii = 1 "Isoinhibition constant";
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.Concentration KmP = 1 "Reverse Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * (s1.c - p1.c / Keq) / (s1.c * (1 + p1.c / Kii) + KmS * (1 + p1.c / KmP));
  annotation(
    Documentation(info = "<html>
 <p>
 Iso uni-uni.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Isouur;
