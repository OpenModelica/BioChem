within BioChem.Interfaces.Reactions;

partial model Mbi "Multi-Bi irreversible reaction"
  extends BioChem.Icons.Interfaces.Reactions.Mbi;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
  extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
  BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
  BioChem.Units.StoichiometricCoefficient nP1 = 1 "Stoichiometric coefficient for product 1";
  BioChem.Units.StoichiometricCoefficient nP2 = 1 "Stoichiometric coefficient for product 2";
equation
  s.r = nS * rr;
  p1.r = -nP1 * rr;
  p2.r = -nP2 * rr;
end Mbi;
