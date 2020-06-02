within BioChem.Reactions.MassAction.Irreversible;

package UniUni "A -> B reactions"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
</html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  model Uuifi "Uni-uni irrerversible forward inhibition reaction"
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1/iF1.c*s1.c^nS1*s1.V;
  end Uuifi;

  model Uuifafi "Uni-uni irrerversible forward activation, forward inhibition reaction"
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c/iF1.c*s1.c^nS1*s1.V;
  end Uuifafi;

  model Uuifa "Uni-uni irrerversible forward activation reaction"
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*aF1.c*s1.c^nS1*s1.V;
  end Uuifa;

  model Uui "Uni-uni irrerversible reaction"
    annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
  equation
    rr=k1*s1.c^nS1*s1.V;
  end Uui;

end UniUni;
