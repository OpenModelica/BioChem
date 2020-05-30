within BioChem.Reactions.MassAction.Reversible;

package TriUni "A+B+C <-> D reactions"
  extends Icons.Library;

  model Turfibi "Tri-uni reversible forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfibi;

  model Turfibabi "Tri-uni reversible forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfibabi;

  model Turfiba "Tri-uni reversible forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfiba;

  model Turfi "Tri-uni reversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfi;

  model Turfafibi "Tri-uni reversible forward activation, forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfafibi;

  model Turfafibabi "Tri-uni reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfafibabi;

  model Turfafiba "Tri-uni reversible forward activation, forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfafiba;

  model Turfafi "Tri-uni reversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfafi;

  model Turfabi "Tri-uni reversible forward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfabi;

  model Turfababi "Tri-uni reversible forward activation, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfababi;

  model Turfaba "Tri-uni reversible forward activation, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfaba;

  model Turfa "Tri-uni reversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turfa;

  model Turbi "Tri-uni reversible backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turbi;

  model Turbabi "Tri-uni reversible backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turbabi;

  model Turba "Tri-uni reversible backward activation reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Turba;

  model Tur "Tri-uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Tur;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s3.c ^ nS3 * s1.V - k2 * p1.c ^ nP1 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Tur;
  annotation(
    Documentation(info = "<html>
<p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
</html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end TriUni;
