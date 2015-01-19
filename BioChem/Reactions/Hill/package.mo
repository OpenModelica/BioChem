within BioChem.Reactions;

package Hill "Hill kinetics reactions"
  extends BioChem.Icons.Library;

  model Hilli "Irreversible Hill kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real h = 1 "Hill coefficient";
    parameter BioChem.Units.Concentration sHalf = 1 "Substrate concentration such that v = vF/2";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  equation
    rr = vF * s1.c ^ h / (sHalf ^ h + s1.c ^ h);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Hilli;

  model Hillr "Reversible Hill kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter Real h = 1 "Hill coefficient";
    parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
    parameter BioChem.Units.Concentration sHalf = 1 "Substrate concentration such that v = vF/2";
    parameter BioChem.Units.Concentration pHalf = 1 "Product concentration such that v = -vF/2";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  equation
    rr = vF * s1.c / sHalf * (1 - p1.c / (s1.c * Keq)) * (s1.c / sHalf + p1.c / pHalf) ^ (h - 1) / (1 + (s1.c / sHalf + p1.c / pHalf) ^ h);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Hillr;

  model Hillmr "Reversible Hill kinetics with one modifier"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
    parameter Real alfa = 1 "Effect of s1 and p1 on binding of m";
    parameter Real h = 1 "Hill coefficient";
    parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
    parameter BioChem.Units.Concentration m1Half = 1 "Concentration of mA that half-saturates its binding site when s1.c = 0 and p1.c = 0";
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
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Hillmr;

  model Hillmmr "Reversible Hill kinetics with two modifiers"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.TwoModifiers;
    parameter Real alfa1 = 1 "Effect of s1 and p1 on binding of m1";
    parameter Real alfa2 = 1 "Effect of s1 and p1 on binding of m2";
    parameter Real alfa12 = 1 "Effect of s1 and p1 on binding of m1 and m2";
    parameter BioChem.Units.Concentration Keq = 1 "Equilibrium constant";
    parameter Real h = 1 "Hill coefficient";
    parameter BioChem.Units.Concentration m1Half = 1 "Concentration of m1 that half-saturates its binding site when s1.c = 0, p1.c = 0, m2.c = 0";
    parameter BioChem.Units.Concentration m2Half = 1 "Concentration of m2 that half-saturates its binding site when s1.c = 0, p1.c = 0, m1.c = 0";
    parameter BioChem.Units.Concentration s1Half = 1 "Substrate concentration such that v = vF/2 when p1.c = 0 and the modifiers m1.c = 0, m2.c = 0";
    parameter BioChem.Units.Concentration p1Half = 1 "Product concentration such that v = -vF/2 when s1.c = 0 and the modifiers m1.c = 0, m2.c = 0";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  protected
    Real K1;
    Real K2;
  equation
    K1 = (s1.c / s1Half + p1.c / p1Half) ^ h;
    K2 = (1 + (m1.c / m1Half) ^ h + (m2.c / m2Half) ^ h) / (1 + alfa1 * (m1.c / m1Half) ^ h + alfa2 * (m2.c / m2Half) ^ h + alfa12 * (m1.c / m1Half) ^ h * (m2.c / m2Half) ^ h);
    rr = vF * s1.c / s1Half * (1 - p1.c / (s1.c * Keq)) * (s1.c / s1Half + p1.c / p1Half) ^ (h - 1) / (K1 + K2);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Hillmmr;
  annotation(Documentation(info = "<p>This package contains models for Hill kinetics.
 <p><img src=\"../../Images/Hill.png\" >
  ", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Hill;