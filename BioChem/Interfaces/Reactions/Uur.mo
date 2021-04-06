within BioChem.Interfaces.Reactions;

partial model Uur "Uni-Uni reversible reaction"
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
  extends BioChem.Interfaces.Reactions.Basics.OneProduct;
  BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
  BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
equation
  s1.r=nS1*rr;
  p1.r=-nP1*rr;
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Uur;
