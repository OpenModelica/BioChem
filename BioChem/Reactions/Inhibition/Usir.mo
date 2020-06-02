within BioChem.Reactions.Inhibition;

model Usir "Reversible substrate inhibition kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter BioChem.Units.Concentration Ki = 1 "Inhibition constant for the substrate";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter Real KmP = 1 "Reverese Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR = 1 "Reversible maximum velocity";
equation
  rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP + s1.c ^ 2 / Ki);
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible substrate inhibition kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Usir;
