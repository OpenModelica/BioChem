within BioChem.Reactions.MassAction.Reversible;

package UniTri "A <-> B+C+D reactions"
  extends Icons.Library;

  model Utrfibi "Uni-tri reversible forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfibi;

  model Utrfibabi "Uni-tri reversible forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfibabi;

  model Utrfiba "Uni-tri reversible forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfiba;

  model Utrfi "Uni-tri reversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfi;

  model Utrfafibi "Uni-tri reversible forward activation, forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfafibi;

  model Utrfafibabi "Uni-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfafibabi;

  model Utrfafiba "Uni-tri reversible forward activation, forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfafiba;

  model Utrfafi "Uni-tri reversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c / iF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfafi;

  model Utrfabi "Uni-tri reversible forward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfabi;

  model Utrfababi "Uni-tri reversible forward activation, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfababi;

  model Utrfaba "Uni-tri reversible forward activation, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfaba;

  model Utrfa "Uni-tri reversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * aF1.c * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrfa;

  model Utrbi "Uni-tri reversible backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V - k2 / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrbi;

  model Utrbabi "Uni-tri reversible backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c / iB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrbabi;

  model Utrba "Uni-tri reversible backward activation reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V - k2 * aB1.c * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utrba;

  model Utr "Uni-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Utr;
    parameter BioChem.Units.ReactionCoefficient k1 = 1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2 = 1 "Backwards reaction coefficient for the reaction";
  equation
    rr = k1 * s1.c ^ nS1 * s1.V - k2 * p1.c ^ nP1 * p2.c ^ nP2 * p3.c ^ nP3 * p1.V;
    annotation(
      Documentation,
      Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Utr;
  annotation(
    Documentation(info = "<html>
 <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end UniTri;
