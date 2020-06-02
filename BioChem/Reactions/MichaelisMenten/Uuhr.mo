within BioChem.Reactions.MichaelisMenten;

model Uuhr "Uni-Uni reversible simple Michaelis-Menten with Haldane adjustment"
  extends BioChem.Interfaces.Reactions.Uur;
  parameter Real Keq = 1 "Equilibrum constant";
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.Concentration KmP = 1 "Reverse Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF / KmS * (s1.c - p1.c / Keq) / (1 + s1.c / KmS + p1.c / KmP);
  annotation(
    Documentation(info = "<html>
 <p>
 Uni-Uni reversible simple Michaelis-Menten with Haldane adjustment.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uuhr;
