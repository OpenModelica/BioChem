within BioChem.Reactions.MassAction.Irreversible;

package UniUni "A -> B reactions"
  extends BioChem.Icons.Library;
  model Uuifi "Uni-uni irrerversible forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s1.V;
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Uuifi;

  model Uuifafi "Uni-uni irrerversible forward activation, forward inhibition reaction"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s1.V;
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Uuifafi;

  model Uuifa "Uni-uni irrerversible forward activation reaction"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s1.V;
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Uuifa;

  model Uui "Uni-uni irrerversible reaction"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s1.V;
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Uui;

  annotation(Documentation(info="<html>
<p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
</html>"));
end UniUni;
