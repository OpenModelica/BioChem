within BioChem.Reactions.Inhibition;

model Uuci "Irreversible uncompetitive inhibition"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Ki = 1 "Inhibition constant for the substrate";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / KmS / (1 + s1.c / KmS * (1 + i1.c / Ki));
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible uncompetitive inhibition.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uuci;
