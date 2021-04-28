within BioChem.Reactions.MassAction.Irreversible;

package BiBi "A+B -> C+D reactions"
  extends BioChem.Icons.Library;

  model Bbifi "Bi-bi irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbi;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bbifi;

  model Bbifafi "Bi-bi irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bbifafi;

  model Bbifa "Bi-bi irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbi;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bbifa;

  model Bbi "Bi-bi irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Bbi;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V;
  end Bbi;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
</html>"));
end BiBi;
