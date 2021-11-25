# TADF screening
This is a repository (v1.0) of the paper:

> **Kun-Han Lin**, Gert-Jan A. H. Wetzelaer, Paul W. M. Blom and **Denis Andrienko**, Virtual Screening of TADF Emitters for
Q2 Single-Layer OLEDs, *Frontiers in Chemistry*, *accepted*

The 26 organic molecules investigated here are common **host materials** or **hole transport materials** for organic light-emitting diodes, as shown in the figure below.  

<img src='https://i.imgur.com/HPvvHs8.png' alt='alt text' width=800 >


The contents in the repository will be introduced as following.

### INPUT_FILES
This folder contains input files for Gaussian (**GAUSSIAN/**), DDEC6 (**DDEC6/**) and Gromacs (**GROMACS/**) computations.
In **GROMACS** folder, there are three input files corresponding to the three steps in generating simulated amorphous morphology and cooling:   
```
a. Geometry optimizaion (em.mdp)  
b. Heating and compressing (heating.mdp)   
c. Cooling (cooling.mdp)   
```
### ANALYZING_SCRIPTS
This folder contains python scripts for generating DDEC parameters, Tg fitting and creating R<sup>2</sup>-Temperautre plots for various fitting ranges.  
#### Usage of R2-T_plot.py:  
```
python R2-T_plot.py energy.xvg
```
The input file *energy.xvg* is the Gromacs output that contains the information of density and temperautre. The output of the python script is the R<sup>2</sup>-Temperature plot for differnt fitting ranges as shown below:  

<img src='https://i.imgur.com/NaynZFf.png' alt='alt text' width=700>

#### Usage of Tg_fit_plot.py:
```
python Tg_fit_plot.py energy.xvg
```
The output of the python script is the ρ-Temperature plot and the fitted Tg using different fitting ranges:


```
Fitting Range1:[ 405.0 , 555.0 )  
Fitting Range2:[ 24.0 , 174.0 )  
Fitting size:  150 Tg:  70.17  
Fitting Range1:[ 412.0 , 612.0 )  
Fitting Range2:[ 14.0 , 214.0 )  
Fitting size:  200 Tg:  81.23  
Fitting Range1:[ 401.0 , 651.0 )  
Fitting Range2:[ 2.0 , 252.0 )  
Fitting size:  250 Tg:  87.60  
Fitting Range1:[ 401.0 , 701.0 )  
Fitting Range2:[ 1.0 , 301.0 )  
Fitting size:  300 Tg:  101.31  
```

<img src='https://i.imgur.com/pm4Xwh6.png' alt='alt text' width=500>

#### Usage of gen_VDW.py:   
```
python gen_VDW.py
```
We generate the VDW parameters according to the [protocol](https://pubs.acs.org/doi/10.1021/acs.jctc.6b00027) proposed by Cole *et al*. The DDEC6 output file (**DDEC_atomic_Rcubed_moments.xyz**) should be present in the same folder.  
After executing, it generates an output (VDW_parameters.txt) containing the LJ parameters for each atom.
In this work, we calculate the LJ parameters for each atomtype defined in forcefield by averaging LJ parameters of atoms belonging to the corresponding atomtype.

```
index  element  sigma(nm) epsilon(kJ/mol)
1  C  0.3285743291286239  0.2591880549216842
2  C  0.35876550847271765  0.259188054921684
3  C  0.34417631543886273  0.25918805492168406
4  C  0.3467102162365648  0.25918805492168423
5  C  0.33869454454486536  0.2591880549216841
6  N  0.3175683741309179  0.42097226362187506
...
```

### MATERIALS_DATA
This folder contains data of 26 organic semiconductors investigated in this work. The files in the subdirectory are explained in the table below:  

| Subfolder     | File          | Explanation  |  
| :-----------: |:-------------:| :-----------:|  
| STRUCTURE     | nN.xyz        | XYZ coordinate of the molecule in neutral ground state |  
| GAS_PHASE_QM  | nN.log        | Gaussian log file |  
| DDEC6         | DDEC*         | Output files from DDEC6 calculations; see details [here](https://sourceforge.net/projects/ddec/files/) |  
| FORCEFIELD    | .top and .ff  | topology and forcefield parameters for gromacs simulations | 
| RHO-T         | energy.xvg    | Gromacs output containing information of density and temperature during the cooling process | 

