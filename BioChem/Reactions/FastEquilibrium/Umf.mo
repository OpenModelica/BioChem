within BioChem.Reactions.FastEquilibrium;

model Umf "Uni-Multi fast (instant) equilibrium reaction"
  extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
  parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
equation
  for i in 1:dimP loop
    p[i].c = s1.c * kP[i] / kS1;
  end for;
  s1.r + sum(p.r) = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Umf;
