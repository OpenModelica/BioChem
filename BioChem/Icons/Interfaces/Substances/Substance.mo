within BioChem.Icons.Interfaces.Substances;

partial class Substance
  extends Icons.Base;
  annotation(
    Icon(graphics = {Ellipse(fillColor = {123, 152, 255}, extent = {{-50, -50}, {50, 50}})}),
    Documentation(info = "<html><head></head><body>The circle in the middle implies that the substance employing this icon will be connected to arbitrary reaction nodes through only one connector, graphically embedded in the center of the substance icon.</body></html>"));
end Substance;
