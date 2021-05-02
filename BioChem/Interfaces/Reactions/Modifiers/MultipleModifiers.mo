within BioChem.Interfaces.Reactions.Modifiers;

partial model MultipleModifiers
  extends BioChem.Icons.Interfaces.Reactions.Modifiers.MultipleModifiers;
  parameter Integer dimM "number of modifiers";
  BioChem.Interfaces.Nodes.ModifierConnector m[dimM] annotation(
    Placement(transformation(origin = {-2.9976e-15, 90}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-8.88178e-16, 90}, extent = {{-18.75, -18.75}, {18.75, 18.75}})));
equation
  m.r = fill(0, dimM);
end MultipleModifiers;
