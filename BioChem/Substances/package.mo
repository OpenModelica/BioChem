within BioChem;

package Substances "Reaction nodes"
  extends BioChem.Icons.Substances;

    annotation(
    Documentation(info = "<html>
<h1>Substances</h1>
 <p>
 This package contains different types of nodes needed for representing a substance in a biochemical pathway.
 Substances are connected to reactions through connectors placed
 on the rim of the circle representing the substance.<br>
The substance models are specified by extending the partial models of substance nodes in
<a href=\"Modelica://BioChem.Interfaces.Substances\">Substances</a>
 and adding additional attributes and equations.
The
<a href=\"Modelica://BioChem.Substances.Substance\">Substances</a>

 model is used when the concentration in a substance node is allowed to change without restrictions during a simulation, while

<a href=\"Modelica://BioChem.Substances.BoundarySubstance\">BoundarySubstances</a>
 is used when the concentration can only be changed using events. This correspond to species with the fixed or boundary attribute set in SBML.<br>
The
<a href=\"Modelica://BioChem.Substances.AmbientSubstance\">AmbientSubstance</a>
 is a substance used as a reservoir in reactions. This corresponds to the empty list of reactants or the empty list of products in an SBML reaction.
When the concentration is not determined by reactions, the

<a href=\"Modelica://BioChem.Substances.SignalSubstance\">SignalSubstance</a>
 model is used. Then the substance concentration is regulated by external equations, and it  corresponds to SBML species changed by any SBML rules.
 </p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Substance.png\" alt=\"Fig1: Substance\">
</html></html>", revisions = ""));

end Substances;
