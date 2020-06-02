within BioChem.Reactions.Inhibition;

model Umi "Irreversible mixed inhibition kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Kic = 1 "Catalytic inhibition constant";
  parameter Real Kis = 1 "Specific inhibition constant";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / KmS / (1 + i1.c / Kis + s1.c / KmS * (1 + i1.c / Kic));
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible mixed inhibition kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Umi;
