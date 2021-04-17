within BioChem.Substances;

model Substance "Substance with variable concentration"
  extends Icons.Substances.Substance; 
  extends BioChem.Interfaces.Substances.Substance;
equation
  der(n)=rNet;
  annotation(Documentation(info="<html>
<p>
A substance with variable concentration.
</p>
</html>"));
end Substance;
