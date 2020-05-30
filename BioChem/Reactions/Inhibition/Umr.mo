within BioChem.Reactions.Inhibition;

model Umr "Reversible mixed inhibition kinetics"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Kis = 1 "Specific (competitive) inhibition constant";
  parameter Real Kic = 1 "Catalytic (non-competitive) inhibition constant";
  parameter Real KmS = 1 "Forward Michaelis-Menten constant";
  parameter Real KmP = 1 "Reverse Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR = 1 "Reverese maximum velocity";
equation
  rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + i1.c / Kis + (s1.c / KmS + p1.c / KmP) * (1 + i1.c / Kic));
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible mixed inhibition kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Umr;
