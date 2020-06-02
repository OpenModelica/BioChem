within BioChem.Reactions.Inhibition;

model Usii "Irreversible substrate inhibition kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter BioChem.Units.Concentration Ki = 1 "Inhibition constant for the substrate";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / KmS / (1 + s1.c / KmS + s1.c ^ 2 / Ki);
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible substrate inhibition kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Usii;
