within BioChem.Interfaces.Reactions;

partial model Mui "Multi-Uni irreversible reaction"
  extends BioChem.Icons.Interfaces.Reactions.Mui;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
  extends BioChem.Interfaces.Reactions.Basics.OneProduct;
  BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
equation
  s.r = nS * rr;
  p1.r = -nP1 * rr;
end Mui;
