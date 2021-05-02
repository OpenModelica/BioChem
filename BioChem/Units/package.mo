within BioChem;

package Units "Units used in BioChem"
  extends BioChem.Icons.Units;
  type AmountOfSubstance = Icons.Units.TypeRealBase(quantity = "AmountOfSubstance", unit = "mol", min = 0) "Amount of substance [mol]" ;
  type Celcius 
    extends Modelica.Units.NonSI.Temperature_degC ;
    annotation(Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Celcius;
  type Concentration = Icons.Units.TypeRealBase(quantity = "Concentration", unit = "mol/l", min = 0) "Concentration [mol/l]" ;
  type DilutionRate = Icons.Units.TypeRealBase(quantity = "Dilution rate", unit = "/s") "Dilution rate [?]" ;
  type EquilibriumCoefficient = Icons.Units.TypeRealBase(quantity = "Equilibrium coefficient", unit = "1") "";
  
  type IonicCharge = Icons.Units.TypeIntegerBase(quantity = "Ionic charge", unit = "1") "Ionic charge";
  type MolarFlowRate = Icons.Units.TypeRealBase(quantity = "Molar flow rate", unit = "mol/s") "Molar flow rate [mol/s]" ;
  type Pressure 
    extends Modelica.Units.SI.Pressure;
    annotation(Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Pressure;
  type ReactionCoefficient = Icons.Units.TypeRealBase(quantity = "Reaction coefficient", unit = "1") "Reaction coefficient" ;
  type ReactionRate = Icons.Units.TypeRealBase(quantity = "Reaction rate", unit = "mol/s") "Reaction rate [mos/s]";
  type StoichiometricCoefficient = Icons.Units.TypeRealBase(quantity = "Stoichiometric coefficient", unit = "1") "Stoichiometric coefficient";
  type Volume "Volume [l]"
    extends Modelica.Units.NonSI.Volume_litre;
    annotation(Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  end Volume;
  type VolumeChangeConstant = Icons.Units.TypeRealBase(quantity = "Volume change constant", unit = "l/s") "Volume change constant [1/s]" ;
  type VolumetricReactionRate =
     Icons.Units.TypeRealBase(final quantity="Volumetric reaction rate",final unit = "mol/(s.l)")
     "Volumetric reaction rate [mol/(l.s)}" ;
  annotation(
    Documentation(info = "<html>
<h1>Units</h1>
 <p>
 This pace contains definitions of units that are common in biochemical models.
 </p>
<<<<<<< HEAD
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {0, -13.3333}, fillPattern = FillPattern.Solid, extent = {{-100, -86.6667}, {73.34, 43.3333}}, textString = "C", fontName = "Arial"), Text(origin = {0, -10}, fillPattern = FillPattern.Solid, extent = {{6.51, 6.81}, {50, 53.19}}, textString = "o", fontName = "Arial")}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
  annotation(
    Documentation(info = "<html>
<h1>Units</h1>
 <p>
 This pace contains definitions of units that are common in biochemical models.
 </p>
 </html>", revisions = ""));
end Units;
