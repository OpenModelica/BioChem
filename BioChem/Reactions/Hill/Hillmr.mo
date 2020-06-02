within BioChem.Reactions.Hill;

model Hillmr "Reversible Hill kinetics with one modifier"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real alfa = 1 "Effect of s1 and p1 on binding of m";
  parameter Real h = 1 "Hill Coefficient";
  parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
  parameter BioChem.Units.Concentration m1Half = 1 "Concentration of mA that half-saturates its binding site when s1.c = 0, p1.c = 0, m2.c = 0";
  parameter BioChem.Units.Concentration s1Half = 1 "Substrate concentration such that v = vF/2";
  parameter BioChem.Units.Concentration p1Half = 1 "Product concentration such that v = -vF/2";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
protected
  Real K1;
  Real K2;
equation
  K1 = (s1.c / s1Half + p1.c / p1Half) ^ h;
  K2 = (1 + (m1.c / m1Half) ^ h) / (1 + alfa * (m1.c / m1Half) ^ h);
  rr = vF * s1.c / s1Half * (1 - p1.c / (s1.c * Keq)) * (s1.c / s1Half + p1.c / p1Half) ^ (h - 1) / (K1 + K2);
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible Hill kinetics with one modifier.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Hillmr;
