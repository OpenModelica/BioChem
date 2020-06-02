within BioChem.Reactions.FastEquilibrium;

model Mmf "Multi-Multi fast (instant) equilibrium reaction"
  extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  parameter BioChem.Units.EquilibriumCoefficient kS[dimS] = fill(1, dimS) "Equilibrium coefficients for the substrates";
  parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
equation
  for i in 1:dimP loop
    p[i].c = s[1].c * kP[i] / kS[1];
  end for;
  for i in 2:dimS loop
    s[i].c = s[1].c * kS[i] / kS[1];
  end for;
  sum(s.r) + sum(p.r) = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Mmf;
