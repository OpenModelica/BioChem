within BioChem.Reactions.MassAction.Irreversible;

package TriUni "A+B+C -> D reactions"
  extends BioChem.Icons.Library;

  model Tuifi "Tri-uni irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tui;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Tuifi;

  model Tuifafi "Tri-uni irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Tuifafi;

  model Tuifa "Tri-uni irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Tui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Tuifa;

  model Tui "Tri-uni irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Tui;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V;
  end Tui;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
</html>"));
end TriUni;
