
<!-- README.md is generated from README.Rmd. Please edit that file -->

# licorer

<!-- badges: start -->

[![Build
Status](https://travis-ci.com/muir-lab/licorer.svg?branch=master)](https://travis-ci.com/muir-lab/licorer)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The **licorer** package is designed to aid in the reading and processing
of LI-6800 data files. It uses the R package
[**units**](https://CRAN.R-project.org/package=units) to ensure that
values recorded with units have the correct scientific units.

## Get **licorer**

<!-- from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("licorer") -->

<!-- ``` -->

from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("muir-lab/licorer")
```

and load **licorer**

``` r
library("licorer")
```

## Vignette

The **licorer** package streamlines reading and validating data from raw
LI-6800 files in *R*. To read a raw LI-6800 data file, use the `licor()`
method. This will create a `licor` object, which stores the data in a
tibble data object with header data stored in attributes.

``` r
library(licorer)

test_data <- read_li6800_raw(system.file("extdata", "2020-06-23_ECT_hib", 
                                         package = "licorer", mustWork = TRUE))
```

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:250px; overflow-x: scroll; width:700px; ">

<table>

<caption>

Example

</caption>

<thead>

<tr>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

obs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

time\_Sys

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

elapsed

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

date

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

hhmmss\_Sys

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TIME\_GasEx

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

E

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

A

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Ca

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Ci

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Pci

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Pca

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

gsw

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

gbw

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

gtw

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

gtc

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Rabs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TleafEB

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TleafCnd

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

SVPleaf

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

RHcham

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

VPcham

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

SVPcham

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

VPDleaf

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

LatHFlux

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

SenHFlux

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

NetTherm

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

EBSum

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

blfa\_1

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

blfa\_2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

blfa\_3

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Leak

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

LeakPct

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CorrFact

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CorrFactPct

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fan

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

DarkAdaptedID

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fo

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fm

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fv

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fv/Fm

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Adark

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

LightAdaptedID

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fm’

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

PhiPS2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

PS2/1

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Qabs\_fs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Afs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ETR

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fv’/Fm’

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

PhiCO2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

NPQ

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

DarkPulseID

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fo’

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fv’

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

qP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

qN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

qP\_Fo

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

qN\_Fo

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ID

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P1\_dur

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P2\_dur

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P3\_dur

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P1\_Qmax

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P1\_Fmax

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P2\_dQdt

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

P3\_(delta)F

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Qin

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Qabs

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

alpha

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

convert

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

S

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

K

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

Geometry

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TIME\_Meas

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CO2\_s

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CO2\_r

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

H2O\_s

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

H2O\_r

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Flow

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Pa

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)Pcham

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tair

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tleaf

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tleaf2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Offset

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Offset2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Fan\_speed

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Qamb\_in

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Qamb\_out

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Q

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

f\_red

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

f\_blue

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

f\_farred

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Q\_modavg

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F\_dc

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Pc

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tled

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TDigital

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TPreamp

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TPwrSpy

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TDrive

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Q\_red

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Q\_blue

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Q\_farred

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

TSPF

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F\_avg

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

dF/dt

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

dF\_dc/dt

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F\_dc\_avg

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

period

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

time\_Match

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

hhmmss\_Match

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

count

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

co2\_adj

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

h2o\_adj

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

co2\_at

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

h2o\_at

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

co2\_cv

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

h2o\_cv

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)CO2:MN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)CO2:SLP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)CO2:SD

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)CO2:OK

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F:MN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F:SLP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F:SD

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

F:OK

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)H2O:MN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)H2O:SLP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)H2O:SD

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

(delta)H2O:OK

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Stable

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Total

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

State

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

MatchValveR

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

MatchValveS

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

MatchCO2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

MatchH2O

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

DIAG

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Flow\_s

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Flow\_r

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Txchg

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tirga

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tchopper

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Ts

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Tr

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CO2\_%

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Desiccant\_%

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Humidifier\_%

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

Txchg\_sp

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

CO2\_r\_sp

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

H2O\_r\_sp

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

SS\_s

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

SS\_r

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

1592958038 \[s\]

</td>

<td style="text-align:left;">

0

</td>

<td style="text-align:left;">

2020-06-23 14:20:37

</td>

<td style="text-align:left;">

14:20:37

</td>

<td style="text-align:right;">

1592958012 \[s\]

</td>

<td style="text-align:right;">

0.0018939311 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.3868079 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

401.4031 \[µmol/mol\]

</td>

<td style="text-align:right;">

262.9298 \[µmol/mol\]

</td>

<td style="text-align:right;">

26.61081 \[Pa\]

</td>

<td style="text-align:right;">

40.62553 \[Pa\]

</td>

<td style="text-align:right;">

0.09444315 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.279358 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09232184 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.057887775 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

161.8296 \[W/m^2\]

</td>

<td style="text-align:right;">

33.76014 \[°C\]

</td>

<td style="text-align:right;">

32.37763 \[°C\]

</td>

<td style="text-align:right;">

4.878100 \[kPa\]

</td>

<td style="text-align:right;">

56.45732 \[%\]

</td>

<td style="text-align:right;">

2.881449 \[kPa\]

</td>

<td style="text-align:right;">

5.103765 \[kPa\]

</td>

<td style="text-align:right;">

1.996651 \[kPa\]

</td>

<td style="text-align:right;">

\-83.52236 \[W/m^2\]

</td>

<td style="text-align:right;">

98.74384103 \[W/m^2\]

</td>

<td style="text-align:right;">

9.899975210 \[W/m^2\]

</td>

<td style="text-align:right;">

186.951094 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04197882 \[1\]

</td>

<td style="text-align:right;">

0.04712491 \[1\]

</td>

<td style="text-align:right;">

3.507846 \[1\]

</td>

<td style="text-align:right;">

194 \[µmol/s\]

</td>

<td style="text-align:right;">

39 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

52311 \[µmol/s\]

</td>

<td style="text-align:left;">

  - 
    
    </td>
    
    <td style="text-align:right;">
    
    0 \[1\]
    
    </td>
    
    <td style="text-align:right;">
    
    0 \[1\]
    
    </td>
    
    <td style="text-align:right;">
    
    0 \[1\]
    
    </td>
    
    <td style="text-align:right;">
    
    0 \[1\]
    
    </td>
    
    <td style="text-align:right;">
    
    0 \[µmol/m^2/s\]
    
    </td>
    
    <td style="text-align:left;">
    
      - 
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[1\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[1\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[1\]
        
        </td>
        
        <td style="text-align:right;">
        
        0.5 \[1\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[µmol/m^2/s\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[µmol/m^2/s\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[µmol/m^2/s\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[1\]
        
        </td>
        
        <td style="text-align:right;">
        
        0.008781668 \[µmol/µmol\]
        
        </td>
        
        <td style="text-align:right;">
        
        0 \[1\]
        
        </td>
        
        <td style="text-align:left;">
        
          - 
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[ms\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[ms\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[ms\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[mol/m<sup>2/s</sup>2\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            999.9622 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            841.1623 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.8411941 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.1923881 \[J/µmol\]
            
            </td>
            
            <td style="text-align:right;">
            
            6 \[cm^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.5 \[1\]
            
            </td>
            
            <td style="text-align:left;">
            
            0: Broadleaf
            
            </td>
            
            <td style="text-align:right;">
            
            1592958012 \[s\]
            
            </td>
            
            <td style="text-align:right;">
            
            401.4031 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            411.1766 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            28.47034 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            26.26298 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            500.1482 \[µmol/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            101.1728 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.03603505 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            33.18117 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            32.37763 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            999.9 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            10006.049 \[rpm\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            2.905401 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            999.9622 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.9599963 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.04000360 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            1100.612903 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            5.00059 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            11069.732 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            9587.389 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            42.80800 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            45.50000 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            44.30400 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            45.17500 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            45.12500 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            955.1610 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            39.80065 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            1592958037 \[s\]
            
            </td>
            
            <td style="text-align:right;">
            
            1084.758846 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-43.6229060 \[1/min\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-442.92650 \[1/min\]
            
            </td>
            
            <td style="text-align:right;">
            
            10908.308 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            15 \[s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[s\]
            
            </td>
            
            <td style="text-align:left;">
            
            NA
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            1.64 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.445 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-1.6875699 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            15.34503554 \[µmol/min/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            2.44379221 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            1086.678235 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-46.3353045 \[1/min\]
            
            </td>
            
            <td style="text-align:right;">
            
            4.5338709 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.2848114 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-3.6686192 \[mmol/min/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.57995206 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            3 \[1\]
            
            </td>
            
            <td style="text-align:left;">
            
            0/3
            
            </td>
            
            <td style="text-align:right;">
            
            100 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            100 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            1.64 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.445 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            2 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            292.802 \[µmol/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            269.236 \[µmol/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            32.0927 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            30.9563 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            29.9984 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            31.0102 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            30.9831 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            19.7327 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            26.5253 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.00000 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            32.0765 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            408.431 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            26.8672 \[mmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            98.6756 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            100.223 \[%\]
            
            </td>
            
            </tr>
            
            <tr>
            
            <td style="text-align:right;">
            
            2
            
            </td>
            
            <td style="text-align:right;">
            
            1592958098 \[s\]
            
            </td>
            
            <td style="text-align:left;">
            
            60
            
            </td>
            
            <td style="text-align:left;">
            
            2020-06-23 14:21:37
            
            </td>
            
            <td style="text-align:left;">
            
            14:21:37
            
            </td>
            
            <td style="text-align:right;">
            
            1592958090 \[s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.0016173786 \[mol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            7.4274865 \[µmol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            400.2433 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            239.0048 \[µmol/mol\]
            
            </td>
            
            <td style="text-align:right;">
            
            24.18958 \[Pa\]
            
            </td>
            
            <td style="text-align:right;">
            
            40.50847 \[Pa\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.08015180 \[mol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            2.278125 \[mol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.07861749 \[mol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.049271339 \[mol/m^2/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            161.8387 \[W/m^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            33.91098 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            32.49805 \[°C\]
            
            </td>
            
            <td style="text-align:right;">
            
            4.911354 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            56.81719 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            2.909643 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            5.121062 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            2.001711 \[kPa\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-71.32640 \[W/m^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            91.30744429 \[W/m^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            9.167485207 \[W/m^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            190.987280 \[W/m^2\]
            
            </td>
            
            <td style="text-align:right;">
            
            \-0.04194523 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0.04708719 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            3.505630 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[µmol/s\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            1 \[1\]
            
            </td>
            
            <td style="text-align:right;">
            
            0 \[%\]
            
            </td>
            
            <td style="text-align:right;">
            
            52489 \[µmol/s\]
            
            </td>
            
            <td style="text-align:left;">
            
              - 
                
                </td>
                
                <td style="text-align:right;">
                
                0 \[1\]
                
                </td>
                
                <td style="text-align:right;">
                
                0 \[1\]
                
                </td>
                
                <td style="text-align:right;">
                
                0 \[1\]
                
                </td>
                
                <td style="text-align:right;">
                
                0 \[1\]
                
                </td>
                
                <td style="text-align:right;">
                
                0 \[µmol/m^2/s\]
                
                </td>
                
                <td style="text-align:left;">
                
                  - 
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[1\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[1\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[1\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0.5 \[1\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[µmol/m^2/s\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[µmol/m^2/s\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[µmol/m^2/s\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[1\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0.008829534 \[µmol/µmol\]
                    
                    </td>
                    
                    <td style="text-align:right;">
                    
                    0 \[1\]
                    
                    </td>
                    
                    <td style="text-align:left;">
                    
                      - 
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[ms\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[ms\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[ms\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[mol/m<sup>2/s</sup>2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1000.0181 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        841.2093 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.8411941 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.1923882 \[J/µmol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        6 \[cm^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.5 \[1\]
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        0: Broadleaf
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1592958090 \[s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        400.2434 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        409.9327 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        28.74868 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        26.86371 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        500.0212 \[µmol/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        101.1765 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.03316085 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        33.24148 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        32.49805 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        999.9 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        9997.678 \[rpm\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2.903450 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1000.0181 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.9599950 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.04000482 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1055.070000 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        5.00059 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        10606.690 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        9587.918 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        42.76200 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        45.48577 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        44.25000 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        45.12500 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        45.12500 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        955.2116 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        39.80387 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1592958097 \[s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1055.026154 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-20.4061538 \[1/min\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-212.27009 \[1/min\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        10605.688 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        15 \[s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[s\]
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        NA
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1.64 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.445 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-9.7459783 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1.39610467 \[µmol/min/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.13998168 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1055.893235 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-21.1096632 \[1/min\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2.0798271 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1.9123088 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-0.5532088 \[mmol/min/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.05873102 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        3 \[1\]
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        0/3
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        100 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        100 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1.64 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.445 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        516.716 \[µmol/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        440.493 \[µmol/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        32.2833 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        30.7026 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        29.9987 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        30.7458 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        30.7119 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        19.8223 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        26.1552 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.00000 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        32.1519 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        409.582 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        27.0557 \[mmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        98.7211 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        100.260 \[%\]
                        
                        </td>
                        
                        </tr>
                        
                        <tr>
                        
                        <td style="text-align:right;">
                        
                        3
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1592958768 \[s\]
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        730.400000095367
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        2020-06-23 14:32:48
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                        14:32:48
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1592958760 \[s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.0002354843 \[mol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-0.4840734 \[µmol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        400.5528 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        455.5949 \[µmol/mol\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        46.19508 \[Pa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        40.61408 \[Pa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.01116704 \[mol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2.281568 \[mol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.01113676 \[mol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.006963189 \[mol/m^2/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        161.8374 \[W/m^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        33.33155 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        32.21135 \[°C\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        4.832502 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        57.29578 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2.768891 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        4.832626 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        2.063612 \[kPa\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-10.38486 \[W/m^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.05555014 \[W/m^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.005533068 \[W/m^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        151.513658 \[W/m^2\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        \-0.04203905 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0.04719252 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        3.511818 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[µmol/s\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        1 \[1\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        0 \[%\]
                        
                        </td>
                        
                        <td style="text-align:right;">
                        
                        52747 \[µmol/s\]
                        
                        </td>
                        
                        <td style="text-align:left;">
                        
                          - 
                            
                            </td>
                            
                            <td style="text-align:right;">
                            
                            0 \[1\]
                            
                            </td>
                            
                            <td style="text-align:right;">
                            
                            0 \[1\]
                            
                            </td>
                            
                            <td style="text-align:right;">
                            
                            0 \[1\]
                            
                            </td>
                            
                            <td style="text-align:right;">
                            
                            0 \[1\]
                            
                            </td>
                            
                            <td style="text-align:right;">
                            
                            0 \[µmol/m^2/s\]
                            
                            </td>
                            
                            <td style="text-align:left;">
                            
                              - 
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[1\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[1\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[1\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0.5 \[1\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[µmol/m^2/s\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[µmol/m^2/s\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[µmol/m^2/s\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[1\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                \-0.000575454 \[µmol/µmol\]
                                
                                </td>
                                
                                <td style="text-align:right;">
                                
                                0 \[1\]
                                
                                </td>
                                
                                <td style="text-align:left;">
                                
                                  - 
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[ms\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[ms\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[ms\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[mol/m<sup>2/s</sup>2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1000.0102 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    841.2026 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.8411941 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.1923882 \[J/µmol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    6 \[cm^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.5 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    0: Broadleaf
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1592958760 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    400.5528 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    400.0851 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    27.30794 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    27.03309 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    500.0235 \[µmol/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    101.3627 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.03240343 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    32.21180 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    32.21135 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    999.9 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    10001.632 \[rpm\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    28.256684 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1000.0102 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.9599955 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.04000417 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2.538268 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    5.00059 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1412.695 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    9587.846 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    41.50997 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    45.06200 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    43.32826 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    44.52197 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    43.76384 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    955.2061 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    39.80323 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1592958768 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2.560638 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.6414290 \[1/min\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    25.39179 \[1/min\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1413.617 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    15 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    NA
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1.64 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.445 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.4673976 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.89352538 \[µmol/min/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.27749047 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2.530365 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.3814049 \[1/min\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.1936925 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.2785463 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    \-0.1942422 \[mmol/min/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.03476224 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    3 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    1/3
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    100 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    100 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1.64 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.445 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    514.985 \[µmol/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    437.963 \[µmol/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    33.8653 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    29.3023 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    30.0072 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    29.2929 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    29.2987 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    19.4896 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    21.7097 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    9.58107 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    33.8550 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    399.469 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    27.2361 \[mmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    99.2096 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    100.645 \[%\]
                                    
                                    </td>
                                    
                                    </tr>
                                    
                                    <tr>
                                    
                                    <td style="text-align:right;">
                                    
                                    4
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1592958901 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    863.400000095367
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    2020-06-23 14:35:01
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                    14:35:01
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1592958893 \[s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.0073598465 \[mol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    11.8661266 \[µmol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    399.3959 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    338.4365 \[µmol/mol\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    34.31522 \[Pa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    40.49610 \[Pa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.41562142 \[mol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2.284571 \[mol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.37772997 \[mol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.239197088 \[mol/m^2/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    161.8387 \[W/m^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    32.23319 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    32.40704 \[°C\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    4.886205 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    57.70930 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    2.987320 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    5.176496 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1.898885 \[kPa\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    \-324.56923 \[W/m^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    126.43323574 \[W/m^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    12.664674351 \[W/m^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    \-23.632629 \[W/m^2\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    \-0.04212099 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0.04728450 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    3.517219 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[µmol/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    1 \[1\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    0 \[%\]
                                    
                                    </td>
                                    
                                    <td style="text-align:right;">
                                    
                                    52416 \[µmol/s\]
                                    
                                    </td>
                                    
                                    <td style="text-align:left;">
                                    
                                      - 
                                        
                                        </td>
                                        
                                        <td style="text-align:right;">
                                        
                                        0 \[1\]
                                        
                                        </td>
                                        
                                        <td style="text-align:right;">
                                        
                                        0 \[1\]
                                        
                                        </td>
                                        
                                        <td style="text-align:right;">
                                        
                                        0 \[1\]
                                        
                                        </td>
                                        
                                        <td style="text-align:right;">
                                        
                                        0 \[1\]
                                        
                                        </td>
                                        
                                        <td style="text-align:right;">
                                        
                                        0 \[µmol/m^2/s\]
                                        
                                        </td>
                                        
                                        <td style="text-align:left;">
                                        
                                          - 
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0.5 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[µmol/m^2/s\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[µmol/m^2/s\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[µmol/m^2/s\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0.014106024 \[µmol/µmol\]
                                            
                                            </td>
                                            
                                            <td style="text-align:right;">
                                            
                                            0 \[1\]
                                            
                                            </td>
                                            
                                            <td style="text-align:left;">
                                            
                                              - 
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[ms\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[ms\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[ms\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0
                                                \[mol/m<sup>2/s</sup>2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1000.0188 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                841.2099 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.8411940 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.1923880 \[J/µmol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                6 \[cm^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.5 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                0: Broadleaf
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1592958893 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                399.3959 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                417.1597 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                29.46267 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                20.89248 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                500.0826 \[µmol/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                101.3586 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.03473805 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                33.43357 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                32.40704 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                999.9 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                10021.525 \[rpm\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                16.781681 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1000.0188 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.9600009 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.03999945 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1156.980968 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                5.00059 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                14070.177 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                9587.940 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                42.20939 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                44.96139 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                43.58232 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                44.89900 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                44.48171 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                955.2181 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                39.80097 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1592958901 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1154.790769 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-173.6519656 \[1/min\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-1697.15555 \[1/min\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                14048.285 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                15 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                NA
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1.64 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.445 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-17.7978415
                                                \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.96625505
                                                \[µmol/min/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.11026062 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1166.682647 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-196.1255609 \[1/min\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                19.3439275 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                8.5737571 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-0.2241640
                                                \[mmol/min/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.03991588 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                3 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                0/3
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                100 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                100 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1.64 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.445 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                2 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                519.325 \[µmol/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                431.134 \[µmol/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                34.2703 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                29.8063 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                29.9953 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                29.6528 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                29.6364 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                20.0495 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                39.5906 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                6.78577 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                34.7286 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                417.613 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                20.7953 \[mmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                98.7407 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                100.215 \[%\]
                                                
                                                </td>
                                                
                                                </tr>
                                                
                                                <tr>
                                                
                                                <td style="text-align:right;">
                                                
                                                5
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1592958999 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                961
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                2020-06-23 14:36:38
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                14:36:38
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1592958991 \[s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.0068614392
                                                \[mol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                12.0639704
                                                \[µmol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                399.9004 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                332.9966 \[µmol/mol\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                33.76210 \[Pa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                40.54539 \[Pa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.37579717 \[mol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                2.281431 \[mol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.34448777 \[mol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.217900092
                                                \[mol/m^2/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                161.8337 \[W/m^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                32.49134 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                32.50147 \[°C\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                4.912303 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                57.08953 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                2.971376 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                5.204764 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1.940928 \[kPa\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-302.58947 \[W/m^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                126.60824981 \[W/m^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                12.711597346 \[W/m^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-1.435918 \[W/m^2\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                \-0.04203533 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0.04718834 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                3.511573 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[µmol/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                1 \[1\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                0 \[%\]
                                                
                                                </td>
                                                
                                                <td style="text-align:right;">
                                                
                                                52337 \[µmol/s\]
                                                
                                                </td>
                                                
                                                <td style="text-align:left;">
                                                
                                                  - 
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:right;">
                                                    
                                                    0 \[1\]
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:right;">
                                                    
                                                    0 \[1\]
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:right;">
                                                    
                                                    0 \[1\]
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:right;">
                                                    
                                                    0 \[1\]
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:right;">
                                                    
                                                    0 \[µmol/m^2/s\]
                                                    
                                                    </td>
                                                    
                                                    <td style="text-align:left;">
                                                    
                                                      - 
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0.5 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[µmol/m^2/s\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[µmol/m^2/s\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[µmol/m^2/s\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0.014341684
                                                        \[µmol/µmol\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:right;">
                                                        
                                                        0 \[1\]
                                                        
                                                        </td>
                                                        
                                                        <td style="text-align:left;">
                                                        
                                                          - 
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[ms\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[ms\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[ms\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[mol/m<sup>2/s</sup>2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            999.9859
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            841.1823
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.8411942
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.1923884
                                                            \[J/µmol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            6 \[cm^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.5 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            0: Broadleaf
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1592958991
                                                            \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            399.9004
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            417.6687
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            29.30677
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            21.31487
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            500.0331
                                                            \[µmol/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            101.3527
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.03600639
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            33.53084
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            32.50147
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            999.9 \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            10001.730
                                                            \[rpm\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            15.863703
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            999.9859
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.9599949
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.04000518
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1075.012581
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            5.00059
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            13185.452
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            9587.616
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            42.69729
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            45.17900
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            43.93700
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            45.16903
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            44.96748
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            955.1797
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            39.80581
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1592958998
                                                            \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1075.009615
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-4.9569231
                                                            \[1/min\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            29.35043
                                                            \[1/min\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            13185.519
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            15 \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            NA
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1.64
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.445
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-17.7702902
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.25286935
                                                            \[µmol/min/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.05753819
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1075.217647
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-4.7057052
                                                            \[1/min\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.5085334
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            8.0152871
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-0.6962752
                                                            \[mmol/min/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.07019443
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            3 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            1/3
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            100 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            100 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1.64
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.445
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            2 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            518.827
                                                            \[µmol/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            430.306
                                                            \[µmol/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            32.7468
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            30.3814
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            30.0029
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            30.0849
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            30.0542
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            20.0667
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            37.1472
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            4.43732
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            32.6668
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            417.623
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            21.5506
                                                            \[mmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            98.6002
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            100.068
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            </tr>
                                                            
                                                            <tr>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            6
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1592959013
                                                            \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            975.5
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            2020-06-23
                                                            14:36:53
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                            14:36:53
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1592959005
                                                            \[s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.0066226329
                                                            \[mol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            12.1148589
                                                            \[µmol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            399.9555
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            331.6922
                                                            \[µmol/mol\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            33.62895
                                                            \[Pa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            40.54989
                                                            \[Pa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.36665126
                                                            \[mol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            2.280490
                                                            \[mol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.33677120
                                                            \[mol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.212963314
                                                            \[mol/m^2/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            161.8343
                                                            \[W/m^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            32.45101
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            32.38387
                                                            \[°C\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            4.879820
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            57.30823
                                                            \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            2.963173
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            5.170589
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1.916647
                                                            \[kPa\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-292.05811
                                                            \[W/m^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            126.54966488
                                                            \[W/m^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            12.696308607
                                                            \[W/m^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            9.022135
                                                            \[W/m^2\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            \-0.04200967
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0.04715953
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            3.509881
                                                            \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[µmol/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            1 \[1\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            0 \[%\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:right;">
                                                            
                                                            52311
                                                            \[µmol/s\]
                                                            
                                                            </td>
                                                            
                                                            <td style="text-align:left;">
                                                            
                                                              - 
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:right;">
                                                                
                                                                0 \[1\]
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:right;">
                                                                
                                                                0 \[1\]
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:right;">
                                                                
                                                                0 \[1\]
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:right;">
                                                                
                                                                0 \[1\]
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:right;">
                                                                
                                                                0
                                                                \[µmol/m^2/s\]
                                                                
                                                                </td>
                                                                
                                                                <td style="text-align:left;">
                                                                
                                                                  - 
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0.5
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[µmol/m^2/s\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[µmol/m^2/s\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[µmol/m^2/s\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0.014402169
                                                                    \[µmol/µmol\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:right;">
                                                                    
                                                                    0
                                                                    \[1\]
                                                                    
                                                                    </td>
                                                                    
                                                                    <td style="text-align:left;">
                                                                    
                                                                      - 
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[ms\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[ms\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[ms\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[mol/m<sup>2/s</sup>2\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        999.9863
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        841.1829
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.8411945
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.1923889
                                                                        \[J/µmol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        6
                                                                        \[cm^2\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.5
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:left;">
                                                                        
                                                                        0:
                                                                        Broadleaf
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1592959005
                                                                        \[s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        399.9555
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        417.6704
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        29.22665
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        21.51238
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        500.0406
                                                                        \[µmol/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        101.3523
                                                                        \[kPa\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.03367666
                                                                        \[kPa\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        33.41319
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        32.38387
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        999.9
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        9995.662
                                                                        \[rpm\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        15.808339
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        999.9863
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.9599871
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.04001312
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1074.494194
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        5.00059
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        13212.958
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        9587.608
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        42.75000
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        45.19106
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        43.97765
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        45.24187
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        45.04000
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        955.1739
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        39.81484
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[µmol/m^2/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1592959013
                                                                        \[s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1074.492692
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        \-0.5425641
                                                                        \[1/min\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        109.04957
                                                                        \[1/min\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        13213.781
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        15
                                                                        \[s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:left;">
                                                                        
                                                                        NA
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1.64
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.445
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        \-17.7221146
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        \-0.03887247
                                                                        \[µmol/min/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.04125643
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1074.529412
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        \-0.7325754
                                                                        \[1/min\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.2037146
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        7.7737339
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        \-1.1375774
                                                                        \[mmol/min/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.11741928
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        2
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        3
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:left;">
                                                                        
                                                                        2/3
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        100
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        100
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        1.64
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        0.445
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        2
                                                                        \[1\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        518.649
                                                                        \[µmol/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        430.311
                                                                        \[µmol/s\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        32.4813
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        30.4664
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        30.0023
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        30.1542
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        30.1213
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        20.0702
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        37.4194
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        3.66987
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        32.5041
                                                                        \[°C\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        417.470
                                                                        \[µmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        21.4695
                                                                        \[mmol/mol\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        98.5810
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        <td style="text-align:right;">
                                                                        
                                                                        100.047
                                                                        \[%\]
                                                                        
                                                                        </td>
                                                                        
                                                                        </tr>
                                                                        
                                                                        </tbody>
                                                                        
                                                                        </table>
                                                                        
                                                                        </div>

### The Data

As you can see, there is a lot of data. There are 20 rows and 157
columns.

All of the data is stored either as a unit (some have the “unitless”
unit) or as an approprate class (character, hms, or date/time), which
are automatically assigned and validated when the file is loaded, as
they are read in from the file. We’ll discuss user-defined variables
below.

LI-COR groups variables into a few different categories which are stored
as attributes of the data. This topic is covered in greater detail in
the vignette on [data manipulation](data-manipulation.html) and by the
`subset_options()` function described below.

``` r
subset_options(test_data)
#>  [1] "Sys"       "GasEx"     "Leak"      "FLR"       "MPF"       "LeafQ"    
#>  [7] "Const"     "Meas"      "FlrLS"     "FlrStats"  "Match"     "Stability"
#> [13] "Status"
```

The data columns covered by each of these values are expressly stated in
the LI-6800 manual “Summary of symbols” section (CDM: provide page \#
and edition, v1.4 in this case).

### The Header

In addition to data, the `licor` class stores meta-data from the header
of the LI-6800 data file. This information is accessible with the
`header` attribute.

``` r
attributes(test_data)$header[1:5]
#> $`File opened`
#> [1] "2020-06-23 14:17:33"
#> 
#> $`Console s/n`
#> [1] "68C-811937"
#> 
#> $`Console ver`
#> [1] "Bluestem v.1.3.17"
#> 
#> $`Scripts ver`
#> [1] "2018.12  1.3.16, Nov 2018"
#> 
#> $`Head s/n`
#> [1] "68H-711927"
```

Once again we are showing a subset of the list, as the actual list of
meta-data contains around 50 elements.

The `licor_validator()` that ensures that the `licor` class was created
correctly and that all variables have valid scientific units. It is
automatically called during the `licor` method call, but not during the
`read_li6800_raw()` method.

Currently, the data reader only supports reading from LI-6800 files, but
we plan to add support for the LI-6400 as well.

## Contributors

  - [Daniel Trupp](https://github.com/DanielTrupp)
  - [Chris Muir](https://github.com/cdmuir)

## Comments and contributions

Comments, criticisms, and contributions are welcomed\! GitHub issues are
the preferred way to report bugs, ask questions, or request new
features. You can submit issues here:
<https://github.com/muir-lab/licorer/issues>

## Meta

  - Please [report any issues or
    bugs](https://github.com/muir-lab/licorer/issues)
  - License: MIT + file LICENSE
