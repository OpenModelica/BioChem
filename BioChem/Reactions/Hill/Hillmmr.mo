within BioChem.Reactions.Hill;

model Hillmmr "Reversible Hill kinetics with two modifiers"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.TwoModifiers;
  parameter Real alfa1 = 1 "Effect of s1 and p1 on binding of m";
  parameter Real alfa2 = 1 "Effect of s1 and p1 on binding of m";
  parameter Real alfa12 = 1 "Effect of s1 and p1 on binding of m";
  parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
  parameter Real h = 1 "Hill Coefficient";
  parameter BioChem.Units.Concentration m1Half = 1 "Concentration of m1 that half-saturates its binding site when s1.c = 0, p1.c = 0, m2.c = 0";
  parameter BioChem.Units.Concentration m2Half = 1 "Concentration of m1 that half-saturates its binding site when s1.c = 0, p1.c = 0, m1.c = 0";
  parameter BioChem.Units.Concentration s1Half = 1 "Substrate concentration such that v = vF/2 when p1.c = 0 and the modifiers m1.c = 0, m2.c = 0";
  parameter BioChem.Units.Concentration p1Half = 1 "Product concentration such that v = -vF/2 when p1.c = 0 and the modifiers m1.c = 0, m2.c = 0";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
protected
  Real K1;
  Real K2;
equation
  K1 = (s1.c / s1Half + p1.c / p1Half) ^ h;
  K2 = (1 + (m1.c / m1Half) ^ h + (m2.c / m2Half) ^ h) / (1 + alfa1 * (m1.c / m1Half) ^ h + alfa2 * (m2.c / m2Half) ^ h + alfa12 * (m1.c / m1Half) ^ h * (m2.c / m2Half) ^ h);
  rr = vF * s1.c / s1Half * (1 - p1.c / (s1.c * Keq)) * (s1.c / s1Half + p1.c / p1Half) ^ (h - 1) / (K1 + K2);
  annotation(
    Documentation(info = "<html>
 <p>
 Reversible Hill kinetics with two modifiers.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Hillmmr;
