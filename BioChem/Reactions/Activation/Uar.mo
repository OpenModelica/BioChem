within BioChem.Reactions.Activation;

model Uar "Reversible specific activation kinetics"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Activator;
  parameter BioChem.Units.Concentration Ka = 1 "Activation constant";
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.Concentration KmP = 1 "Backward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR = 1 "Backward maximum velocity";
equation
  rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP + Ka / a1.c);
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible specific activation kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uar;
