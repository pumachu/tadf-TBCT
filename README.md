# TADF screening
This is a repository (v1.0) of the paper:

> **Kun-Han Lin**, Gert-Jan A. H. Wetzelaer, Paul W. M. Blom and **Denis Andrienko**, Virtual Screening of TADF Emitters for Single-Layer OLEDs, *Frontiers in Chemistry*, *accepted*, DOI: 10.3389/fchem.2021.800027

To construct the TADF emitters, we start with 97 potential donor and acceptor building blocks, all shown in the Figure below.

<img src='https://i.imgur.com/B1g81dg.png' alt='alt text' width=800 >

The details of construction and virtual screening can be found in our paper. The contents in the repository will be introduced as follows.

### INPUT_FILES
This folder contains input files for Gaussian (GAUSSIAN/), THEODORE (THEODORE/), Gromacs (GROMACS/) and VOTCA (VOTCA/) computations.
##### GAUSSIAN
It contains two subfolders: **01_Building_Blocks** and **02_TADF_emitters**, containing inputs of GAUSSIAN computations for building blocks and TADF emitters. Under these two subfolders, there are several folders storing the input of different tasks:
```
a. Geometry optimizaion (OPT/ nN.com and aA.com for neutral and anionic geometry optimization)  
b. γ-tuning (GAMMA/ gamma_nN.com, gamma_cN.com, gamma_aA.com and gamma_nA.com)   
c. Excited-state computations (EXCITED_STATE/ singlet.com and triplet.com for singlet and triplet TDA-DFT computations)   
```

##### GROMACS
In GROMACS folder, there are three input files corresponding to the three steps in generating simulated amorphous morphology and cooling:
```
a. Geometry optimizaion (em.mdp)  
b. Heating and compressing (heating.mdp)   
c. Cooling (cooling.mdp)   
```

### MATERIALS_DATA
This folder contains output of DFT optimized structure (nN) and calculated properties for building blocks and TADF emitters. Similarly, there are two subfolders: **01_Building_Blocks** and **02_TADF_emitters**, containing outputs of building blocks and TADF emitters. In these subfolders:
```
 a. .json files store the calculated properties
 b. .tar.gz contain optimized neutral ground state geometry (.xyz files, for TADF emitters, optimizations are performed with PCM implicit solvent with dielctric constant = 3 )
 c. VOTCA subfolder contains the output of DOS computations for electron (electron affinity) and hole (ionization energy).
```

