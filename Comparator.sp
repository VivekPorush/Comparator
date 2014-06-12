***************************************************************************************
***********************************Comparator******************************************
***************************************************************************************
***** Porush, Vivek                               e-mail: vporus2@uic.edu**************
*****                      vivek.91.porush@gmail.com                            *******
***Comparator                                                                      ****
***    Copyright (C) <2014>  <Porush Vivek>                                        ****
***    This program is free software: you can redistribute it and/or modify        ****
***    it under the terms of the GNU Affero General Public License as published by ****
***    the Free Software Foundation, either version 3 of the License, or           ****
***    (at your option) any later version.                                         ****
***                                                                                ****
***    This program is distributed in the hope that it will be useful,             ****
***    but WITHOUT ANY WARRANTY; without even the implied warranty of              ****
***    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               ****
***    GNU Affero General Public License for more details.                         ****
***                                                                                ****
***    You should have received a copy of the GNU Affero General Public License    ****
***    along with this program.  If not, see <http://www.gnu.org/licenses/>.       ****
***                                                                                ****
*My contact information can be found on <https://sites.google.com/site/vivekporush91/>*
***************************************************************************************
*************This Project is listed under Analog & Mixed Signal VLSI*******************
***************************************************************************************
***Circuit parameters are given as :-->                                           *****
***                                                                               *****
***-->1. Vs = 2.5 V Sin Wave 1KHz  \\Input Voltage\\ \\Passive\\                  *****
***-->2. Vcc (V+) = 12 V Dc        \\ DC Regulated Positive Voltage\\ \\Passive\\ *****
***-->3. Vee (V-) = -12 V Dc       \\ DC Regulated Negative Voltage\\ \\Passive\\ *****
***************************************************************************************
***************************************************************************************
***Output results :-->                                                            *****
***We are required to observer and plot output of the comparator and verify results****
***************************************************************************************
*************************************SPICE-Code****************************************
***************************************************************************************
* Include Operational Amplifier subcircuit
.INCLUDE LM741.sp
******SPICE*******
*Voltage Source AC SIN (Vs= 2.5V@ 1KHz)
VS 1 0 SIN(0V 2.5V 1KHz)
** OP-AMP Bias Circuit nets (V+/V-)
V+ 2 0 12V
V- 3 0  -12V
** OP-Amp Sub Circuit Call
XOP 1 0 2 3 5 LM741
** Set output conditions for simulation analysis
.OP
** Set Analysis required to transient with step size '0.01m' and for '10m'
.TRAN 0.01m 10m
** Set print variables (These variables will be stored in the output log)
.PRINT V(1)
.PRINT V(5)
** Terminate all sequences and end simulation
.END
