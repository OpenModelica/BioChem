within BioChem.Reactions.MassAction.Reversible;

package BiTri "A+B <-> C+D+E reactions"
  extends Icons.Library;
  model Btrfibi "Bi-tri reversible forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfibi;

  model Btrfibabi "Bi-tri reversible forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfibabi;

  model Btrfiba "Bi-tri reversible forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfiba;

  model Btrfi "Bi-tri reversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfi;

  model Btrfafibi "Bi-tri reversible forward activation, forward inhibition, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfafibi;

  model Btrfafibabi "Bi-tri reversible forward activation, forward inhibition, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfafibabi;

  model Btrfafiba "Bi-tri reversible forward activation, forward inhibition, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfafiba;

  model Btrfafi "Bi-tri reversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfafi;

  model Btrfabi "Bi-tri reversible forward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfabi;

  model Btrfababi "Bi-tri reversible forward activation, backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfababi;

  model Btrfaba "Bi-tri reversible forward activation, backward activation reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfaba;

  model Btrfa "Bi-tri reversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrfa;

  model Btrbi "Bi-tri reversible backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s2.c^nS2*s1.V - k2/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrbi;

  model Btrbabi "Bi-tri reversible backward activation, backward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrbabi;

  model Btrba "Bi-tri reversible backward activation reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorBackward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s2.c^nS2*s1.V - k2*aB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btrba;

  model Btr "Bi-tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Btr;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    parameter BioChem.Units.ReactionCoefficient k2=1 "Backwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s2.c^nS2*s1.V - k2*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Btr;

  annotation(Documentation(info="<html>
<p>This package contains models for stoichiometric reactions with two reactants and three products.</p>
</html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end BiTri;
