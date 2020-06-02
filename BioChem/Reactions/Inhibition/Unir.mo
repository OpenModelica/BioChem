within BioChem.Reactions.Inhibition;

model Unir "Noncompetitive inhibition (reversible)"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Ki = 1 "Inhibition constant for the substrate";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter Real KmP = 1 "Reverse Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR = 1 "Reverese maximum velocity";
equation
  rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + i1.c / Ki + (s1.c / KmS + p1.c / KmP) * (1 + i1.c / Ki));
  annotation(
    Documentation(info = "<html>
 <p>
 Noncompetitive inhibition (reversible).
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Unir;
