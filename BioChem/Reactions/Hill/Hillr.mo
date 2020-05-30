within BioChem.Reactions.Hill;

model Hillr "Reversible Hill kinetics"
  extends BioChem.Interfaces.Reactions.Uur;
  parameter Real h = 1 "Hill Coefficient";
  parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
  parameter BioChem.Units.Concentration sHalf = 1 "Substrate concentration such that v = vF/2";
  parameter BioChem.Units.Concentration pHalf = 1 "Product concentration such that v = -vF/2";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / sHalf * (1 - p1.c / (s1.c * Keq)) * (s1.c / sHalf + p1.c / pHalf) ^ (h - 1) / (1 + (s1.c / sHalf + p1.c / pHalf) ^ h);
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible Hill kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Hillr;
