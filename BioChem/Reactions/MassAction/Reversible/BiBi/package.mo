within BioChem.Reactions.MassAction.Reversible;

package BiBi "A+B <-> C+D reactions"
  extends Icons.Library;

  model Bbrfibi "Bi-bi reversible forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfibi;

  model Bbrfibabi "Bi-bi reversible forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfibabi;

  model Bbrfiba "Bi-bi reversible forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfiba;

  model Bbrfi "Bi-bi reversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfi;

  model Bbrfafibi "Bi-bi reversible forward activation, forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfafibi;

  model Bbrfafibabi "Bi-bi reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfafibabi;

  model Bbrfafiba "Bi-bi reversible forward activation, forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfafiba;

  model Bbrfafi "Bi-bi reversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfafi;

  model Bbrfabi "Bi-bi reversible forward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfabi;

  model Bbrfababi "Bi-bi reversible forward activation, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfababi;

  model Bbrfaba "Bi-bi reversible forward activation, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfaba;

  model Bbrfa "Bi-bi reversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrfa;

  model Bbrbi "Bi-bi reversible backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrbi;

  model Bbrbabi "Bi-bi reversible backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrbabi;

  model Bbrba "Bi-bi reversible backward activation reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbrba;

  model Bbr "Bi-bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Bbr;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s2.c ^ nS2 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Bbr;
  annotation(
    Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end BiBi;
