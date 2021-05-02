within BioChem.Interfaces.Reactions;

partial model Mmr "Multi-Multi reversible reaction"
  extends BioChem.Icons.Base;
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  BioChem.Units.StoichiometricCoefficient nS[dimS] = fill(1, dimS) "Stoichiometric coefficients for the substrates";
  BioChem.Units.StoichiometricCoefficient nP[dimP] = fill(1, dimP) "Stoichiometric coefficients for the products";
equation
  s.r = nS * rr;
  p.r = -nP * rr;
end Mmr;
