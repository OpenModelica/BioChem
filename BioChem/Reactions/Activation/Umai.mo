within BioChem.Reactions.Activation;

model Umai "Irreversible mixed activation kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Activator;
  parameter BioChem.Units.Concentration Kac = 1 "Activation constant";
  parameter BioChem.Units.Concentration Kas = 1 "Activation constant";
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c * a1.c / (s1.c * (a1.c + Kac) + KmS * (a1.c + Kas));
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible mixed activation kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Umai;
