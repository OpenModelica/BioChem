package BioChem
  extends Icons.Library;

  annotation(
    preferedView = "info",
    Documentation(info = "<html>


<h1>About the BioChem Library</h1>
<p>
 BioChem is a package for biochemical modeling and simulation with Modelica.
</p>

 <h2>Basic idea of the library</h2>
 <p>
 The design idea behind the <em>BioChem</em> library is to create a general purpose Modelica library
for modeling, simulation and visualization of biological and biochemical systems.
The classes implemented in the BioChem library describe substances and reactions that can
take place in-between these substances in a diverse number of biochemical pathways.
</p>

<br>
<img src=\"modelica://BioChem/Resources/Images/Library.png\" ><caption> Packages in the library </caption>
<br>

 <h2>Library Structure</h2>
 <p>
 Since the design objective for <em>BioChem</em> was to provide properties and attributes that are
common in biological and biochemical systems the library contains several packages holding
classes and partial models. The classes can be used as they are in sub libraries to <em>BioChem</em>,
while the partial models must be further extended to fully functional models.
</p>
<h2>Users Guide</h2>
<p>
Users Guide discusses some aspects of the <em>BioChem</em> Library, including a Getting Started chapter.
</p>
<h2>References</h2>
<p>
<b>BioChem - A Biological and Chemical Library for Modelica (Conference paper)</b><br>
Emma Larsdotter Nilsson, Peter Fritzson.
Proceedings of the 3rd International Modelica Conference (November 3-4, Link&ouml;ping, Sweden) 2003, pp. 215-220
<br>
<br>
<b>A minimal cascade model for the mitotic oscillator involving cyclin
and cdc2 kinase</b><br>
Albert Goldbeter.
Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 9107-9111, October 1991
Cell Biology
<br>
<br>

<b>Hierarchical modeling of diabetes</b><br>
Elin Nyman. ISRN:LiU-IKE-EX-09/14. Link&ouml;ping University 2009.

<br>
<br>


<b>A Minimal Generic Model of Bacteria-Induced Intracellular Ca<sup>2+</sup>
Oscillations in Epithelial Cells</b><br>
Camilla Oxhamre, Agneta Richter-Dahlfors, Vladimir P. Zhdanov, and Bengt Kasemo. Biophysical Journal Volume 88 April 2005 2976-2981.
<br>
<br>



<b> A mathematical model of metabolic insulin signaling.</b><br>
  A. Sedaghat, R, A. Sherman, and J. Quon, Michael. American Journal of Physiology - Endocrinology and Metabolism, 283:1048-1101, Jul 2002.

<br>
<br>





<b>Modeling the cell division cycle: cdc2 and cyclin interactions</b><br>
John J. Tyson. Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 7328-7332, August 1991
Cell Biology
<br>
<br>
<b>Modeling Feedback Loops of the Mammalian Circadian Oscillator</b><br>
Becker-Weimann S, Wolf J, Herzel H, Kramer A. Biophysical Journal Volume 87 November 2004 3023-3034

<br>
<br>
</p>



 </html>", revisions = "<html><head></head><body><h2>History</h2>
 <p>The first version of the library was created by Emma Larsdotter Nilsson at Linköping University.
The current version of the library has been further developed by Erik Ulfhielm at
Linköping University, and by MathCore Engineering AB.
</p>
 <ul>
 <li>Main Author 2007-2009: MathCore Engineering AB</li>
 <li>Main Author 2006: Erik Ulfhielm</li>
 <li>Main Author 2004-2005: Emma Larsdotter Nilsson</li>
 </ul>
<p>Copyright © 2005-2015 MathCore Engineering AB, Linköpings universitet and Modelica Association</p>
<p>The BioChem library is free software released under the terms of the <a href=\"modelica://BioChem/Resources/MPL_2.0.html\">Mozilla Public License, version 2.0</a>.</p>
<h2>Versions</h2>
<ul>
<li>
Version 1.0.2 (2020-06-02)
  <ul>
    <li>All major components are separated into *.mo files</li>
    <li>MSL 3.2.3&nbsp;</li> 
  </ul>
</li>
<li>
Version 1.0.1 (2013-04-18)
  <ul>
    <li>Applied patch to latest version provided by MathCore Engineering AB.</li>
    <li>Changed uses-annotation to MSL 3.2, encoding to ASCII+HTML entities, and started using modelica:// URLs for image sources (Martin Sjölund).</li>
  </ul>
</li>
<li>Version 1.0 (2009-08-31)</li>
<li>Version 0.96 (2008-12-19)</li>
</ul>
 </body></html>"),
    uses(Modelica(version = "3.2.3")),
    version = "1.0.2",
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(origin = {3.55271e-15, 3.76}, points = {{-50, -60}, {-50, -27.52}, {10, -27.52}}, smooth = Smooth.Bezier), Line(origin = {-1.135, 4.09474}, points = {{-48.865, 10}, {-48.865, -27.61}, {11.135, -27.61}}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Ellipse(origin = {30.4112, -23.4648}, lineColor = {0, 85, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Sphere, extent = {{-20.4112, -20}, {20.4112, 20}}), Ellipse(origin = {6.28735, -0.665395}, lineColor = {161, 107, 0}, fillColor = {250, 167, 0}, fillPattern = FillPattern.Sphere, extent = {{-76.2873, -79.3346}, {-35.4736, -39.3346}}), Ellipse(origin = {4.98569, -1.03187}, lineColor = {117, 0, 0}, fillColor = {170, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-75.8122, -6.13331}, {-34.9857, 33.8667}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end BioChem;
