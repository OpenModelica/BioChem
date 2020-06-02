within BioChem.Interfaces.Reactions;

partial model Uui "Uni-Uni irreversible reaction"
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
  extends BioChem.Interfaces.Reactions.Basics.OneProduct;
  BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
  BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
equation
  s1.r=nS1*rr;
  p1.r=-nP1*rr;
end Uui;
