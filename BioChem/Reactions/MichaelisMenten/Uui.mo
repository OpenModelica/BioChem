within BioChem.Reactions.MichaelisMenten;

model Uui "Uni-uni irreversible simple Michaelis-Menten"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / (KmS + s1.c);
  annotation(
    Documentation(info = "<html>
 <p>
 Uni-uni irreversible simple Michaelis-Menten.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uui;
