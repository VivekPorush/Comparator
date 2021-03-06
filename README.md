Comparator
==========

Comparator Analysis

    ****************************************************************
    ***			      Analog And Mixed Signal VLSI                    
    ***	      Comparator version 0.0.1 by Porush, Vivek  
    ***			<vporus2@uic.edu;vivek.91.porush@gmail.com>          
    ****************************************************************
=====================
General Usage Notes
=====================
	- This particular version is specified for LTSpice/HSPICE.
	
	- Max threads are limited to 4 in LTSPice, thus limiting performance & extended
	  simulation times.

	- This spice file is a simple comparator analysis and does not require much processing.

=============
Introduction
=============
    This package contains complete Spice code for an Comparator implementation on LTSpice & HSPICE.
    Every effort has been made to improve portability of this program. This code can be used “as it is” 
    on LTSpice/ HSPICE. However, PSPICE portability is not verified. All additional issues and feedback can
    be forwarded to the below mentioned contact information. 
    
==========
Features
==========

	-  LM 741 Op-Amp Application

	-  Comparator analysis.

	-  Nation Semiconductors LM741 Model.

==============
Installation
==============
Besides the LTSpice/HSpice/PSpice software, you should have VIM, and (optionally) Matlab installed 
on your system for better graphical analysis results.

	- Place “Comparator.sp” in your spice directory and then run simulation.

==============================
Summary of Options
==============================
Specified as per the required type of output:

    .Print	- Print(log) requested parameters
    .Plot	- Plot(screen) requested parameters
    .Op         - DC Operating point computations
    .Tran	- Transient analysis
    .AC         - AC analysis

=======================================
Macro Model Pin Configuration
=======================================
Listed below is the pin configuration of LM741 used in this project:

    *//////////////////////////////////////////////////////////
    *LM741 OPERATIONAL AMPLIFIER MACRO-MODEL (National Semiconductors)
    *//////////////////////////////////////////////////////////
    *
    * connections:      non-inverting input
    *                   |   inverting input
    *                   |   |   positive power supply
    *                   |   |   |   negative power supply
    *                   |   |   |   |   output
    *                   |   |   |   |   |
    *                   |   |   |   |   |
    .SUBCKT LM741       1   2  99  50  28

===============
Bugs
===============
	- Due to internal parasites and geometry of LM 741, a LPF with cut off frequency of 30 Khz is always present.
	- This interferes with the expected response of device and thus the resultant output is deviated.
	- These problems may be associated with the LM741 model used in this simulation.

===============
Documentation
===============

    Although extensive explanation of code is provided in the attached spice file,
    further details can be found in the reference documentation along with this project.
    However, basic knowledge of circuits along with familiarity with analog VLSI is required.
   Documentation can be found at [My Git Documentation Page](http://vivekporush.github.io)
    
===========
Feedback
===========

    If you encounter any bugs or any particular features that are missing,
    please contact me at:

  Contact [Porush, Vivek](mailto:vivek.91.porush@gmail.com) or [My Web Page](https://sites.google.com/site/vivekporush91/)
  
    Please feel free to write your macros and extensions.If you send me patches, I will most
    probably include them in future versions of LPF using MOS Active Resistor and maintain them to the best
    of my abilities.;-) I also appreciate any orthographic and grammatical corrections.
    
    Porush, Vivek
===========
Copyright
===========
    Comparator
    Copyright (C) <2014>  <Porush Vivek>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
