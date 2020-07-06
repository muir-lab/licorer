
<!-- README.md is generated from README.Rmd. Please edit that file -->

# licorer

<!-- badges: start -->

<!-- badges: end -->

The licorer package is designed to aid in the reading and processing of
licor data files. It uses the R package
[**units**](https://CRAN.R-project.org/package=units) to ensure that
values recorded with units have the correct units.

## Get **licorer**

from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("licorer")
```

or from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("muir-lab/licorer")
```

and load ‘licorer’

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
#> Loading required package: units
#> udunits system database from /Library/Frameworks/R.framework/Versions/4.0/Resources/library/units/share/udunits
library(units)
library(stringr)
library(knitr)
library(kableExtra)

# CDM: is this the only way to access data. What about the utils::data() function rather than system.file()?
test_data <- licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum", 
                               package = "licorer", mustWork = TRUE))
```

``` r
test_data <- read_li6800_raw(system.file("extdata", "2019-05-06-0740_trillium_ovatum", 
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

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

binomial

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

leaf\_id

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

ΔPcham

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

ΔCO2:MN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔCO2:SLP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔCO2:SD

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔCO2:OK

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

ΔH2O:MN

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔH2O:SLP

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔH2O:SD

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ΔH2O:OK

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

ADC\_CH1

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH3

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH4

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH5

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH6

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH7

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

ADC\_CH8

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

DAC\_1

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

DAC\_2

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

DAC\_3

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

DAC\_4

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

GPIO

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

GPIO\_dir

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

excit\_5v

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

power\_12v

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

power\_5v

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

ch1\_pullup

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

AuxPower

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

1557067649 \[s\]

</td>

<td style="text-align:left;">

0

</td>

<td style="text-align:left;">

2019-05-05 07:47:29

</td>

<td style="text-align:left;">

07:47:29

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067641 \[s\]

</td>

<td style="text-align:right;">

0.0012146384 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0390061 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.95802 \[µmol/mol\]

</td>

<td style="text-align:right;">

294.1175747 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.74341791 \[Pa\]

</td>

<td style="text-align:right;">

39.536665 \[Pa\]

</td>

<td style="text-align:right;">

0.12642223 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274853 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.12264478 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07698297 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6742 \[W/m^2\]

</td>

<td style="text-align:right;">

21.38535 \[°C\]

</td>

<td style="text-align:right;">

20.11424 \[°C\]

</td>

<td style="text-align:right;">

2.363266 \[kPa\]

</td>

<td style="text-align:right;">

58.90665 \[%\]

</td>

<td style="text-align:right;">

1.380264 \[kPa\]

</td>

<td style="text-align:right;">

2.343138 \[kPa\]

</td>

<td style="text-align:right;">

0.9830016 \[kPa\]

</td>

<td style="text-align:right;">

\-53.56556 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.94554 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.498363 \[W/m^2\]

</td>

<td style="text-align:right;">

169.6648 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185619 \[1\]

</td>

<td style="text-align:right;">

0.04698725 \[1\]

</td>

<td style="text-align:right;">

3.499752 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54783 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.219 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067641 \[s\]

</td>

<td style="text-align:right;">

390.95803 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.97419 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.64873 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.21114 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0274 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9276 \[kPa\]

</td>

<td style="text-align:right;">

0.2000006 \[kPa\]

</td>

<td style="text-align:right;">

19.97607 \[°C\]

</td>

<td style="text-align:right;">

20.11424 \[°C\]

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

10001.051 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.69080 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730062 \[1\]

</td>

<td style="text-align:right;">

0.02699383 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.247545 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13324.11 \[1\]

</td>

<td style="text-align:right;">

13122.06 \[1\]

</td>

<td style="text-align:right;">

33.37900 \[°C\]

</td>

<td style="text-align:right;">

34.88900 \[°C\]

</td>

<td style="text-align:right;">

34.56606 \[°C\]

</td>

<td style="text-align:right;">

33.31810 \[°C\]

</td>

<td style="text-align:right;">

33.36687 \[°C\]

</td>

<td style="text-align:right;">

1459.514 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067672 \[s\]

</td>

<td style="text-align:right;">

2.254981 \[1\]

</td>

<td style="text-align:right;">

0.514266666 \[1/min\]

</td>

<td style="text-align:right;">

\-861.3743590 \[1/min\]

</td>

<td style="text-align:right;">

13314.68 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.027678780 \[µmol/mol\]

</td>

<td style="text-align:right;">

2.215614e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02660512 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.280232 \[1\]

</td>

<td style="text-align:right;">

\-0.2618684815 \[1/min\]

</td>

<td style="text-align:right;">

0.2252651 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4561598 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.151482e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0413793219 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85348 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.904 \[µmol/s\]

</td>

<td style="text-align:right;">

576.153 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6803 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

29.9983 \[°C\]

</td>

<td style="text-align:right;">

15.9023 \[°C\]

</td>

<td style="text-align:right;">

15.8664 \[°C\]

</td>

<td style="text-align:right;">

19.71130 \[%\]

</td>

<td style="text-align:right;">

14.271000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.5523 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4125 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

1557067651 \[s\]

</td>

<td style="text-align:left;">

2

</td>

<td style="text-align:left;">

2019-05-05 07:47:31

</td>

<td style="text-align:left;">

07:47:31

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067643 \[s\]

</td>

<td style="text-align:right;">

0.0012078543 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0373994 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96315 \[µmol/mol\]

</td>

<td style="text-align:right;">

293.6674318 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.69791641 \[Pa\]

</td>

<td style="text-align:right;">

39.537210 \[Pa\]

</td>

<td style="text-align:right;">

0.12574260 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274740 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.12200483 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07657959 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6756 \[W/m^2\]

</td>

<td style="text-align:right;">

21.39268 \[°C\]

</td>

<td style="text-align:right;">

20.11668 \[°C\]

</td>

<td style="text-align:right;">

2.363622 \[kPa\]

</td>

<td style="text-align:right;">

58.91923 \[%\]

</td>

<td style="text-align:right;">

1.380988 \[kPa\]

</td>

<td style="text-align:right;">

2.343866 \[kPa\]

</td>

<td style="text-align:right;">

0.9826339 \[kPa\]

</td>

<td style="text-align:right;">

\-53.26638 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.62822 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.470434 \[W/m^2\]

</td>

<td style="text-align:right;">

170.3106 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185312 \[1\]

</td>

<td style="text-align:right;">

0.04698379 \[1\]

</td>

<td style="text-align:right;">

3.499549 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54891 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067643 \[s\]

</td>

<td style="text-align:right;">

390.96316 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.97423 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.65588 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.22633 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0270 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9277 \[kPa\]

</td>

<td style="text-align:right;">

0.2000055 \[kPa\]

</td>

<td style="text-align:right;">

19.98109 \[°C\]

</td>

<td style="text-align:right;">

20.11668 \[°C\]

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

10000.309 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.63665 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.259926 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13301.99 \[1\]

</td>

<td style="text-align:right;">

13122.14 \[1\]

</td>

<td style="text-align:right;">

33.38100 \[°C\]

</td>

<td style="text-align:right;">

34.89500 \[°C\]

</td>

<td style="text-align:right;">

34.56606 \[°C\]

</td>

<td style="text-align:right;">

33.32013 \[°C\]

</td>

<td style="text-align:right;">

33.36890 \[°C\]

</td>

<td style="text-align:right;">

1459.523 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067674 \[s\]

</td>

<td style="text-align:right;">

2.281619 \[1\]

</td>

<td style="text-align:right;">

0.590287173 \[1/min\]

</td>

<td style="text-align:right;">

\-860.9982912 \[1/min\]

</td>

<td style="text-align:right;">

13288.54 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.021175610 \[µmol/mol\]

</td>

<td style="text-align:right;">

2.010021e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02496966 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.264300 \[1\]

</td>

<td style="text-align:right;">

0.2862053910 \[1/min\]

</td>

<td style="text-align:right;">

0.2138459 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4436676 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.584436e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0360425795 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.950 \[µmol/s\]

</td>

<td style="text-align:right;">

576.089 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6912 \[°C\]

</td>

<td style="text-align:right;">

16.0984 \[°C\]

</td>

<td style="text-align:right;">

29.9982 \[°C\]

</td>

<td style="text-align:right;">

15.9024 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

19.71170 \[%\]

</td>

<td style="text-align:right;">

14.271000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.5523 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4251 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

1557067653 \[s\]

</td>

<td style="text-align:left;">

4

</td>

<td style="text-align:left;">

2019-05-05 07:47:33

</td>

<td style="text-align:left;">

07:47:33

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067644 \[s\]

</td>

<td style="text-align:right;">

0.0012018291 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0383889 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96790 \[µmol/mol\]

</td>

<td style="text-align:right;">

293.1993572 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.65056774 \[Pa\]

</td>

<td style="text-align:right;">

39.537672 \[Pa\]

</td>

<td style="text-align:right;">

0.12509549 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274655 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.12139535 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07619542 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6741 \[W/m^2\]

</td>

<td style="text-align:right;">

21.40178 \[°C\]

</td>

<td style="text-align:right;">

20.12239 \[°C\]

</td>

<td style="text-align:right;">

2.364457 \[kPa\]

</td>

<td style="text-align:right;">

58.92909 \[%\]

</td>

<td style="text-align:right;">

1.381825 \[kPa\]

</td>

<td style="text-align:right;">

2.344894 \[kPa\]

</td>

<td style="text-align:right;">

0.9826322 \[kPa\]

</td>

<td style="text-align:right;">

\-53.00066 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.45948 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.455662 \[W/m^2\]

</td>

<td style="text-align:right;">

170.7583 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185081 \[1\]

</td>

<td style="text-align:right;">

0.04698120 \[1\]

</td>

<td style="text-align:right;">

3.499397 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54599 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.218 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067644 \[s\]

</td>

<td style="text-align:right;">

390.96790 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.97732 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.66416 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.24175 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0277 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9276 \[kPa\]

</td>

<td style="text-align:right;">

0.2000245 \[kPa\]

</td>

<td style="text-align:right;">

19.98817 \[°C\]

</td>

<td style="text-align:right;">

20.12239 \[°C\]

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

9999.764 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.58888 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730064 \[1\]

</td>

<td style="text-align:right;">

0.02699368 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.283029 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13278.53 \[1\]

</td>

<td style="text-align:right;">

13122.06 \[1\]

</td>

<td style="text-align:right;">

33.38700 \[°C\]

</td>

<td style="text-align:right;">

34.90100 \[°C\]

</td>

<td style="text-align:right;">

34.57216 \[°C\]

</td>

<td style="text-align:right;">

33.32623 \[°C\]

</td>

<td style="text-align:right;">

33.37094 \[°C\]

</td>

<td style="text-align:right;">

1459.513 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067676 \[s\]

</td>

<td style="text-align:right;">

2.297054 \[1\]

</td>

<td style="text-align:right;">

0.375158971 \[1/min\]

</td>

<td style="text-align:right;">

\-864.7760672 \[1/min\]

</td>

<td style="text-align:right;">

13262.80 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.015536585 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.484007e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02117334 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.267253 \[1\]

</td>

<td style="text-align:right;">

0.5503029924 \[1/min\]

</td>

<td style="text-align:right;">

0.2153392 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4333934 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.029655e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0310898586 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.024 \[µmol/s\]

</td>

<td style="text-align:right;">

576.161 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6864 \[°C\]

</td>

<td style="text-align:right;">

16.0991 \[°C\]

</td>

<td style="text-align:right;">

29.9982 \[°C\]

</td>

<td style="text-align:right;">

15.9024 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

19.71120 \[%\]

</td>

<td style="text-align:right;">

13.982300 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.6003 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4324 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

4

</td>

<td style="text-align:right;">

1557067655 \[s\]

</td>

<td style="text-align:left;">

6

</td>

<td style="text-align:left;">

2019-05-05 07:47:35

</td>

<td style="text-align:left;">

07:47:35

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067646 \[s\]

</td>

<td style="text-align:right;">

0.0011968566 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0440589 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96890 \[µmol/mol\]

</td>

<td style="text-align:right;">

292.7048990 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.60057455 \[Pa\]

</td>

<td style="text-align:right;">

39.537787 \[Pa\]

</td>

<td style="text-align:right;">

0.12451094 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274950 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.12084522 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07584862 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6751 \[W/m^2\]

</td>

<td style="text-align:right;">

21.41207 \[°C\]

</td>

<td style="text-align:right;">

20.13148 \[°C\]

</td>

<td style="text-align:right;">

2.365788 \[kPa\]

</td>

<td style="text-align:right;">

58.93753 \[%\]

</td>

<td style="text-align:right;">

1.382777 \[kPa\]

</td>

<td style="text-align:right;">

2.346175 \[kPa\]

</td>

<td style="text-align:right;">

0.9830105 \[kPa\]

</td>

<td style="text-align:right;">

\-52.78138 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.49604 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.458839 \[W/m^2\]

</td>

<td style="text-align:right;">

170.9388 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185885 \[1\]

</td>

<td style="text-align:right;">

0.04699023 \[1\]

</td>

<td style="text-align:right;">

3.499928 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54447 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.223 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067646 \[s\]

</td>

<td style="text-align:right;">

390.96890 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.98281 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.67358 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.25706 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0271 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9277 \[kPa\]

</td>

<td style="text-align:right;">

0.1999949 \[kPa\]

</td>

<td style="text-align:right;">

19.99698 \[°C\]

</td>

<td style="text-align:right;">

20.13148 \[°C\]

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

10001.679 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.55333 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.304813 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13255.17 \[1\]

</td>

<td style="text-align:right;">

13122.12 \[1\]

</td>

<td style="text-align:right;">

33.39300 \[°C\]

</td>

<td style="text-align:right;">

34.90700 \[°C\]

</td>

<td style="text-align:right;">

34.57826 \[°C\]

</td>

<td style="text-align:right;">

33.33232 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.519 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067678 \[s\]

</td>

<td style="text-align:right;">

2.309400 \[1\]

</td>

<td style="text-align:right;">

0.414762389 \[1/min\]

</td>

<td style="text-align:right;">

\-866.0615384 \[1/min\]

</td>

<td style="text-align:right;">

13228.23 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.014401220 \[µmol/mol\]

</td>

<td style="text-align:right;">

7.648641e-03 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.01887669 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.276779 \[1\]

</td>

<td style="text-align:right;">

0.7449267439 \[1/min\]

</td>

<td style="text-align:right;">

0.2196982 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4248137 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.437290e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0258965245 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.897 \[µmol/s\]

</td>

<td style="text-align:right;">

576.359 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6809 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9984 \[°C\]

</td>

<td style="text-align:right;">

15.9030 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

19.71110 \[%\]

</td>

<td style="text-align:right;">

13.982300 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.6003 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4404 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

5

</td>

<td style="text-align:right;">

1557067657 \[s\]

</td>

<td style="text-align:left;">

8

</td>

<td style="text-align:left;">

2019-05-05 07:47:37

</td>

<td style="text-align:left;">

07:47:37

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067648 \[s\]

</td>

<td style="text-align:right;">

0.0011929767 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0490260 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96709 \[µmol/mol\]

</td>

<td style="text-align:right;">

292.2759234 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.55724970 \[Pa\]

</td>

<td style="text-align:right;">

39.537680 \[Pa\]

</td>

<td style="text-align:right;">

0.12401612 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274752 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.12037870 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07555461 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6763 \[W/m^2\]

</td>

<td style="text-align:right;">

21.42380 \[°C\]

</td>

<td style="text-align:right;">

20.14282 \[°C\]

</td>

<td style="text-align:right;">

2.367448 \[kPa\]

</td>

<td style="text-align:right;">

58.94496 \[%\]

</td>

<td style="text-align:right;">

1.383838 \[kPa\]

</td>

<td style="text-align:right;">

2.347678 \[kPa\]

</td>

<td style="text-align:right;">

0.9836094 \[kPa\]

</td>

<td style="text-align:right;">

\-52.61027 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.61605 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.469744 \[W/m^2\]

</td>

<td style="text-align:right;">

170.9802 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185344 \[1\]

</td>

<td style="text-align:right;">

0.04698416 \[1\]

</td>

<td style="text-align:right;">

3.499571 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54695 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.229 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067648 \[s\]

</td>

<td style="text-align:right;">

390.96710 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.98516 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.68404 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.27213 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0257 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9279 \[kPa\]

</td>

<td style="text-align:right;">

0.1999945 \[kPa\]

</td>

<td style="text-align:right;">

20.00733 \[°C\]

</td>

<td style="text-align:right;">

20.14282 \[°C\]

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

10000.368 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.51741 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730067 \[1\]

</td>

<td style="text-align:right;">

0.02699339 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.303290 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13230.65 \[1\]

</td>

<td style="text-align:right;">

13122.18 \[1\]

</td>

<td style="text-align:right;">

33.39900 \[°C\]

</td>

<td style="text-align:right;">

34.91300 \[°C\]

</td>

<td style="text-align:right;">

34.58435 \[°C\]

</td>

<td style="text-align:right;">

33.33842 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.527 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067680 \[s\]

</td>

<td style="text-align:right;">

2.310938 \[1\]

</td>

<td style="text-align:right;">

\-0.318899146 \[1/min\]

</td>

<td style="text-align:right;">

\-864.7487185 \[1/min\]

</td>

<td style="text-align:right;">

13202.33 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.016816829 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.730049e-02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02150016 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.288365 \[1\]

</td>

<td style="text-align:right;">

0.2693101537 \[1/min\]

</td>

<td style="text-align:right;">

0.2123660 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4174978 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.797987e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0199397738 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.860 \[µmol/s\]

</td>

<td style="text-align:right;">

576.305 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6819 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9989 \[°C\]

</td>

<td style="text-align:right;">

15.9037 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

19.71160 \[%\]

</td>

<td style="text-align:right;">

13.982300 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.5376 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4521 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

1557067659 \[s\]

</td>

<td style="text-align:left;">

10

</td>

<td style="text-align:left;">

2019-05-05 07:47:39

</td>

<td style="text-align:left;">

07:47:39

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067649 \[s\]

</td>

<td style="text-align:right;">

0.0011894350 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0504436 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96706 \[µmol/mol\]

</td>

<td style="text-align:right;">

291.8984035 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.51912213 \[Pa\]

</td>

<td style="text-align:right;">

39.537744 \[Pa\]

</td>

<td style="text-align:right;">

0.12353194 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274167 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11992153 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07526655 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6762 \[W/m^2\]

</td>

<td style="text-align:right;">

21.43692 \[°C\]

</td>

<td style="text-align:right;">

20.15601 \[°C\]

</td>

<td style="text-align:right;">

2.369379 \[kPa\]

</td>

<td style="text-align:right;">

58.95051 \[%\]

</td>

<td style="text-align:right;">

1.384965 \[kPa\]

</td>

<td style="text-align:right;">

2.349369 \[kPa\]

</td>

<td style="text-align:right;">

0.9844145 \[kPa\]

</td>

<td style="text-align:right;">

\-52.45408 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.80320 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.486869 \[W/m^2\]

</td>

<td style="text-align:right;">

170.9321 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183755 \[1\]

</td>

<td style="text-align:right;">

0.04696632 \[1\]

</td>

<td style="text-align:right;">

3.498521 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54706 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.229 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067649 \[s\]

</td>

<td style="text-align:right;">

390.96706 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.98526 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.69516 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.28744 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0208 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9281 \[kPa\]

</td>

<td style="text-align:right;">

0.2000053 \[kPa\]

</td>

<td style="text-align:right;">

20.01895 \[°C\]

</td>

<td style="text-align:right;">

20.15601 \[°C\]

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

9996.555 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.47271 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.304581 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13205.68 \[1\]

</td>

<td style="text-align:right;">

13122.18 \[1\]

</td>

<td style="text-align:right;">

33.40500 \[°C\]

</td>

<td style="text-align:right;">

34.91900 \[°C\]

</td>

<td style="text-align:right;">

34.59045 \[°C\]

</td>

<td style="text-align:right;">

33.34452 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.526 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067682 \[s\]

</td>

<td style="text-align:right;">

2.300885 \[1\]

</td>

<td style="text-align:right;">

\-0.401052997 \[1/min\]

</td>

<td style="text-align:right;">

\-864.9948706 \[1/min\]

</td>

<td style="text-align:right;">

13176.51 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.018341951 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.936794e-02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02143652 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.292394 \[1\]

</td>

<td style="text-align:right;">

\-0.0405850006 \[1/min\]

</td>

<td style="text-align:right;">

0.2059426 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4111173 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.314006e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0147085242 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.922 \[µmol/s\]

</td>

<td style="text-align:right;">

576.251 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6702 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9992 \[°C\]

</td>

<td style="text-align:right;">

15.9039 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

19.71180 \[%\]

</td>

<td style="text-align:right;">

13.710000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.5376 \[°C\]

</td>

<td style="text-align:right;">

400.00 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4593 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

1557067661 \[s\]

</td>

<td style="text-align:left;">

12

</td>

<td style="text-align:left;">

2019-05-05 07:47:41

</td>

<td style="text-align:left;">

07:47:41

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067651 \[s\]

</td>

<td style="text-align:right;">

0.0011861846 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.0529487 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.96919 \[µmol/mol\]

</td>

<td style="text-align:right;">

291.5297945 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.48185240 \[Pa\]

</td>

<td style="text-align:right;">

39.537968 \[Pa\]

</td>

<td style="text-align:right;">

0.12308120 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.272953 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11949482 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07499778 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6748 \[W/m^2\]

</td>

<td style="text-align:right;">

21.45106 \[°C\]

</td>

<td style="text-align:right;">

20.16944 \[°C\]

</td>

<td style="text-align:right;">

2.371349 \[kPa\]

</td>

<td style="text-align:right;">

58.95502 \[%\]

</td>

<td style="text-align:right;">

1.386134 \[kPa\]

</td>

<td style="text-align:right;">

2.351173 \[kPa\]

</td>

<td style="text-align:right;">

0.9852147 \[kPa\]

</td>

<td style="text-align:right;">

\-52.31074 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.92151 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.498336 \[W/m^2\]

</td>

<td style="text-align:right;">

170.9442 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04180456 \[1\]

</td>

<td style="text-align:right;">

0.04692928 \[1\]

</td>

<td style="text-align:right;">

3.496342 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54411 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067651 \[s\]

</td>

<td style="text-align:right;">

390.96919 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.98897 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.70672 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.30285 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0154 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9281 \[kPa\]

</td>

<td style="text-align:right;">

0.2000293 \[kPa\]

</td>

<td style="text-align:right;">

20.03135 \[°C\]

</td>

<td style="text-align:right;">

20.16944 \[°C\]

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

9988.672 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.45796 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730064 \[1\]

</td>

<td style="text-align:right;">

0.02699368 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.292613 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13179.90 \[1\]

</td>

<td style="text-align:right;">

13122.10 \[1\]

</td>

<td style="text-align:right;">

33.41100 \[°C\]

</td>

<td style="text-align:right;">

34.92500 \[°C\]

</td>

<td style="text-align:right;">

34.59655 \[°C\]

</td>

<td style="text-align:right;">

33.35061 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.517 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067684 \[s\]

</td>

<td style="text-align:right;">

2.293888 \[1\]

</td>

<td style="text-align:right;">

0.007018804 \[1/min\]

</td>

<td style="text-align:right;">

\-859.3606837 \[1/min\]

</td>

<td style="text-align:right;">

13142.18 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-9.021051463 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.023146e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.02263062 \[µmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2.294121 \[1\]

</td>

<td style="text-align:right;">

\-0.2526470694 \[1/min\]

</td>

<td style="text-align:right;">

0.2032680 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4059468 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.028726e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0113858023 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.862 \[µmol/s\]

</td>

<td style="text-align:right;">

576.377 \[µmol/s\]

</td>

<td style="text-align:right;">

19.6321 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9992 \[°C\]

</td>

<td style="text-align:right;">

15.9039 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

13.56390 \[%\]

</td>

<td style="text-align:right;">

13.710000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.5376 \[°C\]

</td>

<td style="text-align:right;">

15.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4635 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

8

</td>

<td style="text-align:right;">

1557067663 \[s\]

</td>

<td style="text-align:left;">

14

</td>

<td style="text-align:left;">

2019-05-05 07:47:43

</td>

<td style="text-align:left;">

07:47:43

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067653 \[s\]

</td>

<td style="text-align:right;">

0.0011837223 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

6.7545591 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.97028 \[µmol/mol\]

</td>

<td style="text-align:right;">

295.2326157 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.85634698 \[Pa\]

</td>

<td style="text-align:right;">

39.538126 \[Pa\]

</td>

<td style="text-align:right;">

0.12274014 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.272742 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11917298 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07479497 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6759 \[W/m^2\]

</td>

<td style="text-align:right;">

21.46408 \[°C\]

</td>

<td style="text-align:right;">

20.18165 \[°C\]

</td>

<td style="text-align:right;">

2.373141 \[kPa\]

</td>

<td style="text-align:right;">

58.96173 \[%\]

</td>

<td style="text-align:right;">

1.387330 \[kPa\]

</td>

<td style="text-align:right;">

2.352932 \[kPa\]

</td>

<td style="text-align:right;">

0.9858111 \[kPa\]

</td>

<td style="text-align:right;">

\-52.20215 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.93575 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.499922 \[W/m^2\]

</td>

<td style="text-align:right;">

171.0381 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04179881 \[1\]

</td>

<td style="text-align:right;">

0.04692283 \[1\]

</td>

<td style="text-align:right;">

3.495962 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54503 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.015 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.227 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067653 \[s\]

</td>

<td style="text-align:right;">

390.97029 \[µmol/mol\]

</td>

<td style="text-align:right;">

399.63081 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.71852 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.31759 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0182 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9282 \[kPa\]

</td>

<td style="text-align:right;">

0.1999876 \[kPa\]

</td>

<td style="text-align:right;">

20.04344 \[°C\]

</td>

<td style="text-align:right;">

20.18165 \[°C\]

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

9987.283 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.45083 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.015 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.282632 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13154.20 \[1\]

</td>

<td style="text-align:right;">

13122.16 \[1\]

</td>

<td style="text-align:right;">

33.41700 \[°C\]

</td>

<td style="text-align:right;">

34.93100 \[°C\]

</td>

<td style="text-align:right;">

34.60265 \[°C\]

</td>

<td style="text-align:right;">

33.35671 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.524 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067686 \[s\]

</td>

<td style="text-align:right;">

2.295450 \[1\]

</td>

<td style="text-align:right;">

\-0.484912813 \[1/min\]

</td>

<td style="text-align:right;">

\-846.6974364 \[1/min\]

</td>

<td style="text-align:right;">

13116.69 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-8.750003000 \[µmol/mol\]

</td>

<td style="text-align:right;">

4.486903e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

1.45318889 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.291494 \[1\]

</td>

<td style="text-align:right;">

\-0.1278165391 \[1/min\]

</td>

<td style="text-align:right;">

0.2089361 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.4020910 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.722293e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0084811716 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85778 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.909 \[µmol/s\]

</td>

<td style="text-align:right;">

576.197 \[µmol/s\]

</td>

<td style="text-align:right;">

19.5905 \[°C\]

</td>

<td style="text-align:right;">

16.0999 \[°C\]

</td>

<td style="text-align:right;">

29.9994 \[°C\]

</td>

<td style="text-align:right;">

15.9041 \[°C\]

</td>

<td style="text-align:right;">

15.8670 \[°C\]

</td>

<td style="text-align:right;">

8.56944 \[%\]

</td>

<td style="text-align:right;">

13.710000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.4550 \[°C\]

</td>

<td style="text-align:right;">

20.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4656 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

1557067665 \[s\]

</td>

<td style="text-align:left;">

16

</td>

<td style="text-align:left;">

2019-05-05 07:47:45

</td>

<td style="text-align:left;">

07:47:45

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067655 \[s\]

</td>

<td style="text-align:right;">

0.0011819323 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

1.4975503 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

390.81464 \[µmol/mol\]

</td>

<td style="text-align:right;">

364.7707029 \[µmol/mol\]

</td>

<td style="text-align:right;">

36.88862530 \[Pa\]

</td>

<td style="text-align:right;">

39.522404 \[Pa\]

</td>

<td style="text-align:right;">

0.12248778 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273923 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11893684 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07464599 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6744 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47501 \[°C\]

</td>

<td style="text-align:right;">

20.19280 \[°C\]

</td>

<td style="text-align:right;">

2.374777 \[kPa\]

</td>

<td style="text-align:right;">

58.97182 \[%\]

</td>

<td style="text-align:right;">

1.388516 \[kPa\]

</td>

<td style="text-align:right;">

2.354541 \[kPa\]

</td>

<td style="text-align:right;">

0.9862611 \[kPa\]

</td>

<td style="text-align:right;">

\-52.12321 \[W/m^2\]

</td>

<td style="text-align:right;">

\-16.95721 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.501213 \[W/m^2\]

</td>

<td style="text-align:right;">

171.0928 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183092 \[1\]

</td>

<td style="text-align:right;">

0.04695887 \[1\]

</td>

<td style="text-align:right;">

3.498083 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54619 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.219 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067655 \[s\]

</td>

<td style="text-align:right;">

390.81465 \[µmol/mol\]

</td>

<td style="text-align:right;">

393.16597 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.73025 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.33142 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0080 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9283 \[kPa\]

</td>

<td style="text-align:right;">

0.1999342 \[kPa\]

</td>

<td style="text-align:right;">

20.05448 \[°C\]

</td>

<td style="text-align:right;">

20.19280 \[°C\]

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

9994.943 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.42614 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730064 \[1\]

</td>

<td style="text-align:right;">

0.02699368 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.274023 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13127.33 \[1\]

</td>

<td style="text-align:right;">

13122.08 \[1\]

</td>

<td style="text-align:right;">

33.41900 \[°C\]

</td>

<td style="text-align:right;">

34.93300 \[°C\]

</td>

<td style="text-align:right;">

34.60874 \[°C\]

</td>

<td style="text-align:right;">

33.36281 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

1459.515 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067688 \[s\]

</td>

<td style="text-align:right;">

2.293950 \[1\]

</td>

<td style="text-align:right;">

\-0.401350413 \[1/min\]

</td>

<td style="text-align:right;">

\-830.4717937 \[1/min\]

</td>

<td style="text-align:right;">

13091.70 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-3.421163732 \[µmol/mol\]

</td>

<td style="text-align:right;">

9.039716e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

17.97740214 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.277285 \[1\]

</td>

<td style="text-align:right;">

0.1032207337 \[1/min\]

</td>

<td style="text-align:right;">

0.1859674 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3992971 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.686934e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0061906457 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.021 \[µmol/s\]

</td>

<td style="text-align:right;">

575.808 \[µmol/s\]

</td>

<td style="text-align:right;">

19.5487 \[°C\]

</td>

<td style="text-align:right;">

16.1006 \[°C\]

</td>

<td style="text-align:right;">

29.9997 \[°C\]

</td>

<td style="text-align:right;">

15.9048 \[°C\]

</td>

<td style="text-align:right;">

15.8675 \[°C\]

</td>

<td style="text-align:right;">

6.59873 \[%\]

</td>

<td style="text-align:right;">

13.710000 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.4550 \[°C\]

</td>

<td style="text-align:right;">

20.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4759 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

10

</td>

<td style="text-align:right;">

1557067667 \[s\]

</td>

<td style="text-align:left;">

18

</td>

<td style="text-align:left;">

2019-05-05 07:47:47

</td>

<td style="text-align:left;">

07:47:47

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067657 \[s\]

</td>

<td style="text-align:right;">

0.0011807816 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-12.2461755 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

389.09356 \[µmol/mol\]

</td>

<td style="text-align:right;">

545.9953686 \[µmol/mol\]

</td>

<td style="text-align:right;">

55.21557503 \[Pa\]

</td>

<td style="text-align:right;">

39.348364 \[Pa\]

</td>

<td style="text-align:right;">

0.12229385 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274711 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11875515 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07453138 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6756 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48443 \[°C\]

</td>

<td style="text-align:right;">

20.20424 \[°C\]

</td>

<td style="text-align:right;">

2.376457 \[kPa\]

</td>

<td style="text-align:right;">

58.98581 \[%\]

</td>

<td style="text-align:right;">

1.389662 \[kPa\]

</td>

<td style="text-align:right;">

2.355927 \[kPa\]

</td>

<td style="text-align:right;">

0.9867946 \[kPa\]

</td>

<td style="text-align:right;">

\-52.07247 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.20044 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.522382 \[W/m^2\]

</td>

<td style="text-align:right;">

170.8803 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185235 \[1\]

</td>

<td style="text-align:right;">

0.04698293 \[1\]

</td>

<td style="text-align:right;">

3.499498 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54707 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067657 \[s\]

</td>

<td style="text-align:right;">

389.09355 \[µmol/mol\]

</td>

<td style="text-align:right;">

374.94948 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.74158 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.34412 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0009 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9284 \[kPa\]

</td>

<td style="text-align:right;">

0.1999298 \[kPa\]

</td>

<td style="text-align:right;">

20.06398 \[°C\]

</td>

<td style="text-align:right;">

20.20424 \[°C\]

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

10000.061 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.42115 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730067 \[1\]

</td>

<td style="text-align:right;">

0.02699339 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.288674 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13101.88 \[1\]

</td>

<td style="text-align:right;">

13122.15 \[1\]

</td>

<td style="text-align:right;">

33.42500 \[°C\]

</td>

<td style="text-align:right;">

34.93700 \[°C\]

</td>

<td style="text-align:right;">

34.61484 \[°C\]

</td>

<td style="text-align:right;">

33.36687 \[°C\]

</td>

<td style="text-align:right;">

33.37900 \[°C\]

</td>

<td style="text-align:right;">

1459.522 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067690 \[s\]

</td>

<td style="text-align:right;">

2.289935 \[1\]

</td>

<td style="text-align:right;">

\-0.104700839 \[1/min\]

</td>

<td style="text-align:right;">

\-766.8410255 \[1/min\]

</td>

<td style="text-align:right;">

13061.32 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

11.906067976 \[µmol/mol\]

</td>

<td style="text-align:right;">

3.169876e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

49.04949293 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.293324 \[1\]

</td>

<td style="text-align:right;">

\-0.1668919903 \[1/min\]

</td>

<td style="text-align:right;">

0.1738428 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3975783 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.629470e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0052305854 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85343 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.953 \[µmol/s\]

</td>

<td style="text-align:right;">

575.854 \[µmol/s\]

</td>

<td style="text-align:right;">

19.4978 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

29.9998 \[°C\]

</td>

<td style="text-align:right;">

15.9053 \[°C\]

</td>

<td style="text-align:right;">

15.8682 \[°C\]

</td>

<td style="text-align:right;">

5.59449 \[%\]

</td>

<td style="text-align:right;">

13.267500 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.3639 \[°C\]

</td>

<td style="text-align:right;">

25.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5424 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

11

</td>

<td style="text-align:right;">

1557067669 \[s\]

</td>

<td style="text-align:left;">

20

</td>

<td style="text-align:left;">

2019-05-05 07:47:49

</td>

<td style="text-align:left;">

07:47:49

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067659 \[s\]

</td>

<td style="text-align:right;">

0.0011801506 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-30.0268902 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

383.43323 \[µmol/mol\]

</td>

<td style="text-align:right;">

777.5660390 \[µmol/mol\]

</td>

<td style="text-align:right;">

78.63387123 \[Pa\]

</td>

<td style="text-align:right;">

38.775921 \[Pa\]

</td>

<td style="text-align:right;">

0.12215083 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274873 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11862052 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07444651 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6729 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49244 \[°C\]

</td>

<td style="text-align:right;">

20.21562 \[°C\]

</td>

<td style="text-align:right;">

2.378129 \[kPa\]

</td>

<td style="text-align:right;">

59.00335 \[%\]

</td>

<td style="text-align:right;">

1.390757 \[kPa\]

</td>

<td style="text-align:right;">

2.357082 \[kPa\]

</td>

<td style="text-align:right;">

0.9873722 \[kPa\]

</td>

<td style="text-align:right;">

\-52.04464 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.62577 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.560070 \[W/m^2\]

</td>

<td style="text-align:right;">

170.4424 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185676 \[1\]

</td>

<td style="text-align:right;">

0.04698788 \[1\]

</td>

<td style="text-align:right;">

3.499789 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54851 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.211 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067659 \[s\]

</td>

<td style="text-align:right;">

383.43319 \[µmol/mol\]

</td>

<td style="text-align:right;">

347.94439 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.75241 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.35573 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0064 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9283 \[kPa\]

</td>

<td style="text-align:right;">

0.1999642 \[kPa\]

</td>

<td style="text-align:right;">

20.07190 \[°C\]

</td>

<td style="text-align:right;">

20.21562 \[°C\]

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

10001.124 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.44731 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730064 \[1\]

</td>

<td style="text-align:right;">

0.02699368 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.280758 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13076.56 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.43100 \[°C\]

</td>

<td style="text-align:right;">

34.93903 \[°C\]

</td>

<td style="text-align:right;">

34.61687 \[°C\]

</td>

<td style="text-align:right;">

33.37094 \[°C\]

</td>

<td style="text-align:right;">

33.38300 \[°C\]

</td>

<td style="text-align:right;">

1459.505 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067692 \[s\]

</td>

<td style="text-align:right;">

2.260615 \[1\]

</td>

<td style="text-align:right;">

0.023152157 \[1/min\]

</td>

<td style="text-align:right;">

\-715.9282056 \[1/min\]

</td>

<td style="text-align:right;">

13039.27 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

33.129301634 \[µmol/mol\]

</td>

<td style="text-align:right;">

5.823263e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

75.41809159 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.290794 \[1\]

</td>

<td style="text-align:right;">

\-0.2509467669 \[1/min\]

</td>

<td style="text-align:right;">

0.1676372 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3967173 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.915052e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0048756653 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85554 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85344 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.012 \[µmol/s\]

</td>

<td style="text-align:right;">

575.714 \[µmol/s\]

</td>

<td style="text-align:right;">

19.4568 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

29.9998 \[°C\]

</td>

<td style="text-align:right;">

15.9053 \[°C\]

</td>

<td style="text-align:right;">

15.8684 \[°C\]

</td>

<td style="text-align:right;">

4.98144 \[%\]

</td>

<td style="text-align:right;">

12.974500 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.3639 \[°C\]

</td>

<td style="text-align:right;">

30.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5546 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

12

</td>

<td style="text-align:right;">

1557067671 \[s\]

</td>

<td style="text-align:left;">

22

</td>

<td style="text-align:left;">

2019-05-05 07:47:51

</td>

<td style="text-align:left;">

07:47:51

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067661 \[s\]

</td>

<td style="text-align:right;">

0.0011790676 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-46.9763444 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

372.64586 \[µmol/mol\]

</td>

<td style="text-align:right;">

993.6821734 \[µmol/mol\]

</td>

<td style="text-align:right;">

100.48914103 \[Pa\]

</td>

<td style="text-align:right;">

37.684949 \[Pa\]

</td>

<td style="text-align:right;">

0.12197984 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274827 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11845919 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07434484 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6727 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49904 \[°C\]

</td>

<td style="text-align:right;">

20.22543 \[°C\]

</td>

<td style="text-align:right;">

2.379572 \[kPa\]

</td>

<td style="text-align:right;">

59.02385 \[%\]

</td>

<td style="text-align:right;">

1.391777 \[kPa\]

</td>

<td style="text-align:right;">

2.357991 \[kPa\]

</td>

<td style="text-align:right;">

0.9877956 \[kPa\]

</td>

<td style="text-align:right;">

\-51.99688 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.06494 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.599105 \[W/m^2\]

</td>

<td style="text-align:right;">

170.0117 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185549 \[1\]

</td>

<td style="text-align:right;">

0.04698645 \[1\]

</td>

<td style="text-align:right;">

3.499706 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54754 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.995 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.210 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067661 \[s\]

</td>

<td style="text-align:right;">

372.64581 \[µmol/mol\]

</td>

<td style="text-align:right;">

316.80205 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.76252 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.36713 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0055 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9281 \[kPa\]

</td>

<td style="text-align:right;">

0.1999860 \[kPa\]

</td>

<td style="text-align:right;">

20.07813 \[°C\]

</td>

<td style="text-align:right;">

20.22543 \[°C\]

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

10000.840 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.46999 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.995 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.276213 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13047.99 \[1\]

</td>

<td style="text-align:right;">

13121.99 \[1\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

34.94513 \[°C\]

</td>

<td style="text-align:right;">

34.62297 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

33.38500 \[°C\]

</td>

<td style="text-align:right;">

1459.505 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067694 \[s\]

</td>

<td style="text-align:right;">

2.249850 \[1\]

</td>

<td style="text-align:right;">

\-0.053452975 \[1/min\]

</td>

<td style="text-align:right;">

\-761.4803410 \[1/min\]

</td>

<td style="text-align:right;">

13013.93 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

53.891696756 \[µmol/mol\]

</td>

<td style="text-align:right;">

7.665754e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

89.04906323 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.273153 \[1\]

</td>

<td style="text-align:right;">

\-0.3638515575 \[1/min\]

</td>

<td style="text-align:right;">

0.1688535 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3955407 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.967840e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0049804037 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85556 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85343 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.056 \[µmol/s\]

</td>

<td style="text-align:right;">

575.552 \[µmol/s\]

</td>

<td style="text-align:right;">

19.4093 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9053 \[°C\]

</td>

<td style="text-align:right;">

15.8684 \[°C\]

</td>

<td style="text-align:right;">

4.75075 \[%\]

</td>

<td style="text-align:right;">

12.974500 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.3639 \[°C\]

</td>

<td style="text-align:right;">

30.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5636 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

13

</td>

<td style="text-align:right;">

1557067673 \[s\]

</td>

<td style="text-align:left;">

24

</td>

<td style="text-align:left;">

2019-05-05 07:47:53

</td>

<td style="text-align:left;">

07:47:53

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067663 \[s\]

</td>

<td style="text-align:right;">

0.0011766974 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-61.6307933 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

356.98536 \[µmol/mol\]

</td>

<td style="text-align:right;">

1175.5315399 \[µmol/mol\]

</td>

<td style="text-align:right;">

118.87917870 \[Pa\]

</td>

<td style="text-align:right;">

36.101223 \[Pa\]

</td>

<td style="text-align:right;">

0.12172226 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274491 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11821573 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07419146 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6724 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50466 \[°C\]

</td>

<td style="text-align:right;">

20.23213 \[°C\]

</td>

<td style="text-align:right;">

2.380558 \[kPa\]

</td>

<td style="text-align:right;">

59.04721 \[%\]

</td>

<td style="text-align:right;">

1.392728 \[kPa\]

</td>

<td style="text-align:right;">

2.358668 \[kPa\]

</td>

<td style="text-align:right;">

0.9878302 \[kPa\]

</td>

<td style="text-align:right;">

\-51.89235 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.31424 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.621507 \[W/m^2\]

</td>

<td style="text-align:right;">

169.8443 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184636 \[1\]

</td>

<td style="text-align:right;">

0.04697621 \[1\]

</td>

<td style="text-align:right;">

3.499103 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54485 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.993 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.209 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067663 \[s\]

</td>

<td style="text-align:right;">

356.98529 \[µmol/mol\]

</td>

<td style="text-align:right;">

283.53327 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.77193 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.37935 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0058 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9280 \[kPa\]

</td>

<td style="text-align:right;">

0.1999891 \[kPa\]

</td>

<td style="text-align:right;">

20.08277 \[°C\]

</td>

<td style="text-align:right;">

20.23213 \[°C\]

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

9998.663 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.48670 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.993 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.272406 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

13011.52 \[1\]

</td>

<td style="text-align:right;">

13121.98 \[1\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

34.95123 \[°C\]

</td>

<td style="text-align:right;">

34.62500 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

33.39100 \[°C\]

</td>

<td style="text-align:right;">

1459.503 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067696 \[s\]

</td>

<td style="text-align:right;">

2.265135 \[1\]

</td>

<td style="text-align:right;">

\-0.087798275 \[1/min\]

</td>

<td style="text-align:right;">

\-1150.6871805 \[1/min\]

</td>

<td style="text-align:right;">

12963.95 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

72.013574317 \[µmol/mol\]

</td>

<td style="text-align:right;">

8.375304e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

93.24904164 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.271603 \[1\]

</td>

<td style="text-align:right;">

\-0.2741393003 \[1/min\]

</td>

<td style="text-align:right;">

0.1680455 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3929178 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.920160e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0075157031 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.923 \[µmol/s\]

</td>

<td style="text-align:right;">

575.803 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3628 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9053 \[°C\]

</td>

<td style="text-align:right;">

15.8684 \[°C\]

</td>

<td style="text-align:right;">

4.67855 \[%\]

</td>

<td style="text-align:right;">

12.683400 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2710 \[°C\]

</td>

<td style="text-align:right;">

35.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5757 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

14

</td>

<td style="text-align:right;">

1557067675 \[s\]

</td>

<td style="text-align:left;">

26

</td>

<td style="text-align:left;">

2019-05-05 07:47:55

</td>

<td style="text-align:left;">

07:47:55

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067665 \[s\]

</td>

<td style="text-align:right;">

0.0011734073 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-73.7684816 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

337.16911 \[µmol/mol\]

</td>

<td style="text-align:right;">

1320.9069389 \[µmol/mol\]

</td>

<td style="text-align:right;">

133.58089751 \[Pa\]

</td>

<td style="text-align:right;">

34.097294 \[Pa\]

</td>

<td style="text-align:right;">

0.12139866 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274466 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11791042 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07399907 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6720 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50921 \[°C\]

</td>

<td style="text-align:right;">

20.23693 \[°C\]

</td>

<td style="text-align:right;">

2.381265 \[kPa\]

</td>

<td style="text-align:right;">

59.07377 \[%\]

</td>

<td style="text-align:right;">

1.393653 \[kPa\]

</td>

<td style="text-align:right;">

2.359174 \[kPa\]

</td>

<td style="text-align:right;">

0.9876123 \[kPa\]

</td>

<td style="text-align:right;">

\-51.74726 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.47859 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.636145 \[W/m^2\]

</td>

<td style="text-align:right;">

169.8100 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184568 \[1\]

</td>

<td style="text-align:right;">

0.04697544 \[1\]

</td>

<td style="text-align:right;">

3.499058 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54548 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.991 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.207 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067665 \[s\]

</td>

<td style="text-align:right;">

337.16903 \[µmol/mol\]

</td>

<td style="text-align:right;">

249.12387 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.78105 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.39241 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0128 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9282 \[kPa\]

</td>

<td style="text-align:right;">

0.1999735 \[kPa\]

</td>

<td style="text-align:right;">

20.08624 \[°C\]

</td>

<td style="text-align:right;">

20.23693 \[°C\]

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

9998.483 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.43132 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.991 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699354 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.287987 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12961.04 \[1\]

</td>

<td style="text-align:right;">

13121.95 \[1\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

34.95529 \[°C\]

</td>

<td style="text-align:right;">

34.62500 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

33.39700 \[°C\]

</td>

<td style="text-align:right;">

1459.500 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067698 \[s\]

</td>

<td style="text-align:right;">

2.292192 \[1\]

</td>

<td style="text-align:right;">

0.464929930 \[1/min\]

</td>

<td style="text-align:right;">

\-1739.5076938 \[1/min\]

</td>

<td style="text-align:right;">

12907.88 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

87.105772854 \[µmol/mol\]

</td>

<td style="text-align:right;">

7.981229e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

91.44933479 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.271953 \[1\]

</td>

<td style="text-align:right;">

0.4002712448 \[1/min\]

</td>

<td style="text-align:right;">

0.1800344 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3890610 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.920411e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0111313803 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85556 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.870 \[µmol/s\]

</td>

<td style="text-align:right;">

575.828 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3232 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9059 \[°C\]

</td>

<td style="text-align:right;">

15.8689 \[°C\]

</td>

<td style="text-align:right;">

4.71914 \[%\]

</td>

<td style="text-align:right;">

12.683400 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2710 \[°C\]

</td>

<td style="text-align:right;">

40.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5832 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

1557067677 \[s\]

</td>

<td style="text-align:left;">

28

</td>

<td style="text-align:left;">

2019-05-05 07:47:57

</td>

<td style="text-align:left;">

07:47:57

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067667 \[s\]

</td>

<td style="text-align:right;">

0.0011696294 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-83.5007104 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

313.96322 \[µmol/mol\]

</td>

<td style="text-align:right;">

1431.7263469 \[µmol/mol\]

</td>

<td style="text-align:right;">

144.78810667 \[Pa\]

</td>

<td style="text-align:right;">

31.750579 \[Pa\]

</td>

<td style="text-align:right;">

0.12104725 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274369 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11757872 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07379006 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6725 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51290 \[°C\]

</td>

<td style="text-align:right;">

20.24038 \[°C\]

</td>

<td style="text-align:right;">

2.381772 \[kPa\]

</td>

<td style="text-align:right;">

59.10384 \[%\]

</td>

<td style="text-align:right;">

1.394568 \[kPa\]

</td>

<td style="text-align:right;">

2.359522 \[kPa\]

</td>

<td style="text-align:right;">

0.9872043 \[kPa\]

</td>

<td style="text-align:right;">

\-51.58066 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.60793 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.647717 \[W/m^2\]

</td>

<td style="text-align:right;">

169.8362 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184304 \[1\]

</td>

<td style="text-align:right;">

0.04697248 \[1\]

</td>

<td style="text-align:right;">

3.498884 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54686 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.994 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.210 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067667 \[s\]

</td>

<td style="text-align:right;">

313.96313 \[µmol/mol\]

</td>

<td style="text-align:right;">

214.20528 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.79008 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.40591 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0117 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9284 \[kPa\]

</td>

<td style="text-align:right;">

0.1999837 \[kPa\]

</td>

<td style="text-align:right;">

20.08862 \[°C\]

</td>

<td style="text-align:right;">

20.24038 \[°C\]

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

9997.838 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.31381 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.994 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730067 \[1\]

</td>

<td style="text-align:right;">

0.02699339 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.296939 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12891.29 \[1\]

</td>

<td style="text-align:right;">

13121.98 \[1\]

</td>

<td style="text-align:right;">

33.44310 \[°C\]

</td>

<td style="text-align:right;">

34.96139 \[°C\]

</td>

<td style="text-align:right;">

34.62700 \[°C\]

</td>

<td style="text-align:right;">

33.37500 \[°C\]

</td>

<td style="text-align:right;">

33.40300 \[°C\]

</td>

<td style="text-align:right;">

1459.504 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067700 \[s\]

</td>

<td style="text-align:right;">

2.297808 \[1\]

</td>

<td style="text-align:right;">

0.704478642 \[1/min\]

</td>

<td style="text-align:right;">

\-2547.4085438 \[1/min\]

</td>

<td style="text-align:right;">

12833.12 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

99.265647000 \[µmol/mol\]

</td>

<td style="text-align:right;">

6.605140e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

86.01382378 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.292900 \[1\]

</td>

<td style="text-align:right;">

0.3963607933 \[1/min\]

</td>

<td style="text-align:right;">

0.1755193 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3845837 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.134406e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0136786857 \[mmol/mol\]

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

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85496 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.937 \[µmol/s\]

</td>

<td style="text-align:right;">

575.658 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2765 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9066 \[°C\]

</td>

<td style="text-align:right;">

15.8696 \[°C\]

</td>

<td style="text-align:right;">

4.78183 \[%\]

</td>

<td style="text-align:right;">

12.683400 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1801 \[°C\]

</td>

<td style="text-align:right;">

40.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5910 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

16

</td>

<td style="text-align:right;">

1557067679 \[s\]

</td>

<td style="text-align:left;">

30

</td>

<td style="text-align:left;">

2019-05-05 07:47:59

</td>

<td style="text-align:left;">

07:47:59

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067669 \[s\]

</td>

<td style="text-align:right;">

0.0011656054 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-91.1145230 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

288.07929 \[µmol/mol\]

</td>

<td style="text-align:right;">

1512.1298517 \[µmol/mol\]

</td>

<td style="text-align:right;">

152.91926035 \[Pa\]

</td>

<td style="text-align:right;">

29.132996 \[Pa\]

</td>

<td style="text-align:right;">

0.12069407 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274028 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11724494 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07357977 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6726 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51544 \[°C\]

</td>

<td style="text-align:right;">

20.24245 \[°C\]

</td>

<td style="text-align:right;">

2.382078 \[kPa\]

</td>

<td style="text-align:right;">

59.13859 \[%\]

</td>

<td style="text-align:right;">

1.395475 \[kPa\]

</td>

<td style="text-align:right;">

2.359669 \[kPa\]

</td>

<td style="text-align:right;">

0.9866032 \[kPa\]

</td>

<td style="text-align:right;">

\-51.40320 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.73644 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.659371 \[W/m^2\]

</td>

<td style="text-align:right;">

169.8736 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183377 \[1\]

</td>

<td style="text-align:right;">

0.04696208 \[1\]

</td>

<td style="text-align:right;">

3.498272 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54438 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.995 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.210 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067669 \[s\]

</td>

<td style="text-align:right;">

288.07919 \[µmol/mol\]

</td>

<td style="text-align:right;">

179.14671 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.79904 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.41964 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0092 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9284 \[kPa\]

</td>

<td style="text-align:right;">

0.2000049 \[kPa\]

</td>

<td style="text-align:right;">

20.08963 \[°C\]

</td>

<td style="text-align:right;">

20.24245 \[°C\]

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

9995.620 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.22897 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.995 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730070 \[1\]

</td>

<td style="text-align:right;">

0.02699309 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.314235 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12806.10 \[1\]

</td>

<td style="text-align:right;">

13121.99 \[1\]

</td>

<td style="text-align:right;">

33.44919 \[°C\]

</td>

<td style="text-align:right;">

34.96748 \[°C\]

</td>

<td style="text-align:right;">

34.62900 \[°C\]

</td>

<td style="text-align:right;">

33.37700 \[°C\]

</td>

<td style="text-align:right;">

33.40900 \[°C\]

</td>

<td style="text-align:right;">

1459.505 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067702 \[s\]

</td>

<td style="text-align:right;">

2.332058 \[1\]

</td>

<td style="text-align:right;">

0.229425644 \[1/min\]

</td>

<td style="text-align:right;">

\-3781.1247883 \[1/min\]

</td>

<td style="text-align:right;">

12703.90 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

108.822107488 \[µmol/mol\]

</td>

<td style="text-align:right;">

4.401046e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

78.60036468 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.303859 \[1\]

</td>

<td style="text-align:right;">

0.5308183467 \[1/min\]

</td>

<td style="text-align:right;">

0.1765961 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3798615 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.432999e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0164156454 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.821 \[µmol/s\]

</td>

<td style="text-align:right;">

575.913 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2409 \[°C\]

</td>

<td style="text-align:right;">

16.1007 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

4.88935 \[%\]

</td>

<td style="text-align:right;">

12.410100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1801 \[°C\]

</td>

<td style="text-align:right;">

45.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.5993 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

17

</td>

<td style="text-align:right;">

1557067681 \[s\]

</td>

<td style="text-align:left;">

32

</td>

<td style="text-align:left;">

2019-05-05 07:48:01

</td>

<td style="text-align:left;">

07:48:01

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067671 \[s\]

</td>

<td style="text-align:right;">

0.0011613679 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-96.9542150 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

260.13806 \[µmol/mol\]

</td>

<td style="text-align:right;">

1567.0207462 \[µmol/mol\]

</td>

<td style="text-align:right;">

158.47048134 \[Pa\]

</td>

<td style="text-align:right;">

26.307375 \[Pa\]

</td>

<td style="text-align:right;">

0.12035080 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273925 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11692081 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07337553 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6712 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51650 \[°C\]

</td>

<td style="text-align:right;">

20.24252 \[°C\]

</td>

<td style="text-align:right;">

2.382088 \[kPa\]

</td>

<td style="text-align:right;">

59.17705 \[%\]

</td>

<td style="text-align:right;">

1.396350 \[kPa\]

</td>

<td style="text-align:right;">

2.359613 \[kPa\]

</td>

<td style="text-align:right;">

0.9857385 \[kPa\]

</td>

<td style="text-align:right;">

\-51.21633 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.79056 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.664237 \[W/m^2\]

</td>

<td style="text-align:right;">

170.0001 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183097 \[1\]

</td>

<td style="text-align:right;">

0.04695892 \[1\]

</td>

<td style="text-align:right;">

3.498086 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54499 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.203 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067671 \[s\]

</td>

<td style="text-align:right;">

260.13795 \[µmol/mol\]

</td>

<td style="text-align:right;">

144.15966 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.80767 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.43333 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0183 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9285 \[kPa\]

</td>

<td style="text-align:right;">

0.1999991 \[kPa\]

</td>

<td style="text-align:right;">

20.08925 \[°C\]

</td>

<td style="text-align:right;">

20.24252 \[°C\]

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

9994.936 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.22117 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730070 \[1\]

</td>

<td style="text-align:right;">

0.02699309 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.293635 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12703.78 \[1\]

</td>

<td style="text-align:right;">

13121.92 \[1\]

</td>

<td style="text-align:right;">

33.45529 \[°C\]

</td>

<td style="text-align:right;">

34.97358 \[°C\]

</td>

<td style="text-align:right;">

34.63500 \[°C\]

</td>

<td style="text-align:right;">

33.38300 \[°C\]

</td>

<td style="text-align:right;">

33.41500 \[°C\]

</td>

<td style="text-align:right;">

1459.496 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067704 \[s\]

</td>

<td style="text-align:right;">

2.307258 \[1\]

</td>

<td style="text-align:right;">

0.251025642 \[1/min\]

</td>

<td style="text-align:right;">

\-4669.8393203 \[1/min\]

</td>

<td style="text-align:right;">

12585.13 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

116.177345049 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.521109e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

70.34063609 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.294044 \[1\]

</td>

<td style="text-align:right;">

0.1298876154 \[1/min\]

</td>

<td style="text-align:right;">

0.1867688 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3748822 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.850686e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0197705550 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.776 \[µmol/s\]

</td>

<td style="text-align:right;">

576.003 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2005 \[°C\]

</td>

<td style="text-align:right;">

16.1005 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

5.03031 \[%\]

</td>

<td style="text-align:right;">

12.410100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1801 \[°C\]

</td>

<td style="text-align:right;">

50.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.6139 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

18

</td>

<td style="text-align:right;">

1557067683 \[s\]

</td>

<td style="text-align:left;">

34

</td>

<td style="text-align:left;">

2019-05-05 07:48:03

</td>

<td style="text-align:left;">

07:48:03

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067673 \[s\]

</td>

<td style="text-align:right;">

0.0011561624 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-101.3045737 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

230.65522 \[µmol/mol\]

</td>

<td style="text-align:right;">

1601.7933767 \[µmol/mol\]

</td>

<td style="text-align:right;">

161.98709124 \[Pa\]

</td>

<td style="text-align:right;">

23.325835 \[Pa\]

</td>

<td style="text-align:right;">

0.11990526 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274525 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11650111 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07311099 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6708 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51651 \[°C\]

</td>

<td style="text-align:right;">

20.24172 \[°C\]

</td>

<td style="text-align:right;">

2.381969 \[kPa\]

</td>

<td style="text-align:right;">

59.21457 \[%\]

</td>

<td style="text-align:right;">

1.397116 \[kPa\]

</td>

<td style="text-align:right;">

2.359414 \[kPa\]

</td>

<td style="text-align:right;">

0.9848529 \[kPa\]

</td>

<td style="text-align:right;">

\-50.98676 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.86435 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.670313 \[W/m^2\]

</td>

<td style="text-align:right;">

170.1494 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184729 \[1\]

</td>

<td style="text-align:right;">

0.04697725 \[1\]

</td>

<td style="text-align:right;">

3.499164 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54772 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067673 \[s\]

</td>

<td style="text-align:right;">

230.65511 \[µmol/mol\]

</td>

<td style="text-align:right;">

109.41266 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.81525 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.44705 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0125 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9286 \[kPa\]

</td>

<td style="text-align:right;">

0.1999681 \[kPa\]

</td>

<td style="text-align:right;">

20.08788 \[°C\]

</td>

<td style="text-align:right;">

20.24172 \[°C\]

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

9998.828 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.22486 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730072 \[1\]

</td>

<td style="text-align:right;">

0.02699294 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.269803 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12583.99 \[1\]

</td>

<td style="text-align:right;">

13121.89 \[1\]

</td>

<td style="text-align:right;">

33.46139 \[°C\]

</td>

<td style="text-align:right;">

34.97968 \[°C\]

</td>

<td style="text-align:right;">

34.64100 \[°C\]

</td>

<td style="text-align:right;">

33.38900 \[°C\]

</td>

<td style="text-align:right;">

33.42100 \[°C\]

</td>

<td style="text-align:right;">

1459.494 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067706 \[s\]

</td>

<td style="text-align:right;">

2.277373 \[1\]

</td>

<td style="text-align:right;">

\-0.170526494 \[1/min\]

</td>

<td style="text-align:right;">

\-5348.6153768 \[1/min\]

</td>

<td style="text-align:right;">

12448.00 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

121.701759683 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.884970e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

62.07781012 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.282709 \[1\]

</td>

<td style="text-align:right;">

\-0.1137512959 \[1/min\]

</td>

<td style="text-align:right;">

0.1851287 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3688505 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.255705e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0230946711 \[mmol/mol\]

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

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.792 \[µmol/s\]

</td>

<td style="text-align:right;">

575.805 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1609 \[°C\]

</td>

<td style="text-align:right;">

16.1002 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

5.14717 \[%\]

</td>

<td style="text-align:right;">

12.139800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1008 \[°C\]

</td>

<td style="text-align:right;">

50.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.6341 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

19

</td>

<td style="text-align:right;">

1557067685 \[s\]

</td>

<td style="text-align:left;">

36

</td>

<td style="text-align:left;">

2019-05-05 07:48:05

</td>

<td style="text-align:left;">

07:48:05

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067675 \[s\]

</td>

<td style="text-align:right;">

0.0011495430 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-101.4705828 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

200.10147 \[µmol/mol\]

</td>

<td style="text-align:right;">

1580.8888915 \[µmol/mol\]

</td>

<td style="text-align:right;">

159.87326547 \[Pa\]

</td>

<td style="text-align:right;">

20.236005 \[Pa\]

</td>

<td style="text-align:right;">

0.11929151 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274884 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11592210 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07274611 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6689 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51623 \[°C\]

</td>

<td style="text-align:right;">

20.24068 \[°C\]

</td>

<td style="text-align:right;">

2.381816 \[kPa\]

</td>

<td style="text-align:right;">

59.24805 \[%\]

</td>

<td style="text-align:right;">

1.397712 \[kPa\]

</td>

<td style="text-align:right;">

2.359085 \[kPa\]

</td>

<td style="text-align:right;">

0.9841043 \[kPa\]

</td>

<td style="text-align:right;">

\-50.69485 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.01569 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.683418 \[W/m^2\]

</td>

<td style="text-align:right;">

170.2750 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185706 \[1\]

</td>

<td style="text-align:right;">

0.04698821 \[1\]

</td>

<td style="text-align:right;">

3.499809 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54609 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.972 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.191 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067675 \[s\]

</td>

<td style="text-align:right;">

200.10135 \[µmol/mol\]

</td>

<td style="text-align:right;">

78.61576 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.82112 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.46077 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0126 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9287 \[kPa\]

</td>

<td style="text-align:right;">

0.1999752 \[kPa\]

</td>

<td style="text-align:right;">

20.08563 \[°C\]

</td>

<td style="text-align:right;">

20.24068 \[°C\]

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

10001.148 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.19733 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.972 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730072 \[1\]

</td>

<td style="text-align:right;">

0.02699294 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.252606 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12450.74 \[1\]

</td>

<td style="text-align:right;">

13121.79 \[1\]

</td>

<td style="text-align:right;">

33.46748 \[°C\]

</td>

<td style="text-align:right;">

34.98577 \[°C\]

</td>

<td style="text-align:right;">

34.64700 \[°C\]

</td>

<td style="text-align:right;">

33.39500 \[°C\]

</td>

<td style="text-align:right;">

33.42700 \[°C\]

</td>

<td style="text-align:right;">

1459.482 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067708 \[s\]

</td>

<td style="text-align:right;">

2.254892 \[1\]

</td>

<td style="text-align:right;">

\-1.148854700 \[1/min\]

</td>

<td style="text-align:right;">

\-5801.2136755 \[1/min\]

</td>

<td style="text-align:right;">

12240.37 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

122.487817073 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.082443e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

60.56190551 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.259376 \[1\]

</td>

<td style="text-align:right;">

\-0.5845693308 \[1/min\]

</td>

<td style="text-align:right;">

0.1934643 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3611429 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.674902e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0268709728 \[mmol/mol\]

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

1.85554 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.673 \[µmol/s\]

</td>

<td style="text-align:right;">

575.949 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1301 \[°C\]

</td>

<td style="text-align:right;">

16.0996 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

5.28391 \[%\]

</td>

<td style="text-align:right;">

12.139800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1008 \[°C\]

</td>

<td style="text-align:right;">

55.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.6540 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

20

</td>

<td style="text-align:right;">

1557067687 \[s\]

</td>

<td style="text-align:left;">

38

</td>

<td style="text-align:left;">

2019-05-05 07:48:07

</td>

<td style="text-align:left;">

07:48:07

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067677 \[s\]

</td>

<td style="text-align:right;">

0.0011415448 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-92.8771332 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

169.71422 \[µmol/mol\]

</td>

<td style="text-align:right;">

1441.7236729 \[µmol/mol\]

</td>

<td style="text-align:right;">

145.79999198 \[Pa\]

</td>

<td style="text-align:right;">

17.163020 \[Pa\]

</td>

<td style="text-align:right;">

0.11853054 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274556 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11520287 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07229299 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6697 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51591 \[°C\]

</td>

<td style="text-align:right;">

20.23861 \[°C\]

</td>

<td style="text-align:right;">

2.381512 \[kPa\]

</td>

<td style="text-align:right;">

59.27829 \[%\]

</td>

<td style="text-align:right;">

1.398152 \[kPa\]

</td>

<td style="text-align:right;">

2.358624 \[kPa\]

</td>

<td style="text-align:right;">

0.9833600 \[kPa\]

</td>

<td style="text-align:right;">

\-50.34213 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.14664 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.695211 \[W/m^2\]

</td>

<td style="text-align:right;">

170.4857 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184812 \[1\]

</td>

<td style="text-align:right;">

0.04697818 \[1\]

</td>

<td style="text-align:right;">

3.499219 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54482 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.976 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.195 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067677 \[s\]

</td>

<td style="text-align:right;">

169.71412 \[µmol/mol\]

</td>

<td style="text-align:right;">

58.49979 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.82544 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.47459 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0258 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9289 \[kPa\]

</td>

<td style="text-align:right;">

0.2000081 \[kPa\]

</td>

<td style="text-align:right;">

20.08247 \[°C\]

</td>

<td style="text-align:right;">

20.23861 \[°C\]

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

9998.993 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.19684 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.976 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730068 \[1\]

</td>

<td style="text-align:right;">

0.02699330 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.241632 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12303.61 \[1\]

</td>

<td style="text-align:right;">

13121.82 \[1\]

</td>

<td style="text-align:right;">

33.47358 \[°C\]

</td>

<td style="text-align:right;">

34.99187 \[°C\]

</td>

<td style="text-align:right;">

34.65300 \[°C\]

</td>

<td style="text-align:right;">

33.40100 \[°C\]

</td>

<td style="text-align:right;">

33.42900 \[°C\]

</td>

<td style="text-align:right;">

1459.485 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067710 \[s\]

</td>

<td style="text-align:right;">

2.277758 \[1\]

</td>

<td style="text-align:right;">

\-1.098540173 \[1/min\]

</td>

<td style="text-align:right;">

\-5798.0068416 \[1/min\]

</td>

<td style="text-align:right;">

12074.60 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

112.716343902 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.675349e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

66.82555910 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.258297 \[1\]

</td>

<td style="text-align:right;">

\-0.5192039651 \[1/min\]

</td>

<td style="text-align:right;">

0.2094031 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3517824 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.092009e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0308085658 \[mmol/mol\]

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

1.85556 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85899 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.865 \[µmol/s\]

</td>

<td style="text-align:right;">

576.111 \[µmol/s\]

</td>

<td style="text-align:right;">

19.0936 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

5.38035 \[%\]

</td>

<td style="text-align:right;">

11.832600 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.0374 \[°C\]

</td>

<td style="text-align:right;">

60.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.6714 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

1557067689 \[s\]

</td>

<td style="text-align:left;">

40

</td>

<td style="text-align:left;">

2019-05-05 07:48:09

</td>

<td style="text-align:left;">

07:48:09

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067679 \[s\]

</td>

<td style="text-align:right;">

0.0011322553 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-77.5306366 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

141.95833 \[µmol/mol\]

</td>

<td style="text-align:right;">

1211.6432640 \[µmol/mol\]

</td>

<td style="text-align:right;">

122.53229553 \[Pa\]

</td>

<td style="text-align:right;">

14.356107 \[Pa\]

</td>

<td style="text-align:right;">

0.11764189 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273940 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11436232 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07176349 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6699 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51554 \[°C\]

</td>

<td style="text-align:right;">

20.23518 \[°C\]

</td>

<td style="text-align:right;">

2.381007 \[kPa\]

</td>

<td style="text-align:right;">

59.30609 \[%\]

</td>

<td style="text-align:right;">

1.398479 \[kPa\]

</td>

<td style="text-align:right;">

2.358069 \[kPa\]

</td>

<td style="text-align:right;">

0.9825282 \[kPa\]

</td>

<td style="text-align:right;">

\-49.93246 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.18693 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.699176 \[W/m^2\]

</td>

<td style="text-align:right;">

170.8513 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183137 \[1\]

</td>

<td style="text-align:right;">

0.04695937 \[1\]

</td>

<td style="text-align:right;">

3.498113 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54669 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.195 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067679 \[s\]

</td>

<td style="text-align:right;">

141.95825 \[µmol/mol\]

</td>

<td style="text-align:right;">

49.11892 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.82866 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.48881 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0245 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9290 \[kPa\]

</td>

<td style="text-align:right;">

0.2000197 \[kPa\]

</td>

<td style="text-align:right;">

20.07867 \[°C\]

</td>

<td style="text-align:right;">

20.23518 \[°C\]

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

9994.984 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.12919 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730072 \[1\]

</td>

<td style="text-align:right;">

0.02699300 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.246016 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

12142.47 \[1\]

</td>

<td style="text-align:right;">

13121.83 \[1\]

</td>

<td style="text-align:right;">

33.47968 \[°C\]

</td>

<td style="text-align:right;">

34.99797 \[°C\]

</td>

<td style="text-align:right;">

34.65900 \[°C\]

</td>

<td style="text-align:right;">

33.40700 \[°C\]

</td>

<td style="text-align:right;">

33.43100 \[°C\]

</td>

<td style="text-align:right;">

1459.486 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067712 \[s\]

</td>

<td style="text-align:right;">

2.278285 \[1\]

</td>

<td style="text-align:right;">

\-0.824526497 \[1/min\]

</td>

<td style="text-align:right;">

\-5580.8683684 \[1/min\]

</td>

<td style="text-align:right;">

11908.55 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

94.349056098 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.560090e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

65.71643185 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.269774 \[1\]

</td>

<td style="text-align:right;">

\-0.2123538750 \[1/min\]

</td>

<td style="text-align:right;">

0.2141164 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3408710 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.371333e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0335485352 \[mmol/mol\]

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

1.85556 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85899 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.939 \[µmol/s\]

</td>

<td style="text-align:right;">

576.147 \[µmol/s\]

</td>

<td style="text-align:right;">

19.0670 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8699 \[°C\]

</td>

<td style="text-align:right;">

5.54672 \[%\]

</td>

<td style="text-align:right;">

11.509800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.0374 \[°C\]

</td>

<td style="text-align:right;">

60.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.6904 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

22

</td>

<td style="text-align:right;">

1557067691 \[s\]

</td>

<td style="text-align:left;">

42

</td>

<td style="text-align:left;">

2019-05-05 07:48:11

</td>

<td style="text-align:left;">

07:48:11

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067681 \[s\]

</td>

<td style="text-align:right;">

0.0011219623 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-61.2350095 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

118.76047 \[µmol/mol\]

</td>

<td style="text-align:right;">

970.6508043 \[µmol/mol\]

</td>

<td style="text-align:right;">

98.16098226 \[Pa\]

</td>

<td style="text-align:right;">

12.010132 \[Pa\]

</td>

<td style="text-align:right;">

0.11663537 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273764 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11341061 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07116394 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6718 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51490 \[°C\]

</td>

<td style="text-align:right;">

20.23160 \[°C\]

</td>

<td style="text-align:right;">

2.380481 \[kPa\]

</td>

<td style="text-align:right;">

59.33131 \[%\]

</td>

<td style="text-align:right;">

1.398713 \[kPa\]

</td>

<td style="text-align:right;">

2.357461 \[kPa\]

</td>

<td style="text-align:right;">

0.9817680 \[kPa\]

</td>

<td style="text-align:right;">

\-49.47854 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.25781 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.705517 \[W/m^2\]

</td>

<td style="text-align:right;">

171.2300 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04182659 \[1\]

</td>

<td style="text-align:right;">

0.04695401 \[1\]

</td>

<td style="text-align:right;">

3.497797 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54735 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.989 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.205 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067681 \[s\]

</td>

<td style="text-align:right;">

118.76040 \[µmol/mol\]

</td>

<td style="text-align:right;">

45.44173 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83097 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.50330 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0235 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9290 \[kPa\]

</td>

<td style="text-align:right;">

0.2000059 \[kPa\]

</td>

<td style="text-align:right;">

20.07450 \[°C\]

</td>

<td style="text-align:right;">

20.23160 \[°C\]

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

9993.839 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.01396 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.989 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730062 \[1\]

</td>

<td style="text-align:right;">

0.02699401 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.258155 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11974.65 \[1\]

</td>

<td style="text-align:right;">

13121.93 \[1\]

</td>

<td style="text-align:right;">

33.48577 \[°C\]

</td>

<td style="text-align:right;">

34.99797 \[°C\]

</td>

<td style="text-align:right;">

34.66500 \[°C\]

</td>

<td style="text-align:right;">

33.41300 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.496 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067714 \[s\]

</td>

<td style="text-align:right;">

2.254327 \[1\]

</td>

<td style="text-align:right;">

0.105760685 \[1/min\]

</td>

<td style="text-align:right;">

\-5098.7145291 \[1/min\]

</td>

<td style="text-align:right;">

11698.41 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

74.649131951 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.772862e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

58.44001883 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.280259 \[1\]

</td>

<td style="text-align:right;">

\-0.3598052814 \[1/min\]

</td>

<td style="text-align:right;">

0.2137941 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3287046 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.538900e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0352757005 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85454 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85494 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.762 \[µmol/s\]

</td>

<td style="text-align:right;">

576.297 \[µmol/s\]

</td>

<td style="text-align:right;">

19.0399 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8704 \[°C\]

</td>

<td style="text-align:right;">

5.69783 \[%\]

</td>

<td style="text-align:right;">

11.509800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.0374 \[°C\]

</td>

<td style="text-align:right;">

65.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7027 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

23

</td>

<td style="text-align:right;">

1557067693 \[s\]

</td>

<td style="text-align:left;">

44

</td>

<td style="text-align:left;">

2019-05-05 07:48:13

</td>

<td style="text-align:left;">

07:48:13

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067683 \[s\]

</td>

<td style="text-align:right;">

0.0011114216 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-46.5148146 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

100.41207 \[µmol/mol\]

</td>

<td style="text-align:right;">

753.1646853 \[µmol/mol\]

</td>

<td style="text-align:right;">

76.16676386 \[Pa\]

</td>

<td style="text-align:right;">

10.154569 \[Pa\]

</td>

<td style="text-align:right;">

0.11557584 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273933 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11240878 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.07053281 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6753 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51382 \[°C\]

</td>

<td style="text-align:right;">

20.22890 \[°C\]

</td>

<td style="text-align:right;">

2.380083 \[kPa\]

</td>

<td style="text-align:right;">

59.35450 \[%\]

</td>

<td style="text-align:right;">

1.398870 \[kPa\]

</td>

<td style="text-align:right;">

2.356805 \[kPa\]

</td>

<td style="text-align:right;">

0.9812126 \[kPa\]

</td>

<td style="text-align:right;">

\-49.01369 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.47873 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.724890 \[W/m^2\]

</td>

<td style="text-align:right;">

171.4580 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183120 \[1\]

</td>

<td style="text-align:right;">

0.04695919 \[1\]

</td>

<td style="text-align:right;">

3.498101 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54589 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.223 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067683 \[s\]

</td>

<td style="text-align:right;">

100.41202 \[µmol/mol\]

</td>

<td style="text-align:right;">

44.73059 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83254 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.51734 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0218 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9290 \[kPa\]

</td>

<td style="text-align:right;">

0.1999956 \[kPa\]

</td>

<td style="text-align:right;">

20.07001 \[°C\]

</td>

<td style="text-align:right;">

20.22890 \[°C\]

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

9994.947 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.93669 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730045 \[1\]

</td>

<td style="text-align:right;">

0.02699565 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.258394 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11805.75 \[1\]

</td>

<td style="text-align:right;">

13122.10 \[1\]

</td>

<td style="text-align:right;">

33.49187 \[°C\]

</td>

<td style="text-align:right;">

34.99797 \[°C\]

</td>

<td style="text-align:right;">

34.67100 \[°C\]

</td>

<td style="text-align:right;">

33.41900 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.514 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067716 \[s\]

</td>

<td style="text-align:right;">

2.239904 \[1\]

</td>

<td style="text-align:right;">

0.564892307 \[1/min\]

</td>

<td style="text-align:right;">

\-4679.0051311 \[1/min\]

</td>

<td style="text-align:right;">

11553.20 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

56.797057024 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.839206e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

49.42938663 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.286003 \[1\]

</td>

<td style="text-align:right;">

\-0.2421762006 \[1/min\]

</td>

<td style="text-align:right;">

0.2160418 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3162461 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.770538e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0375843630 \[mmol/mol\]

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

1.85554 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85454 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.821 \[µmol/s\]

</td>

<td style="text-align:right;">

576.325 \[µmol/s\]

</td>

<td style="text-align:right;">

19.0140 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9068 \[°C\]

</td>

<td style="text-align:right;">

15.8711 \[°C\]

</td>

<td style="text-align:right;">

5.79983 \[%\]

</td>

<td style="text-align:right;">

11.225400 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9867 \[°C\]

</td>

<td style="text-align:right;">

70.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7199 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

24

</td>

<td style="text-align:right;">

1557067695 \[s\]

</td>

<td style="text-align:left;">

46

</td>

<td style="text-align:left;">

2019-05-05 07:48:15

</td>

<td style="text-align:left;">

07:48:15

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067685 \[s\]

</td>

<td style="text-align:right;">

0.0011008624 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-33.9700922 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.41650 \[µmol/mol\]

</td>

<td style="text-align:right;">

567.2408385 \[µmol/mol\]

</td>

<td style="text-align:right;">

57.36442896 \[Pa\]

</td>

<td style="text-align:right;">

8.739203 \[Pa\]

</td>

<td style="text-align:right;">

0.11451673 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273771 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11140639 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06990141 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6746 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51241 \[°C\]

</td>

<td style="text-align:right;">

20.22561 \[°C\]

</td>

<td style="text-align:right;">

2.379599 \[kPa\]

</td>

<td style="text-align:right;">

59.37678 \[%\]

</td>

<td style="text-align:right;">

1.398963 \[kPa\]

</td>

<td style="text-align:right;">

2.356077 \[kPa\]

</td>

<td style="text-align:right;">

0.9806362 \[kPa\]

</td>

<td style="text-align:right;">

\-48.54803 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.68652 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.743341 \[W/m^2\]

</td>

<td style="text-align:right;">

171.6967 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04182677 \[1\]

</td>

<td style="text-align:right;">

0.04695422 \[1\]

</td>

<td style="text-align:right;">

3.497809 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54541 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.219 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067685 \[s\]

</td>

<td style="text-align:right;">

86.41646 \[µmol/mol\]

</td>

<td style="text-align:right;">

45.76759 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83346 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.53074 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0133 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9289 \[kPa\]

</td>

<td style="text-align:right;">

0.2000060 \[kPa\]

</td>

<td style="text-align:right;">

20.06501 \[°C\]

</td>

<td style="text-align:right;">

20.22561 \[°C\]

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

9993.900 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.88107 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730040 \[1\]

</td>

<td style="text-align:right;">

0.02699617 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.226926 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11642.11 \[1\]

</td>

<td style="text-align:right;">

13122.06 \[1\]

</td>

<td style="text-align:right;">

33.49797 \[°C\]

</td>

<td style="text-align:right;">

34.99797 \[°C\]

</td>

<td style="text-align:right;">

34.67700 \[°C\]

</td>

<td style="text-align:right;">

33.42500 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.508 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067718 \[s\]

</td>

<td style="text-align:right;">

2.235585 \[1\]

</td>

<td style="text-align:right;">

0.965935042 \[1/min\]

</td>

<td style="text-align:right;">

\-4236.5128148 \[1/min\]

</td>

<td style="text-align:right;">

11419.69 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

41.558808000 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.934473e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

40.47385543 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.265382 \[1\]

</td>

<td style="text-align:right;">

0.0305975210 \[1/min\]

</td>

<td style="text-align:right;">

0.2006435 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.3038117 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.082191e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0404792698 \[mmol/mol\]

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

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85899 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.709 \[µmol/s\]

</td>

<td style="text-align:right;">

576.274 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9950 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9074 \[°C\]

</td>

<td style="text-align:right;">

15.8713 \[°C\]

</td>

<td style="text-align:right;">

5.96835 \[%\]

</td>

<td style="text-align:right;">

11.225400 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9867 \[°C\]

</td>

<td style="text-align:right;">

70.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7312 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

25

</td>

<td style="text-align:right;">

1557067697 \[s\]

</td>

<td style="text-align:left;">

48

</td>

<td style="text-align:left;">

2019-05-05 07:48:17

</td>

<td style="text-align:left;">

07:48:17

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067687 \[s\]

</td>

<td style="text-align:right;">

0.0010898733 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-23.6533546 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

76.09945 \[µmol/mol\]

</td>

<td style="text-align:right;">

413.7990440 \[µmol/mol\]

</td>

<td style="text-align:right;">

41.84697542 \[Pa\]

</td>

<td style="text-align:right;">

7.695841 \[Pa\]

</td>

<td style="text-align:right;">

0.11342765 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273874 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.11037547 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06925205 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6740 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51050 \[°C\]

</td>

<td style="text-align:right;">

20.22086 \[°C\]

</td>

<td style="text-align:right;">

2.378900 \[kPa\]

</td>

<td style="text-align:right;">

59.39780 \[%\]

</td>

<td style="text-align:right;">

1.398983 \[kPa\]

</td>

<td style="text-align:right;">

2.355278 \[kPa\]

</td>

<td style="text-align:right;">

0.9799171 \[kPa\]

</td>

<td style="text-align:right;">

\-48.06341 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.77718 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.751198 \[W/m^2\]

</td>

<td style="text-align:right;">

172.0823 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04182958 \[1\]

</td>

<td style="text-align:right;">

0.04695737 \[1\]

</td>

<td style="text-align:right;">

3.497995 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54530 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.216 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067687 \[s\]

</td>

<td style="text-align:right;">

76.09942 \[µmol/mol\]

</td>

<td style="text-align:right;">

47.81579 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83368 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.54397 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0153 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9287 \[kPa\]

</td>

<td style="text-align:right;">

0.1999968 \[kPa\]

</td>

<td style="text-align:right;">

20.05953 \[°C\]

</td>

<td style="text-align:right;">

20.22086 \[°C\]

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

9994.583 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.92381 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730035 \[1\]

</td>

<td style="text-align:right;">

0.02699669 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.205645 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11490.63 \[1\]

</td>

<td style="text-align:right;">

13122.02 \[1\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

35.00000 \[°C\]

</td>

<td style="text-align:right;">

34.68300 \[°C\]

</td>

<td style="text-align:right;">

33.43100 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.504 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067720 \[s\]

</td>

<td style="text-align:right;">

2.244562 \[1\]

</td>

<td style="text-align:right;">

0.401894018 \[1/min\]

</td>

<td style="text-align:right;">

\-3658.6119648 \[1/min\]

</td>

<td style="text-align:right;">

11260.63 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

29.010594585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.130629e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

32.37708736 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.245059 \[1\]

</td>

<td style="text-align:right;">

0.0472420471 \[1/min\]

</td>

<td style="text-align:right;">

0.2015271 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2908115 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.284247e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0423244821 \[mmol/mol\]

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

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85454 \[V\]

</td>

<td style="text-align:right;">

1.85899 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.554 \[µmol/s\]

</td>

<td style="text-align:right;">

576.382 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9737 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9081 \[°C\]

</td>

<td style="text-align:right;">

15.8713 \[°C\]

</td>

<td style="text-align:right;">

6.12065 \[%\]

</td>

<td style="text-align:right;">

10.916800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9489 \[°C\]

</td>

<td style="text-align:right;">

75.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7412 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.820 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

26

</td>

<td style="text-align:right;">

1557067699 \[s\]

</td>

<td style="text-align:left;">

50

</td>

<td style="text-align:left;">

2019-05-05 07:48:19

</td>

<td style="text-align:left;">

07:48:19

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067689 \[s\]

</td>

<td style="text-align:right;">

0.0010786923 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-15.3759933 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

68.79225 \[µmol/mol\]

</td>

<td style="text-align:right;">

290.1284103 \[µmol/mol\]

</td>

<td style="text-align:right;">

29.34029220 \[Pa\]

</td>

<td style="text-align:right;">

6.956867 \[Pa\]

</td>

<td style="text-align:right;">

0.11232512 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273928 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10933122 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06859435 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6752 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50836 \[°C\]

</td>

<td style="text-align:right;">

20.21523 \[°C\]

</td>

<td style="text-align:right;">

2.378072 \[kPa\]

</td>

<td style="text-align:right;">

59.41744 \[%\]

</td>

<td style="text-align:right;">

1.398942 \[kPa\]

</td>

<td style="text-align:right;">

2.354429 \[kPa\]

</td>

<td style="text-align:right;">

0.9791308 \[kPa\]

</td>

<td style="text-align:right;">

\-47.57033 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.80099 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.753161 \[W/m^2\]

</td>

<td style="text-align:right;">

172.5507 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183106 \[1\]

</td>

<td style="text-align:right;">

0.04695903 \[1\]

</td>

<td style="text-align:right;">

3.498093 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54609 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.221 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067689 \[s\]

</td>

<td style="text-align:right;">

68.79224 \[µmol/mol\]

</td>

<td style="text-align:right;">

50.43091 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83329 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.55682 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0222 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9286 \[kPa\]

</td>

<td style="text-align:right;">

0.1999970 \[kPa\]

</td>

<td style="text-align:right;">

20.05371 \[°C\]

</td>

<td style="text-align:right;">

20.21523 \[°C\]

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

9994.947 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.97817 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730025 \[1\]

</td>

<td style="text-align:right;">

0.02699770 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.214623 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11352.06 \[1\]

</td>

<td style="text-align:right;">

13122.08 \[1\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

35.00200 \[°C\]

</td>

<td style="text-align:right;">

34.68700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.508 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067722 \[s\]

</td>

<td style="text-align:right;">

2.265538 \[1\]

</td>

<td style="text-align:right;">

0.706023930 \[1/min\]

</td>

<td style="text-align:right;">

\-3253.8256428 \[1/min\]

</td>

<td style="text-align:right;">

11154.76 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

18.929675805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.452099e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

25.45370865 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.250376 \[1\]

</td>

<td style="text-align:right;">

0.5925524250 \[1/min\]

</td>

<td style="text-align:right;">

0.2093797 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2775220 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.302564e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0424917769 \[mmol/mol\]

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

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.793 \[µmol/s\]

</td>

<td style="text-align:right;">

576.328 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9609 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9082 \[°C\]

</td>

<td style="text-align:right;">

15.8713 \[°C\]

</td>

<td style="text-align:right;">

6.22519 \[%\]

</td>

<td style="text-align:right;">

10.916800 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9489 \[°C\]

</td>

<td style="text-align:right;">

80.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7529 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.820 \[%\]

</td>

<td style="text-align:right;">

103.177 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

27

</td>

<td style="text-align:right;">

1557067701 \[s\]

</td>

<td style="text-align:left;">

52

</td>

<td style="text-align:left;">

2019-05-05 07:48:21

</td>

<td style="text-align:left;">

07:48:21

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067691 \[s\]

</td>

<td style="text-align:right;">

0.0010674409 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-8.8526797 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

63.89360 \[µmol/mol\]

</td>

<td style="text-align:right;">

192.2014354 \[µmol/mol\]

</td>

<td style="text-align:right;">

19.43703960 \[Pa\]

</td>

<td style="text-align:right;">

6.461463 \[Pa\]

</td>

<td style="text-align:right;">

0.11121245 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274059 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10827690 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06793035 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6751 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50601 \[°C\]

</td>

<td style="text-align:right;">

20.20950 \[°C\]

</td>

<td style="text-align:right;">

2.377230 \[kPa\]

</td>

<td style="text-align:right;">

59.43666 \[%\]

</td>

<td style="text-align:right;">

1.398875 \[kPa\]

</td>

<td style="text-align:right;">

2.353555 \[kPa\]

</td>

<td style="text-align:right;">

0.9783555 \[kPa\]

</td>

<td style="text-align:right;">

\-47.07414 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.83495 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.755962 \[W/m^2\]

</td>

<td style="text-align:right;">

173.0101 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183462 \[1\]

</td>

<td style="text-align:right;">

0.04696303 \[1\]

</td>

<td style="text-align:right;">

3.498328 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54754 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.221 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067691 \[s\]

</td>

<td style="text-align:right;">

63.89359 \[µmol/mol\]

</td>

<td style="text-align:right;">

53.35258 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83265 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.56948 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0169 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9285 \[kPa\]

</td>

<td style="text-align:right;">

0.1999992 \[kPa\]

</td>

<td style="text-align:right;">

20.04771 \[°C\]

</td>

<td style="text-align:right;">

20.20950 \[°C\]

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

9995.814 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.93455 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730026 \[1\]

</td>

<td style="text-align:right;">

0.02699755 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.232555 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11226.37 \[1\]

</td>

<td style="text-align:right;">

13122.07 \[1\]

</td>

<td style="text-align:right;">

33.50200 \[°C\]

</td>

<td style="text-align:right;">

35.00600 \[°C\]

</td>

<td style="text-align:right;">

34.68700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.508 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067724 \[s\]

</td>

<td style="text-align:right;">

2.298462 \[1\]

</td>

<td style="text-align:right;">

\-0.248198295 \[1/min\]

</td>

<td style="text-align:right;">

\-2899.0393123 \[1/min\]

</td>

<td style="text-align:right;">

11060.81 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

10.982912878 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.901937e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

19.79371111 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.256209 \[1\]

</td>

<td style="text-align:right;">

0.4246638788 \[1/min\]

</td>

<td style="text-align:right;">

0.2009230 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2642193 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.203656e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0415773568 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.941 \[µmol/s\]

</td>

<td style="text-align:right;">

576.366 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9440 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9082 \[°C\]

</td>

<td style="text-align:right;">

15.8715 \[°C\]

</td>

<td style="text-align:right;">

6.39486 \[%\]

</td>

<td style="text-align:right;">

10.603700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9489 \[°C\]

</td>

<td style="text-align:right;">

80.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7638 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.177 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

28

</td>

<td style="text-align:right;">

1557067703 \[s\]

</td>

<td style="text-align:left;">

54

</td>

<td style="text-align:left;">

2019-05-05 07:48:23

</td>

<td style="text-align:left;">

07:48:23

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067693 \[s\]

</td>

<td style="text-align:right;">

0.0010563103 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

\-3.7717453 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

60.89335 \[µmol/mol\]

</td>

<td style="text-align:right;">

115.5720871 \[µmol/mol\]

</td>

<td style="text-align:right;">

11.68758071 \[Pa\]

</td>

<td style="text-align:right;">

6.158026 \[Pa\]

</td>

<td style="text-align:right;">

0.11011536 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274541 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10723723 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06727559 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6768 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50322 \[°C\]

</td>

<td style="text-align:right;">

20.20373 \[°C\]

</td>

<td style="text-align:right;">

2.376382 \[kPa\]

</td>

<td style="text-align:right;">

59.45807 \[%\]

</td>

<td style="text-align:right;">

1.398841 \[kPa\]

</td>

<td style="text-align:right;">

2.352652 \[kPa\]

</td>

<td style="text-align:right;">

0.9775402 \[kPa\]

</td>

<td style="text-align:right;">

\-46.58328 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.89176 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.760511 \[W/m^2\]

</td>

<td style="text-align:right;">

173.4412 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184771 \[1\]

</td>

<td style="text-align:right;">

0.04697772 \[1\]

</td>

<td style="text-align:right;">

3.499192 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54721 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.229 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067693 \[s\]

</td>

<td style="text-align:right;">

60.89335 \[µmol/mol\]

</td>

<td style="text-align:right;">

56.44459 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83238 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.58238 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0168 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9281 \[kPa\]

</td>

<td style="text-align:right;">

0.1999933 \[kPa\]

</td>

<td style="text-align:right;">

20.04151 \[°C\]

</td>

<td style="text-align:right;">

20.20373 \[°C\]

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

9998.982 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.89030 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730014 \[1\]

</td>

<td style="text-align:right;">

0.02699871 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.248200 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11114.51 \[1\]

</td>

<td style="text-align:right;">

13122.15 \[1\]

</td>

<td style="text-align:right;">

33.50200 \[°C\]

</td>

<td style="text-align:right;">

35.01200 \[°C\]

</td>

<td style="text-align:right;">

34.68700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.516 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50129 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067726 \[s\]

</td>

<td style="text-align:right;">

2.268235 \[1\]

</td>

<td style="text-align:right;">

\-0.307203421 \[1/min\]

</td>

<td style="text-align:right;">

\-2485.4735035 \[1/min\]

</td>

<td style="text-align:right;">

10951.62 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

4.791647024 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.465403e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

15.27674907 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.263638 \[1\]

</td>

<td style="text-align:right;">

0.3182439213 \[1/min\]

</td>

<td style="text-align:right;">

0.1924836 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2509610 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.969926e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0393478381 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.733 \[µmol/s\]

</td>

<td style="text-align:right;">

576.699 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9300 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9082 \[°C\]

</td>

<td style="text-align:right;">

15.8722 \[°C\]

</td>

<td style="text-align:right;">

6.54733 \[%\]

</td>

<td style="text-align:right;">

10.603700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9294 \[°C\]

</td>

<td style="text-align:right;">

85.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7702 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

29

</td>

<td style="text-align:right;">

1557067705 \[s\]

</td>

<td style="text-align:left;">

56

</td>

<td style="text-align:left;">

2019-05-05 07:48:25

</td>

<td style="text-align:left;">

07:48:25

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067695 \[s\]

</td>

<td style="text-align:right;">

0.0010459281 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.1581636 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

59.37291 \[µmol/mol\]

</td>

<td style="text-align:right;">

56.0952959 \[µmol/mol\]

</td>

<td style="text-align:right;">

5.67278514 \[Pa\]

</td>

<td style="text-align:right;">

6.004243 \[Pa\]

</td>

<td style="text-align:right;">

0.10911701 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274757 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10629036 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06667934 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6756 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50070 \[°C\]

</td>

<td style="text-align:right;">

20.19751 \[°C\]

</td>

<td style="text-align:right;">

2.375469 \[kPa\]

</td>

<td style="text-align:right;">

59.48261 \[%\]

</td>

<td style="text-align:right;">

1.398914 \[kPa\]

</td>

<td style="text-align:right;">

2.351804 \[kPa\]

</td>

<td style="text-align:right;">

0.9765550 \[kPa\]

</td>

<td style="text-align:right;">

\-46.12543 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.84618 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.756202 \[W/m^2\]

</td>

<td style="text-align:right;">

173.9478 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185360 \[1\]

</td>

<td style="text-align:right;">

0.04698433 \[1\]

</td>

<td style="text-align:right;">

3.499581 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54719 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.223 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067695 \[s\]

</td>

<td style="text-align:right;">

59.37291 \[µmol/mol\]

</td>

<td style="text-align:right;">

59.63722 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83315 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.59545 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0182 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9276 \[kPa\]

</td>

<td style="text-align:right;">

0.1999992 \[kPa\]

</td>

<td style="text-align:right;">

20.03568 \[°C\]

</td>

<td style="text-align:right;">

20.19751 \[°C\]

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

10000.430 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.88838 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730014 \[1\]

</td>

<td style="text-align:right;">

0.02699873 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.264600 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

11015.79 \[1\]

</td>

<td style="text-align:right;">

13122.09 \[1\]

</td>

<td style="text-align:right;">

33.50400 \[°C\]

</td>

<td style="text-align:right;">

35.01800 \[°C\]

</td>

<td style="text-align:right;">

34.68700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067728 \[s\]

</td>

<td style="text-align:right;">

2.276235 \[1\]

</td>

<td style="text-align:right;">

\-0.318068381 \[1/min\]

</td>

<td style="text-align:right;">

\-2212.0752148 \[1/min\]

</td>

<td style="text-align:right;">

10880.49 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-0.003652976 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.122292e+02 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

11.70083957 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.269344 \[1\]

</td>

<td style="text-align:right;">

0.0314231418 \[1/min\]

</td>

<td style="text-align:right;">

0.1891592 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2385646 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.644814e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0362436658 \[mmol/mol\]

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

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.718 \[µmol/s\]

</td>

<td style="text-align:right;">

576.672 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9232 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9082 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

6.71352 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9294 \[°C\]

</td>

<td style="text-align:right;">

90.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7803 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

30

</td>

<td style="text-align:right;">

1557067707 \[s\]

</td>

<td style="text-align:left;">

58

</td>

<td style="text-align:left;">

2019-05-05 07:48:27

</td>

<td style="text-align:left;">

07:48:27

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067697 \[s\]

</td>

<td style="text-align:right;">

0.0010365240 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

3.1662814 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

58.99623 \[µmol/mol\]

</td>

<td style="text-align:right;">

10.5906458 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.07100287 \[Pa\]

</td>

<td style="text-align:right;">

5.966126 \[Pa\]

</td>

<td style="text-align:right;">

0.10824201 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274906 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10546007 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06615653 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6777 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49844 \[°C\]

</td>

<td style="text-align:right;">

20.19101 \[°C\]

</td>

<td style="text-align:right;">

2.374514 \[kPa\]

</td>

<td style="text-align:right;">

59.51090 \[%\]

</td>

<td style="text-align:right;">

1.399120 \[kPa\]

</td>

<td style="text-align:right;">

2.351032 \[kPa\]

</td>

<td style="text-align:right;">

0.9753937 \[kPa\]

</td>

<td style="text-align:right;">

\-45.71071 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.69991 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.743039 \[W/m^2\]

</td>

<td style="text-align:right;">

174.5240 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185765 \[1\]

</td>

<td style="text-align:right;">

0.04698888 \[1\]

</td>

<td style="text-align:right;">

3.499849 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54699 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.022 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.234 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067697 \[s\]

</td>

<td style="text-align:right;">

58.99623 \[µmol/mol\]

</td>

<td style="text-align:right;">

62.86908 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83525 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.60865 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0095 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.1999895 \[kPa\]

</td>

<td style="text-align:right;">

20.03038 \[°C\]

</td>

<td style="text-align:right;">

20.19101 \[°C\]

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

10001.437 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.83019 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.022 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730003 \[1\]

</td>

<td style="text-align:right;">

0.02699988 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.302797 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10929.09 \[1\]

</td>

<td style="text-align:right;">

13122.19 \[1\]

</td>

<td style="text-align:right;">

33.50600 \[°C\]

</td>

<td style="text-align:right;">

35.02400 \[°C\]

</td>

<td style="text-align:right;">

34.68700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

1459.521 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50258 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067730 \[s\]

</td>

<td style="text-align:right;">

2.265627 \[1\]

</td>

<td style="text-align:right;">

\-0.034253000 \[1/min\]

</td>

<td style="text-align:right;">

\-1967.3709374 \[1/min\]

</td>

<td style="text-align:right;">

10816.89 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-3.673870049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.584953e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

8.95132469 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.285085 \[1\]

</td>

<td style="text-align:right;">

\-0.2992750720 \[1/min\]

</td>

<td style="text-align:right;">

0.1492353 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2273702 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.291466e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0329061109 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.872 \[µmol/s\]

</td>

<td style="text-align:right;">

576.528 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9161 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9088 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

6.84387 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9221 \[°C\]

</td>

<td style="text-align:right;">

90.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7315 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

31

</td>

<td style="text-align:right;">

1557067709 \[s\]

</td>

<td style="text-align:left;">

60

</td>

<td style="text-align:left;">

2019-05-05 07:48:29

</td>

<td style="text-align:left;">

07:48:29

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067699 \[s\]

</td>

<td style="text-align:right;">

0.0010279277 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

5.4735548 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

59.49582 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-24.1003307 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.43719330 \[Pa\]

</td>

<td style="text-align:right;">

6.016631 \[Pa\]

</td>

<td style="text-align:right;">

0.10746769 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275116 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10472512 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06569378 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6770 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49608 \[°C\]

</td>

<td style="text-align:right;">

20.18441 \[°C\]

</td>

<td style="text-align:right;">

2.373545 \[kPa\]

</td>

<td style="text-align:right;">

59.54370 \[%\]

</td>

<td style="text-align:right;">

1.399451 \[kPa\]

</td>

<td style="text-align:right;">

2.350293 \[kPa\]

</td>

<td style="text-align:right;">

0.9740932 \[kPa\]

</td>

<td style="text-align:right;">

\-45.33161 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.51458 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.726378 \[W/m^2\]

</td>

<td style="text-align:right;">

175.1044 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186335 \[1\]

</td>

<td style="text-align:right;">

0.04699528 \[1\]

</td>

<td style="text-align:right;">

3.500225 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54504 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.018 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.230 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067699 \[s\]

</td>

<td style="text-align:right;">

59.49582 \[µmol/mol\]

</td>

<td style="text-align:right;">

66.13736 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.83856 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.62214 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0085 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9270 \[kPa\]

</td>

<td style="text-align:right;">

0.1999973 \[kPa\]

</td>

<td style="text-align:right;">

20.02531 \[°C\]

</td>

<td style="text-align:right;">

20.18441 \[°C\]

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

10002.828 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.71362 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.018 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730003 \[1\]

</td>

<td style="text-align:right;">

0.02699989 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.280610 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10853.15 \[1\]

</td>

<td style="text-align:right;">

13122.16 \[1\]

</td>

<td style="text-align:right;">

33.51200 \[°C\]

</td>

<td style="text-align:right;">

35.03000 \[°C\]

</td>

<td style="text-align:right;">

34.69310 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.44310 \[°C\]

</td>

<td style="text-align:right;">

1459.517 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067732 \[s\]

</td>

<td style="text-align:right;">

2.251681 \[1\]

</td>

<td style="text-align:right;">

\-0.469931630 \[1/min\]

</td>

<td style="text-align:right;">

\-1680.4102558 \[1/min\]

</td>

<td style="text-align:right;">

10742.82 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-6.484718829 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.590382e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

6.87182170 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.266809 \[1\]

</td>

<td style="text-align:right;">

\-0.2316201518 \[1/min\]

</td>

<td style="text-align:right;">

0.1587134 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2171212 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.910765e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0292466494 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.866 \[µmol/s\]

</td>

<td style="text-align:right;">

576.600 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9118 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9095 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

6.98665 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9221 \[°C\]

</td>

<td style="text-align:right;">

95.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7304 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

32

</td>

<td style="text-align:right;">

1557067711 \[s\]

</td>

<td style="text-align:left;">

62

</td>

<td style="text-align:left;">

2019-05-05 07:48:31

</td>

<td style="text-align:left;">

07:48:31

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067701 \[s\]

</td>

<td style="text-align:right;">

0.0010201971 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

7.2671634 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

60.66524 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-50.7088322 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.12802327 \[Pa\]

</td>

<td style="text-align:right;">

6.134883 \[Pa\]

</td>

<td style="text-align:right;">

0.10680216 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274877 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10409270 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06529565 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6759 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49392 \[°C\]

</td>

<td style="text-align:right;">

20.17750 \[°C\]

</td>

<td style="text-align:right;">

2.372531 \[kPa\]

</td>

<td style="text-align:right;">

59.58018 \[%\]

</td>

<td style="text-align:right;">

1.399889 \[kPa\]

</td>

<td style="text-align:right;">

2.349588 \[kPa\]

</td>

<td style="text-align:right;">

0.9726425 \[kPa\]

</td>

<td style="text-align:right;">

\-44.99069 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.26012 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.703944 \[W/m^2\]

</td>

<td style="text-align:right;">

175.7212 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185686 \[1\]

</td>

<td style="text-align:right;">

0.04698799 \[1\]

</td>

<td style="text-align:right;">

3.499796 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54715 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.012 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.225 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067701 \[s\]

</td>

<td style="text-align:right;">

60.66525 \[µmol/mol\]

</td>

<td style="text-align:right;">

69.45981 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84290 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.63565 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0171 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.2000199 \[kPa\]

</td>

<td style="text-align:right;">

20.02046 \[°C\]

</td>

<td style="text-align:right;">

20.17750 \[°C\]

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

10001.293 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.64651 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.012 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730017 \[1\]

</td>

<td style="text-align:right;">

0.02699845 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.264610 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10786.57 \[1\]

</td>

<td style="text-align:right;">

13122.11 \[1\]

</td>

<td style="text-align:right;">

33.51800 \[°C\]

</td>

<td style="text-align:right;">

35.03600 \[°C\]

</td>

<td style="text-align:right;">

34.69919 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.44310 \[°C\]

</td>

<td style="text-align:right;">

1459.514 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49935 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067734 \[s\]

</td>

<td style="text-align:right;">

2.246773 \[1\]

</td>

<td style="text-align:right;">

\-0.449760688 \[1/min\]

</td>

<td style="text-align:right;">

\-1489.7196588 \[1/min\]

</td>

<td style="text-align:right;">

10694.55 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-8.672724439 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.096349e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

5.29561325 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.244538 \[1\]

</td>

<td style="text-align:right;">

\-0.4483280428 \[1/min\]

</td>

<td style="text-align:right;">

0.1719306 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2078673 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.515497e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0253394794 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.868 \[µmol/s\]

</td>

<td style="text-align:right;">

576.636 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9101 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.14572 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9221 \[°C\]

</td>

<td style="text-align:right;">

100.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7237 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

33

</td>

<td style="text-align:right;">

1557067713 \[s\]

</td>

<td style="text-align:left;">

64

</td>

<td style="text-align:left;">

2019-05-05 07:48:33

</td>

<td style="text-align:left;">

07:48:33

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067703 \[s\]

</td>

<td style="text-align:right;">

0.0010138482 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

8.6508546 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

62.34973 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-70.6893215 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.14858488 \[Pa\]

</td>

<td style="text-align:right;">

6.305228 \[Pa\]

</td>

<td style="text-align:right;">

0.10629593 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275342 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10361229 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06499315 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6739 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49120 \[°C\]

</td>

<td style="text-align:right;">

20.17046 \[°C\]

</td>

<td style="text-align:right;">

2.371499 \[kPa\]

</td>

<td style="text-align:right;">

59.61976 \[%\]

</td>

<td style="text-align:right;">

1.400425 \[kPa\]

</td>

<td style="text-align:right;">

2.348928 \[kPa\]

</td>

<td style="text-align:right;">

0.9710734 \[kPa\]

</td>

<td style="text-align:right;">

\-44.71070 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.95699 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.676684 \[W/m^2\]

</td>

<td style="text-align:right;">

176.3295 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186951 \[1\]

</td>

<td style="text-align:right;">

0.04700219 \[1\]

</td>

<td style="text-align:right;">

3.500632 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

55048 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.215 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067703 \[s\]

</td>

<td style="text-align:right;">

62.34974 \[µmol/mol\]

</td>

<td style="text-align:right;">

72.80626 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84821 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.64848 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0170 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.1999935 \[kPa\]

</td>

<td style="text-align:right;">

20.01592 \[°C\]

</td>

<td style="text-align:right;">

20.17046 \[°C\]

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

10004.315 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.58046 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730025 \[1\]

</td>

<td style="text-align:right;">

0.02699766 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.277603 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10727.60 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.52400 \[°C\]

</td>

<td style="text-align:right;">

35.04200 \[°C\]

</td>

<td style="text-align:right;">

34.70529 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.44716 \[°C\]

</td>

<td style="text-align:right;">

1459.504 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067736 \[s\]

</td>

<td style="text-align:right;">

2.262019 \[1\]

</td>

<td style="text-align:right;">

\-0.284270090 \[1/min\]

</td>

<td style="text-align:right;">

\-1322.5743571 \[1/min\]

</td>

<td style="text-align:right;">

10651.19 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-10.363284220 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.960756e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

4.09792552 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.252232 \[1\]

</td>

<td style="text-align:right;">

0.0052884437 \[1/min\]

</td>

<td style="text-align:right;">

0.1918476 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.2001876 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.084078e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0211925970 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.927 \[µmol/s\]

</td>

<td style="text-align:right;">

576.708 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9091 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.27333 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9200 \[°C\]

</td>

<td style="text-align:right;">

100.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7192 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

34

</td>

<td style="text-align:right;">

1557067715 \[s\]

</td>

<td style="text-align:left;">

66

</td>

<td style="text-align:left;">

2019-05-05 07:48:35

</td>

<td style="text-align:left;">

07:48:35

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067705 \[s\]

</td>

<td style="text-align:right;">

0.0010092278 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

9.7090514 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

64.42804 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-85.2346795 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.61951005 \[Pa\]

</td>

<td style="text-align:right;">

6.515402 \[Pa\]

</td>

<td style="text-align:right;">

0.10597677 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276158 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10330993 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06480272 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6735 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48821 \[°C\]

</td>

<td style="text-align:right;">

20.16394 \[°C\]

</td>

<td style="text-align:right;">

2.370542 \[kPa\]

</td>

<td style="text-align:right;">

59.66183 \[%\]

</td>

<td style="text-align:right;">

1.401063 \[kPa\]

</td>

<td style="text-align:right;">

2.348341 \[kPa\]

</td>

<td style="text-align:right;">

0.9694786 \[kPa\]

</td>

<td style="text-align:right;">

\-44.50695 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.65819 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.649576 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8587 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189169 \[1\]

</td>

<td style="text-align:right;">

0.04702709 \[1\]

</td>

<td style="text-align:right;">

3.502096 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54698 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.997 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.213 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067705 \[s\]

</td>

<td style="text-align:right;">

64.42805 \[µmol/mol\]

</td>

<td style="text-align:right;">

76.15649 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85452 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.66027 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0193 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.1999897 \[kPa\]

</td>

<td style="text-align:right;">

20.01189 \[°C\]

</td>

<td style="text-align:right;">

20.16394 \[°C\]

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

10009.615 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.55128 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.997 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730023 \[1\]

</td>

<td style="text-align:right;">

0.02699779 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.251684 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10675.87 \[1\]

</td>

<td style="text-align:right;">

13121.99 \[1\]

</td>

<td style="text-align:right;">

33.53000 \[°C\]

</td>

<td style="text-align:right;">

35.04800 \[°C\]

</td>

<td style="text-align:right;">

34.71139 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.45326 \[°C\]

</td>

<td style="text-align:right;">

1459.501 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49742 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067738 \[s\]

</td>

<td style="text-align:right;">

2.223608 \[1\]

</td>

<td style="text-align:right;">

\-0.061682051 \[1/min\]

</td>

<td style="text-align:right;">

\-1138.4888885 \[1/min\]

</td>

<td style="text-align:right;">

10601.12 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-11.655196585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.075609e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

3.17508045 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.238444 \[1\]

</td>

<td style="text-align:right;">

\-0.1849607661 \[1/min\]

</td>

<td style="text-align:right;">

0.1955283 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1945032 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.590824e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0169277092 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85454 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.853 \[µmol/s\]

</td>

<td style="text-align:right;">

576.708 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9098 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.41591 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

18.9200 \[°C\]

</td>

<td style="text-align:right;">

105.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

35

</td>

<td style="text-align:right;">

1557067717 \[s\]

</td>

<td style="text-align:left;">

68

</td>

<td style="text-align:left;">

2019-05-05 07:48:37

</td>

<td style="text-align:left;">

07:48:37

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067707 \[s\]

</td>

<td style="text-align:right;">

0.0010063353 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

10.5265733 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

66.80485 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-95.6366473 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.67142687 \[Pa\]

</td>

<td style="text-align:right;">

6.755760 \[Pa\]

</td>

<td style="text-align:right;">

0.10582664 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276213 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10316731 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06471294 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6716 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48554 \[°C\]

</td>

<td style="text-align:right;">

20.15903 \[°C\]

</td>

<td style="text-align:right;">

2.369822 \[kPa\]

</td>

<td style="text-align:right;">

59.70582 \[%\]

</td>

<td style="text-align:right;">

1.401786 \[kPa\]

</td>

<td style="text-align:right;">

2.347821 \[kPa\]

</td>

<td style="text-align:right;">

0.9680363 \[kPa\]

</td>

<td style="text-align:right;">

\-44.37939 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.49516 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.635051 \[W/m^2\]

</td>

<td style="text-align:right;">

177.1620 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189320 \[1\]

</td>

<td style="text-align:right;">

0.04702879 \[1\]

</td>

<td style="text-align:right;">

3.502196 \[1\]

</td>

<td style="text-align:right;">

6 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54440 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.203 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067707 \[s\]

</td>

<td style="text-align:right;">

66.80486 \[µmol/mol\]

</td>

<td style="text-align:right;">

79.51682 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86166 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.67086 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0237 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.2000129 \[kPa\]

</td>

<td style="text-align:right;">

20.00831 \[°C\]

</td>

<td style="text-align:right;">

20.15903 \[°C\]

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

10009.979 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.60012 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730028 \[1\]

</td>

<td style="text-align:right;">

0.02699730 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.252629 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10630.08 \[1\]

</td>

<td style="text-align:right;">

13121.89 \[1\]

</td>

<td style="text-align:right;">

33.53600 \[°C\]

</td>

<td style="text-align:right;">

35.05400 \[°C\]

</td>

<td style="text-align:right;">

34.71748 \[°C\]

</td>

<td style="text-align:right;">

33.43700 \[°C\]

</td>

<td style="text-align:right;">

33.45935 \[°C\]

</td>

<td style="text-align:right;">

1459.492 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49613 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067740 \[s\]

</td>

<td style="text-align:right;">

2.213846 \[1\]

</td>

<td style="text-align:right;">

\-0.399733331 \[1/min\]

</td>

<td style="text-align:right;">

\-1026.0410261 \[1/min\]

</td>

<td style="text-align:right;">

10568.09 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-12.656277805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.404460e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

2.47807567 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.239797 \[1\]

</td>

<td style="text-align:right;">

\-0.4972264681 \[1/min\]

</td>

<td style="text-align:right;">

0.1974885 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1909015 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.021992e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0129415662 \[mmol/mol\]

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

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.764 \[µmol/s\]

</td>

<td style="text-align:right;">

576.600 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9107 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.51490 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2555 \[°C\]

</td>

<td style="text-align:right;">

110.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

36

</td>

<td style="text-align:right;">

1557067719 \[s\]

</td>

<td style="text-align:left;">

70

</td>

<td style="text-align:left;">

2019-05-05 07:48:39

</td>

<td style="text-align:left;">

07:48:39

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067709 \[s\]

</td>

<td style="text-align:right;">

0.0010045210 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

11.1564768 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

69.40786 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-102.8018199 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.39601694 \[Pa\]

</td>

<td style="text-align:right;">

7.018993 \[Pa\]

</td>

<td style="text-align:right;">

0.10578376 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275537 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10312579 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06468687 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6713 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48328 \[°C\]

</td>

<td style="text-align:right;">

20.15487 \[°C\]

</td>

<td style="text-align:right;">

2.369213 \[kPa\]

</td>

<td style="text-align:right;">

59.74972 \[%\]

</td>

<td style="text-align:right;">

1.402533 \[kPa\]

</td>

<td style="text-align:right;">

2.347347 \[kPa\]

</td>

<td style="text-align:right;">

0.9666793 \[kPa\]

</td>

<td style="text-align:right;">

\-44.29938 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.37965 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.625260 \[W/m^2\]

</td>

<td style="text-align:right;">

177.3670 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187480 \[1\]

</td>

<td style="text-align:right;">

0.04700813 \[1\]

</td>

<td style="text-align:right;">

3.500981 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54362 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.202 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067709 \[s\]

</td>

<td style="text-align:right;">

69.40787 \[µmol/mol\]

</td>

<td style="text-align:right;">

82.87879 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86906 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.68040 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0193 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.2000372 \[kPa\]

</td>

<td style="text-align:right;">

20.00505 \[°C\]

</td>

<td style="text-align:right;">

20.15487 \[°C\]

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

10005.585 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.61388 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730027 \[1\]

</td>

<td style="text-align:right;">

0.02699743 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.226074 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10589.65 \[1\]

</td>

<td style="text-align:right;">

13121.88 \[1\]

</td>

<td style="text-align:right;">

33.54200 \[°C\]

</td>

<td style="text-align:right;">

35.06000 \[°C\]

</td>

<td style="text-align:right;">

34.72358 \[°C\]

</td>

<td style="text-align:right;">

33.43903 \[°C\]

</td>

<td style="text-align:right;">

33.46545 \[°C\]

</td>

<td style="text-align:right;">

1459.490 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067742 \[s\]

</td>

<td style="text-align:right;">

2.202069 \[1\]

</td>

<td style="text-align:right;">

\-0.712888882 \[1/min\]

</td>

<td style="text-align:right;">

\-927.0735029 \[1/min\]

</td>

<td style="text-align:right;">

10538.33 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-13.428786585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.885139e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

1.94766147 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.204329 \[1\]

</td>

<td style="text-align:right;">

\-0.3854107925 \[1/min\]

</td>

<td style="text-align:right;">

0.1923581 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1886959 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.485220e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0096651168 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.853 \[µmol/s\]

</td>

<td style="text-align:right;">

576.726 \[µmol/s\]

</td>

<td style="text-align:right;">

18.9377 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0003 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.68390 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2555 \[°C\]

</td>

<td style="text-align:right;">

110.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

37

</td>

<td style="text-align:right;">

1557067721 \[s\]

</td>

<td style="text-align:left;">

72

</td>

<td style="text-align:left;">

2019-05-05 07:48:41

</td>

<td style="text-align:left;">

07:48:41

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067711 \[s\]

</td>

<td style="text-align:right;">

0.0010031887 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

11.6315018 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

72.18283 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-107.3701165 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.85799456 \[Pa\]

</td>

<td style="text-align:right;">

7.299618 \[Pa\]

</td>

<td style="text-align:right;">

0.10577592 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275329 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10311810 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06468205 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6711 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48064 \[°C\]

</td>

<td style="text-align:right;">

20.15138 \[°C\]

</td>

<td style="text-align:right;">

2.368702 \[kPa\]

</td>

<td style="text-align:right;">

59.79143 \[%\]

</td>

<td style="text-align:right;">

1.403234 \[kPa\]

</td>

<td style="text-align:right;">

2.346881 \[kPa\]

</td>

<td style="text-align:right;">

0.9654684 \[kPa\]

</td>

<td style="text-align:right;">

\-44.24062 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.34394 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.622195 \[W/m^2\]

</td>

<td style="text-align:right;">

177.4643 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186916 \[1\]

</td>

<td style="text-align:right;">

0.04700180 \[1\]

</td>

<td style="text-align:right;">

3.500608 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54656 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067711 \[s\]

</td>

<td style="text-align:right;">

72.18285 \[µmol/mol\]

</td>

<td style="text-align:right;">

86.22701 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87598 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.68891 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0189 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.2000097 \[kPa\]

</td>

<td style="text-align:right;">

20.00184 \[°C\]

</td>

<td style="text-align:right;">

20.15138 \[°C\]

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

10004.234 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.57248 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730021 \[1\]

</td>

<td style="text-align:right;">

0.02699809 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.209961 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10554.23 \[1\]

</td>

<td style="text-align:right;">

13121.86 \[1\]

</td>

<td style="text-align:right;">

33.54800 \[°C\]

</td>

<td style="text-align:right;">

35.06000 \[°C\]

</td>

<td style="text-align:right;">

34.72968 \[°C\]

</td>

<td style="text-align:right;">

33.44106 \[°C\]

</td>

<td style="text-align:right;">

33.47155 \[°C\]

</td>

<td style="text-align:right;">

1459.488 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49613 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067744 \[s\]

</td>

<td style="text-align:right;">

2.184712 \[1\]

</td>

<td style="text-align:right;">

\-0.377104269 \[1/min\]

</td>

<td style="text-align:right;">

\-808.7897433 \[1/min\]

</td>

<td style="text-align:right;">

10503.13 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-14.012031707 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.447517e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

1.51538203 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.202600 \[1\]

</td>

<td style="text-align:right;">

\-0.3597008238 \[1/min\]

</td>

<td style="text-align:right;">

0.1932542 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1871041 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.512474e-03 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0073134657 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.794 \[µmol/s\]

</td>

<td style="text-align:right;">

577.014 \[µmol/s\]

</td>

<td style="text-align:right;">

19.0667 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0011 \[°C\]

</td>

<td style="text-align:right;">

15.9096 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

7.83669 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2555 \[°C\]

</td>

<td style="text-align:right;">

115.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

38

</td>

<td style="text-align:right;">

1557067723 \[s\]

</td>

<td style="text-align:left;">

74

</td>

<td style="text-align:left;">

2019-05-05 07:48:43

</td>

<td style="text-align:left;">

07:48:43

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067713 \[s\]

</td>

<td style="text-align:right;">

0.0010024976 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

11.9907847 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

75.08436 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-109.9739307 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.12133384 \[Pa\]

</td>

<td style="text-align:right;">

7.593056 \[Pa\]

</td>

<td style="text-align:right;">

0.10580614 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275339 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10314684 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06470014 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6709 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47785 \[°C\]

</td>

<td style="text-align:right;">

20.14942 \[°C\]

</td>

<td style="text-align:right;">

2.368414 \[kPa\]

</td>

<td style="text-align:right;">

59.83010 \[%\]

</td>

<td style="text-align:right;">

1.403879 \[kPa\]

</td>

<td style="text-align:right;">

2.346442 \[kPa\]

</td>

<td style="text-align:right;">

0.9645348 \[kPa\]

</td>

<td style="text-align:right;">

\-44.21014 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.47262 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.633526 \[W/m^2\]

</td>

<td style="text-align:right;">

177.3547 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186941 \[1\]

</td>

<td style="text-align:right;">

0.04700208 \[1\]

</td>

<td style="text-align:right;">

3.500625 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54653 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.200 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067713 \[s\]

</td>

<td style="text-align:right;">

75.08437 \[µmol/mol\]

</td>

<td style="text-align:right;">

89.56297 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88234 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.69609 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0231 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9270 \[kPa\]

</td>

<td style="text-align:right;">

0.2000014 \[kPa\]

</td>

<td style="text-align:right;">

19.99883 \[°C\]

</td>

<td style="text-align:right;">

20.14942 \[°C\]

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

10004.273 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.47739 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730022 \[1\]

</td>

<td style="text-align:right;">

0.02699795 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.209181 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10523.02 \[1\]

</td>

<td style="text-align:right;">

13121.86 \[1\]

</td>

<td style="text-align:right;">

33.55200 \[°C\]

</td>

<td style="text-align:right;">

35.06200 \[°C\]

</td>

<td style="text-align:right;">

34.73577 \[°C\]

</td>

<td style="text-align:right;">

33.44716 \[°C\]

</td>

<td style="text-align:right;">

33.47765 \[°C\]

</td>

<td style="text-align:right;">

1459.487 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067746 \[s\]

</td>

<td style="text-align:right;">

2.185254 \[1\]

</td>

<td style="text-align:right;">

0.182598298 \[1/min\]

</td>

<td style="text-align:right;">

\-730.5094020 \[1/min\]

</td>

<td style="text-align:right;">

10480.04 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-14.456182927 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.084429e+01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

1.16256333 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.195285 \[1\]

</td>

<td style="text-align:right;">

\-0.1342759510 \[1/min\]

</td>

<td style="text-align:right;">

0.1891936 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1862646 \[mmol/mol\]

</td>

<td style="text-align:right;">

2.197275e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0064123273 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.829 \[µmol/s\]

</td>

<td style="text-align:right;">

576.996 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2111 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0012 \[°C\]

</td>

<td style="text-align:right;">

15.9102 \[°C\]

</td>

<td style="text-align:right;">

15.8728 \[°C\]

</td>

<td style="text-align:right;">

8.00122 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2631 \[°C\]

</td>

<td style="text-align:right;">

120.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

39

</td>

<td style="text-align:right;">

1557067725 \[s\]

</td>

<td style="text-align:left;">

76

</td>

<td style="text-align:left;">

2019-05-05 07:48:45

</td>

<td style="text-align:left;">

07:48:45

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067715 \[s\]

</td>

<td style="text-align:right;">

0.0010023035 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

12.2726726 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

78.07751 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-111.2329742 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.24867710 \[Pa\]

</td>

<td style="text-align:right;">

7.895758 \[Pa\]

</td>

<td style="text-align:right;">

0.10587421 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274764 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10321088 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06474051 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6738 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47576 \[°C\]

</td>

<td style="text-align:right;">

20.14813 \[°C\]

</td>

<td style="text-align:right;">

2.368225 \[kPa\]

</td>

<td style="text-align:right;">

59.86486 \[%\]

</td>

<td style="text-align:right;">

1.404475 \[kPa\]

</td>

<td style="text-align:right;">

2.346076 \[kPa\]

</td>

<td style="text-align:right;">

0.9637496 \[kPa\]

</td>

<td style="text-align:right;">

\-44.20159 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.61908 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.646861 \[W/m^2\]

</td>

<td style="text-align:right;">

177.2063 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185378 \[1\]

</td>

<td style="text-align:right;">

0.04698454 \[1\]

</td>

<td style="text-align:right;">

3.499593 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54684 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.215 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067715 \[s\]

</td>

<td style="text-align:right;">

78.07752 \[µmol/mol\]

</td>

<td style="text-align:right;">

92.89793 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88821 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.70220 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0239 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.2000196 \[kPa\]

</td>

<td style="text-align:right;">

19.99630 \[°C\]

</td>

<td style="text-align:right;">

20.14813 \[°C\]

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

10000.523 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.33911 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730012 \[1\]

</td>

<td style="text-align:right;">

0.02699895 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.204674 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10494.79 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.55800 \[°C\]

</td>

<td style="text-align:right;">

35.06200 \[°C\]

</td>

<td style="text-align:right;">

34.74187 \[°C\]

</td>

<td style="text-align:right;">

33.45326 \[°C\]

</td>

<td style="text-align:right;">

33.48374 \[°C\]

</td>

<td style="text-align:right;">

1459.502 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067748 \[s\]

</td>

<td style="text-align:right;">

2.193985 \[1\]

</td>

<td style="text-align:right;">

\-0.029538454 \[1/min\]

</td>

<td style="text-align:right;">

\-665.6888879 \[1/min\]

</td>

<td style="text-align:right;">

10458.73 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-14.801617073 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.097487e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.89238830 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199003 \[1\]

</td>

<td style="text-align:right;">

\-0.1415857268 \[1/min\]

</td>

<td style="text-align:right;">

0.1878197 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1860032 \[mmol/mol\]

</td>

<td style="text-align:right;">

3.721547e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0062103122 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85547 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.044 \[µmol/s\]

</td>

<td style="text-align:right;">

576.889 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2657 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0005 \[°C\]

</td>

<td style="text-align:right;">

15.9110 \[°C\]

</td>

<td style="text-align:right;">

15.8729 \[°C\]

</td>

<td style="text-align:right;">

8.13051 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2631 \[°C\]

</td>

<td style="text-align:right;">

120.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

40

</td>

<td style="text-align:right;">

1557067727 \[s\]

</td>

<td style="text-align:left;">

78

</td>

<td style="text-align:left;">

2019-05-05 07:48:47

</td>

<td style="text-align:left;">

07:48:47

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067717 \[s\]

</td>

<td style="text-align:right;">

0.0010024594 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

12.5108556 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

81.13747 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-111.6917670 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.29507709 \[Pa\]

</td>

<td style="text-align:right;">

8.205206 \[Pa\]

</td>

<td style="text-align:right;">

0.10597518 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275019 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10330712 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06480107 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6739 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47359 \[°C\]

</td>

<td style="text-align:right;">

20.14672 \[°C\]

</td>

<td style="text-align:right;">

2.368018 \[kPa\]

</td>

<td style="text-align:right;">

59.89530 \[%\]

</td>

<td style="text-align:right;">

1.405018 \[kPa\]

</td>

<td style="text-align:right;">

2.345790 \[kPa\]

</td>

<td style="text-align:right;">

0.9630001 \[kPa\]

</td>

<td style="text-align:right;">

\-44.20846 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.68961 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.652886 \[W/m^2\]

</td>

<td style="text-align:right;">

177.1229 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186072 \[1\]

</td>

<td style="text-align:right;">

0.04699233 \[1\]

</td>

<td style="text-align:right;">

3.500051 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54906 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.215 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067717 \[s\]

</td>

<td style="text-align:right;">

81.13748 \[µmol/mol\]

</td>

<td style="text-align:right;">

96.24738 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89357 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.70739 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0242 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999870 \[kPa\]

</td>

<td style="text-align:right;">

19.99434 \[°C\]

</td>

<td style="text-align:right;">

20.14672 \[°C\]

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

10002.174 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.22236 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730013 \[1\]

</td>

<td style="text-align:right;">

0.02699882 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.218026 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10469.99 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

35.06200 \[°C\]

</td>

<td style="text-align:right;">

34.74797 \[°C\]

</td>

<td style="text-align:right;">

33.45935 \[°C\]

</td>

<td style="text-align:right;">

33.48984 \[°C\]

</td>

<td style="text-align:right;">

1459.502 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49806 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067750 \[s\]

</td>

<td style="text-align:right;">

2.217108 \[1\]

</td>

<td style="text-align:right;">

0.608382906 \[1/min\]

</td>

<td style="text-align:right;">

\-574.1709400 \[1/min\]

</td>

<td style="text-align:right;">

10433.74 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.090768293 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.030033e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.66800771 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.214209 \[1\]

</td>

<td style="text-align:right;">

0.1919122048 \[1/min\]

</td>

<td style="text-align:right;">

0.1956654 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1861527 \[mmol/mol\]

</td>

<td style="text-align:right;">

4.432704e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0062414511 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.795 \[µmol/s\]

</td>

<td style="text-align:right;">

577.205 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2865 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8736 \[°C\]

</td>

<td style="text-align:right;">

8.27331 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2742 \[°C\]

</td>

<td style="text-align:right;">

125.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

41

</td>

<td style="text-align:right;">

1557067729 \[s\]

</td>

<td style="text-align:left;">

80

</td>

<td style="text-align:left;">

2019-05-05 07:48:49

</td>

<td style="text-align:left;">

07:48:49

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067719 \[s\]

</td>

<td style="text-align:right;">

0.0010029788 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

12.7193903 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.24821 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-111.5794187 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.28371402 \[Pa\]

</td>

<td style="text-align:right;">

8.519785 \[Pa\]

</td>

<td style="text-align:right;">

0.10610976 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275659 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10343575 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06488198 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6754 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47168 \[°C\]

</td>

<td style="text-align:right;">

20.14522 \[°C\]

</td>

<td style="text-align:right;">

2.367799 \[kPa\]

</td>

<td style="text-align:right;">

59.92092 \[%\]

</td>

<td style="text-align:right;">

1.405499 \[kPa\]

</td>

<td style="text-align:right;">

2.345590 \[kPa\]

</td>

<td style="text-align:right;">

0.9622994 \[kPa\]

</td>

<td style="text-align:right;">

\-44.23136 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.67983 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.651532 \[W/m^2\]

</td>

<td style="text-align:right;">

177.1126 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187811 \[1\]

</td>

<td style="text-align:right;">

0.04701185 \[1\]

</td>

<td style="text-align:right;">

3.501200 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54830 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067719 \[s\]

</td>

<td style="text-align:right;">

84.24822 \[µmol/mol\]

</td>

<td style="text-align:right;">

99.61220 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89833 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.71154 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0225 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999727 \[kPa\]

</td>

<td style="text-align:right;">

19.99296 \[°C\]

</td>

<td style="text-align:right;">

20.14522 \[°C\]

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

10006.329 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.19224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730005 \[1\]

</td>

<td style="text-align:right;">

0.02699960 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.187961 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10448.05 \[1\]

</td>

<td style="text-align:right;">

13122.08 \[1\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

35.06200 \[°C\]

</td>

<td style="text-align:right;">

34.75000 \[°C\]

</td>

<td style="text-align:right;">

33.46545 \[°C\]

</td>

<td style="text-align:right;">

33.49187 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49935 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067752 \[s\]

</td>

<td style="text-align:right;">

2.197150 \[1\]

</td>

<td style="text-align:right;">

0.651798289 \[1/min\]

</td>

<td style="text-align:right;">

\-517.7128208 \[1/min\]

</td>

<td style="text-align:right;">

10417.18 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.348885366 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.701901e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.49383337 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.198682 \[1\]

</td>

<td style="text-align:right;">

0.4770591964 \[1/min\]

</td>

<td style="text-align:right;">

0.1992733 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1867541 \[mmol/mol\]

</td>

<td style="text-align:right;">

3.925254e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0060823671 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.869 \[µmol/s\]

</td>

<td style="text-align:right;">

577.141 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2986 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

8.43242 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2742 \[°C\]

</td>

<td style="text-align:right;">

130.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

42

</td>

<td style="text-align:right;">

1557067731 \[s\]

</td>

<td style="text-align:left;">

82

</td>

<td style="text-align:left;">

2019-05-05 07:48:51

</td>

<td style="text-align:left;">

07:48:51

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067721 \[s\]

</td>

<td style="text-align:right;">

0.0010037979 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

12.8731295 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.40324 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-110.5577164 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.18039930 \[Pa\]

</td>

<td style="text-align:right;">

8.838851 \[Pa\]

</td>

<td style="text-align:right;">

0.10625622 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276196 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10357553 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06496992 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6743 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47021 \[°C\]

</td>

<td style="text-align:right;">

20.14453 \[°C\]

</td>

<td style="text-align:right;">

2.367698 \[kPa\]

</td>

<td style="text-align:right;">

59.94180 \[%\]

</td>

<td style="text-align:right;">

1.405914 \[kPa\]

</td>

<td style="text-align:right;">

2.345464 \[kPa\]

</td>

<td style="text-align:right;">

0.9617847 \[kPa\]

</td>

<td style="text-align:right;">

\-44.26749 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.70640 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.653478 \[W/m^2\]

</td>

<td style="text-align:right;">

177.0469 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189272 \[1\]

</td>

<td style="text-align:right;">

0.04702825 \[1\]

</td>

<td style="text-align:right;">

3.502164 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54607 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.002 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.216 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067721 \[s\]

</td>

<td style="text-align:right;">

87.40325 \[µmol/mol\]

</td>

<td style="text-align:right;">

102.95572 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90242 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.71465 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0183 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.1999730 \[kPa\]

</td>

<td style="text-align:right;">

19.99209 \[°C\]

</td>

<td style="text-align:right;">

20.14453 \[°C\]

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

10009.814 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.19656 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.002 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729997 \[1\]

</td>

<td style="text-align:right;">

0.02700040 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.208219 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10427.79 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

35.06810 \[°C\]

</td>

<td style="text-align:right;">

34.75000 \[°C\]

</td>

<td style="text-align:right;">

33.47155 \[°C\]

</td>

<td style="text-align:right;">

33.49594 \[°C\]

</td>

<td style="text-align:right;">

1459.502 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067754 \[s\]

</td>

<td style="text-align:right;">

2.220092 \[1\]

</td>

<td style="text-align:right;">

0.930475209 \[1/min\]

</td>

<td style="text-align:right;">

\-469.3470079 \[1/min\]

</td>

<td style="text-align:right;">

10401.92 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.541478049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.212863e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.43372159 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.231118 \[1\]

</td>

<td style="text-align:right;">

0.2192290472 \[1/min\]

</td>

<td style="text-align:right;">

0.1871041 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1877229 \[mmol/mol\]

</td>

<td style="text-align:right;">

2.238188e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0052245183 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.046 \[µmol/s\]

</td>

<td style="text-align:right;">

576.853 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3055 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

8.56071 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2742 \[°C\]

</td>

<td style="text-align:right;">

130.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

43

</td>

<td style="text-align:right;">

1557067733 \[s\]

</td>

<td style="text-align:left;">

84

</td>

<td style="text-align:left;">

2019-05-05 07:48:53

</td>

<td style="text-align:left;">

07:48:53

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067723 \[s\]

</td>

<td style="text-align:right;">

0.0010045917 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

12.9853230 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

90.58890 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-108.9444134 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-11.01725862 \[Pa\]

</td>

<td style="text-align:right;">

9.161014 \[Pa\]

</td>

<td style="text-align:right;">

0.10636112 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275533 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10367445 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06503227 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6758 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47004 \[°C\]

</td>

<td style="text-align:right;">

20.14571 \[°C\]

</td>

<td style="text-align:right;">

2.367870 \[kPa\]

</td>

<td style="text-align:right;">

59.95713 \[%\]

</td>

<td style="text-align:right;">

1.406245 \[kPa\]

</td>

<td style="text-align:right;">

2.345418 \[kPa\]

</td>

<td style="text-align:right;">

0.9616252 \[kPa\]

</td>

<td style="text-align:right;">

\-44.30250 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.88458 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.669721 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8190 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187469 \[1\]

</td>

<td style="text-align:right;">

0.04700800 \[1\]

</td>

<td style="text-align:right;">

3.500973 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54515 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067723 \[s\]

</td>

<td style="text-align:right;">

90.58891 \[µmol/mol\]

</td>

<td style="text-align:right;">

106.27985 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90569 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.71699 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0210 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.2000164 \[kPa\]

</td>

<td style="text-align:right;">

19.99177 \[°C\]

</td>

<td style="text-align:right;">

20.14571 \[°C\]

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

10005.501 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.15093 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729991 \[1\]

</td>

<td style="text-align:right;">

0.02700105 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.215655 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10409.83 \[1\]

</td>

<td style="text-align:right;">

13122.09 \[1\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

35.07419 \[°C\]

</td>

<td style="text-align:right;">

34.75000 \[°C\]

</td>

<td style="text-align:right;">

33.47765 \[°C\]

</td>

<td style="text-align:right;">

33.49797 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50194 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067756 \[s\]

</td>

<td style="text-align:right;">

2.228462 \[1\]

</td>

<td style="text-align:right;">

\-0.077299157 \[1/min\]

</td>

<td style="text-align:right;">

\-418.3213674 \[1/min\]

</td>

<td style="text-align:right;">

10383.87 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.679743902 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.017558e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.41483560 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.218035 \[1\]

</td>

<td style="text-align:right;">

0.1738956544 \[1/min\]

</td>

<td style="text-align:right;">

0.1895981 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1886771 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.237840e-03 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0037631339 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.913 \[µmol/s\]

</td>

<td style="text-align:right;">

576.979 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3080 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

8.70441 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2789 \[°C\]

</td>

<td style="text-align:right;">

135.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

44

</td>

<td style="text-align:right;">

1557067735 \[s\]

</td>

<td style="text-align:left;">

86

</td>

<td style="text-align:left;">

2019-05-05 07:48:55

</td>

<td style="text-align:left;">

07:48:55

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067725 \[s\]

</td>

<td style="text-align:right;">

0.0010049285 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.0946063 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

93.79152 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-107.3993072 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.86100781 \[Pa\]

</td>

<td style="text-align:right;">

9.484889 \[Pa\]

</td>

<td style="text-align:right;">

0.10639470 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274183 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10370481 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06505152 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6728 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47060 \[°C\]

</td>

<td style="text-align:right;">

20.14749 \[°C\]

</td>

<td style="text-align:right;">

2.368132 \[kPa\]

</td>

<td style="text-align:right;">

59.96704 \[%\]

</td>

<td style="text-align:right;">

1.406468 \[kPa\]

</td>

<td style="text-align:right;">

2.345402 \[kPa\]

</td>

<td style="text-align:right;">

0.9616638 \[kPa\]

</td>

<td style="text-align:right;">

\-44.31735 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.10553 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.690275 \[W/m^2\]

</td>

<td style="text-align:right;">

176.5596 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183798 \[1\]

</td>

<td style="text-align:right;">

0.04696679 \[1\]

</td>

<td style="text-align:right;">

3.498549 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54593 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.992 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.208 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067725 \[s\]

</td>

<td style="text-align:right;">

93.79154 \[µmol/mol\]

</td>

<td style="text-align:right;">

109.61752 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90789 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.71879 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0206 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.2000319 \[kPa\]

</td>

<td style="text-align:right;">

19.99166 \[°C\]

</td>

<td style="text-align:right;">

20.14749 \[°C\]

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

9996.729 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.09447 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.992 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730003 \[1\]

</td>

<td style="text-align:right;">

0.02699989 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203545 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10393.59 \[1\]

</td>

<td style="text-align:right;">

13121.94 \[1\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

35.08029 \[°C\]

</td>

<td style="text-align:right;">

34.75200 \[°C\]

</td>

<td style="text-align:right;">

33.48374 \[°C\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

1459.494 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067758 \[s\]

</td>

<td style="text-align:right;">

2.222281 \[1\]

</td>

<td style="text-align:right;">

\-0.382772659 \[1/min\]

</td>

<td style="text-align:right;">

\-382.0376071 \[1/min\]

</td>

<td style="text-align:right;">

10371.75 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.817165854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.877200e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.40088544 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203421 \[1\]

</td>

<td style="text-align:right;">

0.0686239563 \[1/min\]

</td>

<td style="text-align:right;">

0.1657228 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1891339 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.185317e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0028890608 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.928 \[µmol/s\]

</td>

<td style="text-align:right;">

577.087 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3061 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

8.86376 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2789 \[°C\]

</td>

<td style="text-align:right;">

140.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

45

</td>

<td style="text-align:right;">

1557067737 \[s\]

</td>

<td style="text-align:left;">

88

</td>

<td style="text-align:left;">

2019-05-05 07:48:57

</td>

<td style="text-align:left;">

07:48:57

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067727 \[s\]

</td>

<td style="text-align:right;">

0.0010045259 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.1844537 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

97.01082 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-105.6739882 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.68651310 \[Pa\]

</td>

<td style="text-align:right;">

9.810432 \[Pa\]

</td>

<td style="text-align:right;">

0.10635447 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274389 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10366682 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06502758 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6759 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47043 \[°C\]

</td>

<td style="text-align:right;">

20.14796 \[°C\]

</td>

<td style="text-align:right;">

2.368200 \[kPa\]

</td>

<td style="text-align:right;">

59.97221 \[%\]

</td>

<td style="text-align:right;">

1.406572 \[kPa\]

</td>

<td style="text-align:right;">

2.345373 \[kPa\]

</td>

<td style="text-align:right;">

0.9616283 \[kPa\]

</td>

<td style="text-align:right;">

\-44.29959 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.18914 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.697520 \[W/m^2\]

</td>

<td style="text-align:right;">

176.4896 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184359 \[1\]

</td>

<td style="text-align:right;">

0.04697310 \[1\]

</td>

<td style="text-align:right;">

3.498920 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54771 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067727 \[s\]

</td>

<td style="text-align:right;">

97.01084 \[µmol/mol\]

</td>

<td style="text-align:right;">

112.94869 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90894 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72031 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0137 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999606 \[kPa\]

</td>

<td style="text-align:right;">

19.99146 \[°C\]

</td>

<td style="text-align:right;">

20.14796 \[°C\]

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

9998.080 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.00094 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729992 \[1\]

</td>

<td style="text-align:right;">

0.02700089 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.206619 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10379.43 \[1\]

</td>

<td style="text-align:right;">

13122.10 \[1\]

</td>

<td style="text-align:right;">

33.56810 \[°C\]

</td>

<td style="text-align:right;">

35.08639 \[°C\]

</td>

<td style="text-align:right;">

34.75200 \[°C\]

</td>

<td style="text-align:right;">

33.48984 \[°C\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50161 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067760 \[s\]

</td>

<td style="text-align:right;">

2.234238 \[1\]

</td>

<td style="text-align:right;">

\-0.385087187 \[1/min\]

</td>

<td style="text-align:right;">

\-344.5880337 \[1/min\]

</td>

<td style="text-align:right;">

10360.99 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-15.930773171 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.893143e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.40256936 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.212635 \[1\]

</td>

<td style="text-align:right;">

0.1510804057 \[1/min\]

</td>

<td style="text-align:right;">

0.1637768 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1887178 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.024794e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0031423321 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.972 \[µmol/s\]

</td>

<td style="text-align:right;">

577.087 \[µmol/s\]

</td>

<td style="text-align:right;">

19.3034 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

8.99130 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2801 \[°C\]

</td>

<td style="text-align:right;">

140.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

46

</td>

<td style="text-align:right;">

1557067739 \[s\]

</td>

<td style="text-align:left;">

90

</td>

<td style="text-align:left;">

2019-05-05 07:48:59

</td>

<td style="text-align:left;">

07:48:59

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067729 \[s\]

</td>

<td style="text-align:right;">

0.0010034977 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.2618860 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

100.24029 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-103.8722489 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.50430580 \[Pa\]

</td>

<td style="text-align:right;">

10.137016 \[Pa\]

</td>

<td style="text-align:right;">

0.10624811 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275230 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10356672 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06496447 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6761 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47040 \[°C\]

</td>

<td style="text-align:right;">

20.14763 \[°C\]

</td>

<td style="text-align:right;">

2.368151 \[kPa\]

</td>

<td style="text-align:right;">

59.97203 \[%\]

</td>

<td style="text-align:right;">

1.406579 \[kPa\]

</td>

<td style="text-align:right;">

2.345392 \[kPa\]

</td>

<td style="text-align:right;">

0.9615725 \[kPa\]

</td>

<td style="text-align:right;">

\-44.25425 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.13926 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.692480 \[W/m^2\]

</td>

<td style="text-align:right;">

176.5901 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186646 \[1\]

</td>

<td style="text-align:right;">

0.04699876 \[1\]

</td>

<td style="text-align:right;">

3.500430 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54712 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.012 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.225 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067729 \[s\]

</td>

<td style="text-align:right;">

100.24030 \[µmol/mol\]

</td>

<td style="text-align:right;">

116.27485 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90901 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72160 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0134 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999367 \[kPa\]

</td>

<td style="text-align:right;">

19.99159 \[°C\]

</td>

<td style="text-align:right;">

20.14763 \[°C\]

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

10003.544 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.89738 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.012 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729994 \[1\]

</td>

<td style="text-align:right;">

0.02700076 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.239910 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10366.89 \[1\]

</td>

<td style="text-align:right;">

13122.11 \[1\]

</td>

<td style="text-align:right;">

33.56810 \[°C\]

</td>

<td style="text-align:right;">

35.09248 \[°C\]

</td>

<td style="text-align:right;">

34.75200 \[°C\]

</td>

<td style="text-align:right;">

33.49594 \[°C\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

1459.512 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50194 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067762 \[s\]

</td>

<td style="text-align:right;">

2.244354 \[1\]

</td>

<td style="text-align:right;">

\-0.318769240 \[1/min\]

</td>

<td style="text-align:right;">

\-296.7521368 \[1/min\]

</td>

<td style="text-align:right;">

10348.04 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.024548780 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.873813e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.40159430 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.237774 \[1\]

</td>

<td style="text-align:right;">

0.0331246505 \[1/min\]

</td>

<td style="text-align:right;">

0.1670784 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1875202 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.832794e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0029026443 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.017 \[µmol/s\]

</td>

<td style="text-align:right;">

577.087 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2997 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9111 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

9.13301 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2801 \[°C\]

</td>

<td style="text-align:right;">

145.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

47

</td>

<td style="text-align:right;">

1557067741 \[s\]

</td>

<td style="text-align:left;">

92

</td>

<td style="text-align:left;">

2019-05-05 07:49:01

</td>

<td style="text-align:left;">

07:49:01

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067731 \[s\]

</td>

<td style="text-align:right;">

0.0010024472 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.3554611 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

103.47457 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-102.3145768 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.34678600 \[Pa\]

</td>

<td style="text-align:right;">

10.464092 \[Pa\]

</td>

<td style="text-align:right;">

0.10614254 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275665 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10346690 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06490159 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6777 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47142 \[°C\]

</td>

<td style="text-align:right;">

20.14696 \[°C\]

</td>

<td style="text-align:right;">

2.368054 \[kPa\]

</td>

<td style="text-align:right;">

59.96780 \[%\]

</td>

<td style="text-align:right;">

1.406560 \[kPa\]

</td>

<td style="text-align:right;">

2.345526 \[kPa\]

</td>

<td style="text-align:right;">

0.9614935 \[kPa\]

</td>

<td style="text-align:right;">

\-44.20792 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.94781 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.675232 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8468 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187827 \[1\]

</td>

<td style="text-align:right;">

0.04701203 \[1\]

</td>

<td style="text-align:right;">

3.501210 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54545 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.022 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.234 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408101 \[1\]

</td>

<td style="text-align:right;">

0.1916201 \[J/µmol\]

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

1557067731 \[s\]

</td>

<td style="text-align:right;">

103.47458 \[µmol/mol\]

</td>

<td style="text-align:right;">

119.62510 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90882 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72265 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0158 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999675 \[kPa\]

</td>

<td style="text-align:right;">

19.99252 \[°C\]

</td>

<td style="text-align:right;">

20.14696 \[°C\]

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

10006.368 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.87002 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.022 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729986 \[1\]

</td>

<td style="text-align:right;">

0.02700154 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.244300 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10355.19 \[1\]

</td>

<td style="text-align:right;">

13122.19 \[1\]

</td>

<td style="text-align:right;">

33.57419 \[°C\]

</td>

<td style="text-align:right;">

35.09858 \[°C\]

</td>

<td style="text-align:right;">

34.75600 \[°C\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

33.50000 \[°C\]

</td>

<td style="text-align:right;">

1459.520 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067764 \[s\]

</td>

<td style="text-align:right;">

2.233431 \[1\]

</td>

<td style="text-align:right;">

\-0.055459838 \[1/min\]

</td>

<td style="text-align:right;">

\-280.6461541 \[1/min\]

</td>

<td style="text-align:right;">

10339.30 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.141648780 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.735753e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.38951845 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.241268 \[1\]

</td>

<td style="text-align:right;">

\-0.0846131469 \[1/min\]

</td>

<td style="text-align:right;">

0.1671989 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1862676 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.902997e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0029787612 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.038 \[µmol/s\]

</td>

<td style="text-align:right;">

576.925 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2955 \[°C\]

</td>

<td style="text-align:right;">

16.0993 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9117 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

9.29292 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2801 \[°C\]

</td>

<td style="text-align:right;">

150.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

48

</td>

<td style="text-align:right;">

1557067743 \[s\]

</td>

<td style="text-align:left;">

94

</td>

<td style="text-align:left;">

2019-05-05 07:49:03

</td>

<td style="text-align:left;">

07:49:03

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067733 \[s\]

</td>

<td style="text-align:right;">

0.0010015627 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.4514951 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

106.71869 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-100.7605009 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.18962860 \[Pa\]

</td>

<td style="text-align:right;">

10.792164 \[Pa\]

</td>

<td style="text-align:right;">

0.10605211 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275451 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10338073 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06484736 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6761 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47376 \[°C\]

</td>

<td style="text-align:right;">

20.14656 \[°C\]

</td>

<td style="text-align:right;">

2.367995 \[kPa\]

</td>

<td style="text-align:right;">

59.96016 \[%\]

</td>

<td style="text-align:right;">

1.406549 \[kPa\]

</td>

<td style="text-align:right;">

2.345806 \[kPa\]

</td>

<td style="text-align:right;">

0.9614464 \[kPa\]

</td>

<td style="text-align:right;">

\-44.16892 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.66071 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.650016 \[W/m^2\]

</td>

<td style="text-align:right;">

177.1964 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187245 \[1\]

</td>

<td style="text-align:right;">

0.04700550 \[1\]

</td>

<td style="text-align:right;">

3.500826 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54606 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067733 \[s\]

</td>

<td style="text-align:right;">

106.71871 \[µmol/mol\]

</td>

<td style="text-align:right;">

122.98823 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90871 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72359 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0166 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.1999868 \[kPa\]

</td>

<td style="text-align:right;">

19.99444 \[°C\]

</td>

<td style="text-align:right;">

20.14656 \[°C\]

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

10004.977 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.88557 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729997 \[1\]

</td>

<td style="text-align:right;">

0.02700037 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.238152 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10344.20 \[1\]

</td>

<td style="text-align:right;">

13122.11 \[1\]

</td>

<td style="text-align:right;">

33.58029 \[°C\]

</td>

<td style="text-align:right;">

35.10468 \[°C\]

</td>

<td style="text-align:right;">

34.76000 \[°C\]

</td>

<td style="text-align:right;">

33.50400 \[°C\]

</td>

<td style="text-align:right;">

33.50200 \[°C\]

</td>

<td style="text-align:right;">

1459.513 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067766 \[s\]

</td>

<td style="text-align:right;">

2.226558 \[1\]

</td>

<td style="text-align:right;">

0.420311103 \[1/min\]

</td>

<td style="text-align:right;">

\-261.9247861 \[1/min\]

</td>

<td style="text-align:right;">

10330.57 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.262434146 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.331344e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.35149363 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.242638 \[1\]

</td>

<td style="text-align:right;">

0.0136937023 \[1/min\]

</td>

<td style="text-align:right;">

0.1681037 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1852020 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.332613e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0033968861 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.001 \[µmol/s\]

</td>

<td style="text-align:right;">

576.979 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2916 \[°C\]

</td>

<td style="text-align:right;">

16.0991 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9124 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

9.41967 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2745 \[°C\]

</td>

<td style="text-align:right;">

150.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

49

</td>

<td style="text-align:right;">

1557067745 \[s\]

</td>

<td style="text-align:left;">

96

</td>

<td style="text-align:left;">

2019-05-05 07:49:05

</td>

<td style="text-align:left;">

07:49:05

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067735 \[s\]

</td>

<td style="text-align:right;">

0.0010008339 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.5401800 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

109.97412 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-99.0615156 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.01781753 \[Pa\]

</td>

<td style="text-align:right;">

11.121379 \[Pa\]

</td>

<td style="text-align:right;">

0.10597416 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275290 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10330646 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06480063 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6762 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47648 \[°C\]

</td>

<td style="text-align:right;">

20.14645 \[°C\]

</td>

<td style="text-align:right;">

2.367979 \[kPa\]

</td>

<td style="text-align:right;">

59.95095 \[%\]

</td>

<td style="text-align:right;">

1.406541 \[kPa\]

</td>

<td style="text-align:right;">

2.346153 \[kPa\]

</td>

<td style="text-align:right;">

0.9614378 \[kPa\]

</td>

<td style="text-align:right;">

\-44.13678 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.35233 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.622883 \[W/m^2\]

</td>

<td style="text-align:right;">

177.5642 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186807 \[1\]

</td>

<td style="text-align:right;">

0.04700058 \[1\]

</td>

<td style="text-align:right;">

3.500537 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54569 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.014 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067735 \[s\]

</td>

<td style="text-align:right;">

109.97414 \[µmol/mol\]

</td>

<td style="text-align:right;">

126.35390 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90863 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72437 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0162 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.1999806 \[kPa\]

</td>

<td style="text-align:right;">

19.99684 \[°C\]

</td>

<td style="text-align:right;">

20.14645 \[°C\]

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

10003.927 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.91160 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.014 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730004 \[1\]

</td>

<td style="text-align:right;">

0.02699972 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.243510 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10334.71 \[1\]

</td>

<td style="text-align:right;">

13122.13 \[1\]

</td>

<td style="text-align:right;">

33.58639 \[°C\]

</td>

<td style="text-align:right;">

35.11077 \[°C\]

</td>

<td style="text-align:right;">

34.76600 \[°C\]

</td>

<td style="text-align:right;">

33.51000 \[°C\]

</td>

<td style="text-align:right;">

33.50400 \[°C\]

</td>

<td style="text-align:right;">

1459.515 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067768 \[s\]

</td>

<td style="text-align:right;">

2.232565 \[1\]

</td>

<td style="text-align:right;">

0.225685472 \[1/min\]

</td>

<td style="text-align:right;">

\-233.8290599 \[1/min\]

</td>

<td style="text-align:right;">

10320.42 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.371407317 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.652541e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.28372199 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.243926 \[1\]

</td>

<td style="text-align:right;">

\-0.1550996320 \[1/min\]

</td>

<td style="text-align:right;">

0.1741795 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1843029 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.413352e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0034616246 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.885 \[µmol/s\]

</td>

<td style="text-align:right;">

577.231 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2870 \[°C\]

</td>

<td style="text-align:right;">

16.0984 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

9.56169 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2745 \[°C\]

</td>

<td style="text-align:right;">

155.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

50

</td>

<td style="text-align:right;">

1557067747 \[s\]

</td>

<td style="text-align:left;">

98

</td>

<td style="text-align:left;">

2019-05-05 07:49:07

</td>

<td style="text-align:left;">

07:49:07

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067737 \[s\]

</td>

<td style="text-align:right;">

0.0010001061 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.6231696 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

113.23904 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-97.2848788 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.83816536 \[Pa\]

</td>

<td style="text-align:right;">

11.451568 \[Pa\]

</td>

<td style="text-align:right;">

0.10588771 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274935 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10322390 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06474869 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6780 \[W/m^2\]

</td>

<td style="text-align:right;">

21.47914 \[°C\]

</td>

<td style="text-align:right;">

20.14684 \[°C\]

</td>

<td style="text-align:right;">

2.368036 \[kPa\]

</td>

<td style="text-align:right;">

59.94225 \[%\]

</td>

<td style="text-align:right;">

1.406528 \[kPa\]

</td>

<td style="text-align:right;">

2.346472 \[kPa\]

</td>

<td style="text-align:right;">

0.9615082 \[kPa\]

</td>

<td style="text-align:right;">

\-44.10468 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.12870 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.603379 \[W/m^2\]

</td>

<td style="text-align:right;">

177.8413 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185843 \[1\]

</td>

<td style="text-align:right;">

0.04698975 \[1\]

</td>

<td style="text-align:right;">

3.499900 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54602 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.025 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.236 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067737 \[s\]

</td>

<td style="text-align:right;">

113.23905 \[µmol/mol\]

</td>

<td style="text-align:right;">

129.72213 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90848 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72509 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0190 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9274 \[kPa\]

</td>

<td style="text-align:right;">

0.1999975 \[kPa\]

</td>

<td style="text-align:right;">

19.99903 \[°C\]

</td>

<td style="text-align:right;">

20.14684 \[°C\]

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

10001.610 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.94359 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.025 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9729999 \[1\]

</td>

<td style="text-align:right;">

0.02700022 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.233403 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10326.08 \[1\]

</td>

<td style="text-align:right;">

13122.22 \[1\]

</td>

<td style="text-align:right;">

33.59248 \[°C\]

</td>

<td style="text-align:right;">

35.11687 \[°C\]

</td>

<td style="text-align:right;">

34.77200 \[°C\]

</td>

<td style="text-align:right;">

33.51600 \[°C\]

</td>

<td style="text-align:right;">

33.51000 \[°C\]

</td>

<td style="text-align:right;">

1459.524 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50161 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067770 \[s\]

</td>

<td style="text-align:right;">

2.232438 \[1\]

</td>

<td style="text-align:right;">

0.872123084 \[1/min\]

</td>

<td style="text-align:right;">

\-220.3794874 \[1/min\]

</td>

<td style="text-align:right;">

10313.83 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.477236585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.147772e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.22125051 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.233791 \[1\]

</td>

<td style="text-align:right;">

0.1140598875 \[1/min\]

</td>

<td style="text-align:right;">

0.1696109 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1834483 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.195366e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0033007389 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85343 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.974 \[µmol/s\]

</td>

<td style="text-align:right;">

577.177 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2816 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8742 \[°C\]

</td>

<td style="text-align:right;">

9.71994 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2680 \[°C\]

</td>

<td style="text-align:right;">

160.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

51

</td>

<td style="text-align:right;">

1557067749 \[s\]

</td>

<td style="text-align:left;">

100

</td>

<td style="text-align:left;">

2019-05-05 07:49:09

</td>

<td style="text-align:left;">

07:49:09

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067739 \[s\]

</td>

<td style="text-align:right;">

0.0009992870 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.6797601 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

116.51321 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-95.1692123 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.62423305 \[Pa\]

</td>

<td style="text-align:right;">

11.782700 \[Pa\]

</td>

<td style="text-align:right;">

0.10576413 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274296 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10310572 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06467436 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6754 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48162 \[°C\]

</td>

<td style="text-align:right;">

20.14876 \[°C\]

</td>

<td style="text-align:right;">

2.368318 \[kPa\]

</td>

<td style="text-align:right;">

59.93399 \[%\]

</td>

<td style="text-align:right;">

1.406496 \[kPa\]

</td>

<td style="text-align:right;">

2.346741 \[kPa\]

</td>

<td style="text-align:right;">

0.9618227 \[kPa\]

</td>

<td style="text-align:right;">

\-44.06856 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.13231 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.604180 \[W/m^2\]

</td>

<td style="text-align:right;">

177.8703 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184105 \[1\]

</td>

<td style="text-align:right;">

0.04697024 \[1\]

</td>

<td style="text-align:right;">

3.498752 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54641 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067739 \[s\]

</td>

<td style="text-align:right;">

116.51323 \[µmol/mol\]

</td>

<td style="text-align:right;">

133.06790 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90813 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72572 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0227 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9276 \[kPa\]

</td>

<td style="text-align:right;">

0.2000091 \[kPa\]

</td>

<td style="text-align:right;">

20.00088 \[°C\]

</td>

<td style="text-align:right;">

20.14876 \[°C\]

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

9997.437 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

82.97884 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730012 \[1\]

</td>

<td style="text-align:right;">

0.02699893 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.239148 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10317.75 \[1\]

</td>

<td style="text-align:right;">

13122.09 \[1\]

</td>

<td style="text-align:right;">

33.59858 \[°C\]

</td>

<td style="text-align:right;">

35.12297 \[°C\]

</td>

<td style="text-align:right;">

34.77800 \[°C\]

</td>

<td style="text-align:right;">

33.52200 \[°C\]

</td>

<td style="text-align:right;">

33.51600 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067772 \[s\]

</td>

<td style="text-align:right;">

2.241408 \[1\]

</td>

<td style="text-align:right;">

\-0.001921353 \[1/min\]

</td>

<td style="text-align:right;">

\-207.8769229 \[1/min\]

</td>

<td style="text-align:right;">

10307.56 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.551007317 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.020712e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20896306 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.231047 \[1\]

</td>

<td style="text-align:right;">

0.1048928008 \[1/min\]

</td>

<td style="text-align:right;">

0.1815662 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1824929 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.062300e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0031862940 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.137 \[µmol/s\]

</td>

<td style="text-align:right;">

577.057 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2773 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8747 \[°C\]

</td>

<td style="text-align:right;">

9.84887 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2680 \[°C\]

</td>

<td style="text-align:right;">

160.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

52

</td>

<td style="text-align:right;">

1557067751 \[s\]

</td>

<td style="text-align:left;">

102

</td>

<td style="text-align:left;">

2019-05-05 07:49:11

</td>

<td style="text-align:left;">

07:49:11

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067741 \[s\]

</td>

<td style="text-align:right;">

0.0009984229 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.7204985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

119.78847 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-92.8505628 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.38976333 \[Pa\]

</td>

<td style="text-align:right;">

12.113932 \[Pa\]

</td>

<td style="text-align:right;">

0.10562008 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274140 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10296864 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06458808 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6757 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48362 \[°C\]

</td>

<td style="text-align:right;">

20.15150 \[°C\]

</td>

<td style="text-align:right;">

2.368719 \[kPa\]

</td>

<td style="text-align:right;">

59.92604 \[%\]

</td>

<td style="text-align:right;">

1.406449 \[kPa\]

</td>

<td style="text-align:right;">

2.346975 \[kPa\]

</td>

<td style="text-align:right;">

0.9622697 \[kPa\]

</td>

<td style="text-align:right;">

\-44.03045 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.26870 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.616393 \[W/m^2\]

</td>

<td style="text-align:right;">

177.7602 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183682 \[1\]

</td>

<td style="text-align:right;">

0.04696550 \[1\]

</td>

<td style="text-align:right;">

3.498473 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54576 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067741 \[s\]

</td>

<td style="text-align:right;">

119.78848 \[µmol/mol\]

</td>

<td style="text-align:right;">

136.39584 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90766 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72627 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0230 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9277 \[kPa\]

</td>

<td style="text-align:right;">

0.1999845 \[kPa\]

</td>

<td style="text-align:right;">

20.00249 \[°C\]

</td>

<td style="text-align:right;">

20.15150 \[°C\]

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

9996.415 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.01257 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730010 \[1\]

</td>

<td style="text-align:right;">

0.02699906 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.222277 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10310.52 \[1\]

</td>

<td style="text-align:right;">

13122.11 \[1\]

</td>

<td style="text-align:right;">

33.60468 \[°C\]

</td>

<td style="text-align:right;">

35.12500 \[°C\]

</td>

<td style="text-align:right;">

34.78400 \[°C\]

</td>

<td style="text-align:right;">

33.52800 \[°C\]

</td>

<td style="text-align:right;">

33.52200 \[°C\]

</td>

<td style="text-align:right;">

1459.512 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067774 \[s\]

</td>

<td style="text-align:right;">

2.230192 \[1\]

</td>

<td style="text-align:right;">

\-0.490208535 \[1/min\]

</td>

<td style="text-align:right;">

\-183.2957265 \[1/min\]

</td>

<td style="text-align:right;">

10300.17 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.601370732 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.942955e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20379668 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.226203 \[1\]

</td>

<td style="text-align:right;">

\-0.0614694305 \[1/min\]

</td>

<td style="text-align:right;">

0.1804768 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1814739 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.940272e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0030713895 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.944 \[µmol/s\]

</td>

<td style="text-align:right;">

577.320 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2733 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8754 \[°C\]

</td>

<td style="text-align:right;">

9.99225 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2680 \[°C\]

</td>

<td style="text-align:right;">

165.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

53

</td>

<td style="text-align:right;">

1557067753 \[s\]

</td>

<td style="text-align:left;">

104

</td>

<td style="text-align:left;">

2019-05-05 07:49:13

</td>

<td style="text-align:left;">

07:49:13

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067743 \[s\]

</td>

<td style="text-align:right;">

0.0009975525 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.7768955 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

123.05853 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-90.7576249 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.17811585 \[Pa\]

</td>

<td style="text-align:right;">

12.444635 \[Pa\]

</td>

<td style="text-align:right;">

0.10548715 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274442 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10284263 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06450872 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6747 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48499 \[°C\]

</td>

<td style="text-align:right;">

20.15345 \[°C\]

</td>

<td style="text-align:right;">

2.369005 \[kPa\]

</td>

<td style="text-align:right;">

59.91905 \[%\]

</td>

<td style="text-align:right;">

1.406397 \[kPa\]

</td>

<td style="text-align:right;">

2.347161 \[kPa\]

</td>

<td style="text-align:right;">

0.9626084 \[kPa\]

</td>

<td style="text-align:right;">

\-43.99207 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.35380 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.623733 \[W/m^2\]

</td>

<td style="text-align:right;">

177.7051 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184504 \[1\]

</td>

<td style="text-align:right;">

0.04697472 \[1\]

</td>

<td style="text-align:right;">

3.499015 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54631 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.219 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067743 \[s\]

</td>

<td style="text-align:right;">

123.05855 \[µmol/mol\]

</td>

<td style="text-align:right;">

139.73732 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90713 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72677 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0243 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9278 \[kPa\]

</td>

<td style="text-align:right;">

0.1999596 \[kPa\]

</td>

<td style="text-align:right;">

20.00377 \[°C\]

</td>

<td style="text-align:right;">

20.15345 \[°C\]

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

9998.369 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.05794 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730015 \[1\]

</td>

<td style="text-align:right;">

0.02699857 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.209506 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10304.64 \[1\]

</td>

<td style="text-align:right;">

13122.05 \[1\]

</td>

<td style="text-align:right;">

33.61077 \[°C\]

</td>

<td style="text-align:right;">

35.12500 \[°C\]

</td>

<td style="text-align:right;">

34.79000 \[°C\]

</td>

<td style="text-align:right;">

33.53400 \[°C\]

</td>

<td style="text-align:right;">

33.52800 \[°C\]

</td>

<td style="text-align:right;">

1459.506 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49935 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067776 \[s\]

</td>

<td style="text-align:right;">

2.224700 \[1\]

</td>

<td style="text-align:right;">

\-0.496909386 \[1/min\]

</td>

<td style="text-align:right;">

\-149.8564104 \[1/min\]

</td>

<td style="text-align:right;">

10295.47 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.673290244 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.836079e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.19234196 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.212385 \[1\]

</td>

<td style="text-align:right;">

\-0.2054138393 \[1/min\]

</td>

<td style="text-align:right;">

0.1664751 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1804578 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.829596e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0029636337 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.915 \[µmol/s\]

</td>

<td style="text-align:right;">

577.377 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2692 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.15080 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2591 \[°C\]

</td>

<td style="text-align:right;">

170.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

54

</td>

<td style="text-align:right;">

1557067755 \[s\]

</td>

<td style="text-align:left;">

106

</td>

<td style="text-align:left;">

2019-05-05 07:49:15

</td>

<td style="text-align:left;">

07:49:15

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067745 \[s\]

</td>

<td style="text-align:right;">

0.0009966125 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.8295691 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

126.32934 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-88.6008853 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.96001780 \[Pa\]

</td>

<td style="text-align:right;">

12.775416 \[Pa\]

</td>

<td style="text-align:right;">

0.10535829 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274965 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10272073 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06443193 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6754 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48591 \[°C\]

</td>

<td style="text-align:right;">

20.15468 \[°C\]

</td>

<td style="text-align:right;">

2.369185 \[kPa\]

</td>

<td style="text-align:right;">

59.91331 \[%\]

</td>

<td style="text-align:right;">

1.406342 \[kPa\]

</td>

<td style="text-align:right;">

2.347294 \[kPa\]

</td>

<td style="text-align:right;">

0.9628429 \[kPa\]

</td>

<td style="text-align:right;">

\-43.95061 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.39600 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.627111 \[W/m^2\]

</td>

<td style="text-align:right;">

177.7016 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185925 \[1\]

</td>

<td style="text-align:right;">

0.04699068 \[1\]

</td>

<td style="text-align:right;">

3.499954 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54765 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067745 \[s\]

</td>

<td style="text-align:right;">

126.32935 \[µmol/mol\]

</td>

<td style="text-align:right;">

143.07523 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90657 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72732 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0207 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9279 \[kPa\]

</td>

<td style="text-align:right;">

0.1999554 \[kPa\]

</td>

<td style="text-align:right;">

20.00469 \[°C\]

</td>

<td style="text-align:right;">

20.15468 \[°C\]

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

10001.756 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.18841 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730017 \[1\]

</td>

<td style="text-align:right;">

0.02699844 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.197577 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10299.43 \[1\]

</td>

<td style="text-align:right;">

13122.09 \[1\]

</td>

<td style="text-align:right;">

33.61687 \[°C\]

</td>

<td style="text-align:right;">

35.12700 \[°C\]

</td>

<td style="text-align:right;">

34.79600 \[°C\]

</td>

<td style="text-align:right;">

33.54000 \[°C\]

</td>

<td style="text-align:right;">

33.53400 \[°C\]

</td>

<td style="text-align:right;">

1459.509 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067778 \[s\]

</td>

<td style="text-align:right;">

2.198381 \[1\]

</td>

<td style="text-align:right;">

\-0.760502546 \[1/min\]

</td>

<td style="text-align:right;">

\-114.0170939 \[1/min\]

</td>

<td style="text-align:right;">

10291.38 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.741180488 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.924369e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20159577 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.215776 \[1\]

</td>

<td style="text-align:right;">

\-0.5837058720 \[1/min\]

</td>

<td style="text-align:right;">

0.1803380 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1793656 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.866390e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0030036036 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.063 \[µmol/s\]

</td>

<td style="text-align:right;">

577.215 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2646 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.27780 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2591 \[°C\]

</td>

<td style="text-align:right;">

170.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

55

</td>

<td style="text-align:right;">

1557067757 \[s\]

</td>

<td style="text-align:left;">

108

</td>

<td style="text-align:left;">

2019-05-05 07:49:17

</td>

<td style="text-align:left;">

07:49:17

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067747 \[s\]

</td>

<td style="text-align:right;">

0.0009956408 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.8793445 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

129.59840 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-86.4236226 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.73983938 \[Pa\]

</td>

<td style="text-align:right;">

13.106014 \[Pa\]

</td>

<td style="text-align:right;">

0.10522012 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274841 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10258924 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06434917 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6760 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48734 \[°C\]

</td>

<td style="text-align:right;">

20.15631 \[°C\]

</td>

<td style="text-align:right;">

2.369424 \[kPa\]

</td>

<td style="text-align:right;">

59.90720 \[%\]

</td>

<td style="text-align:right;">

1.406288 \[kPa\]

</td>

<td style="text-align:right;">

2.347444 \[kPa\]

</td>

<td style="text-align:right;">

0.9631365 \[kPa\]

</td>

<td style="text-align:right;">

\-43.90776 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.46937 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.633712 \[W/m^2\]

</td>

<td style="text-align:right;">

177.6652 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185587 \[1\]

</td>

<td style="text-align:right;">

0.04698688 \[1\]

</td>

<td style="text-align:right;">

3.499731 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54702 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067747 \[s\]

</td>

<td style="text-align:right;">

129.59842 \[µmol/mol\]

</td>

<td style="text-align:right;">

146.40774 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90603 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72793 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0217 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9279 \[kPa\]

</td>

<td style="text-align:right;">

0.1999958 \[kPa\]

</td>

<td style="text-align:right;">

20.00572 \[°C\]

</td>

<td style="text-align:right;">

20.15631 \[°C\]

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

10000.947 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.38025 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730017 \[1\]

</td>

<td style="text-align:right;">

0.02699845 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.192387 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10294.41 \[1\]

</td>

<td style="text-align:right;">

13122.13 \[1\]

</td>

<td style="text-align:right;">

33.61890 \[°C\]

</td>

<td style="text-align:right;">

35.12700 \[°C\]

</td>

<td style="text-align:right;">

34.80000 \[°C\]

</td>

<td style="text-align:right;">

33.54600 \[°C\]

</td>

<td style="text-align:right;">

33.54000 \[°C\]

</td>

<td style="text-align:right;">

1459.513 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067780 \[s\]

</td>

<td style="text-align:right;">

2.198665 \[1\]

</td>

<td style="text-align:right;">

\-0.507852971 \[1/min\]

</td>

<td style="text-align:right;">

\-93.1179487 \[1/min\]

</td>

<td style="text-align:right;">

10286.54 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.801873171 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.973295e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20659569 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.207085 \[1\]

</td>

<td style="text-align:right;">

\-0.5744278305 \[1/min\]

</td>

<td style="text-align:right;">

0.1817987 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1781898 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.895742e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0030383271 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.989 \[µmol/s\]

</td>

<td style="text-align:right;">

577.359 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2596 \[°C\]

</td>

<td style="text-align:right;">

16.0979 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.41940 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2504 \[°C\]

</td>

<td style="text-align:right;">

175.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7145 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

56

</td>

<td style="text-align:right;">

1557067759 \[s\]

</td>

<td style="text-align:left;">

110

</td>

<td style="text-align:left;">

2019-05-05 07:49:19

</td>

<td style="text-align:left;">

07:49:19

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067749 \[s\]

</td>

<td style="text-align:right;">

0.0009946021 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.9431155 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

132.86547 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-84.4923270 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.54452033 \[Pa\]

</td>

<td style="text-align:right;">

13.436388 \[Pa\]

</td>

<td style="text-align:right;">

0.10506913 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274984 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10244585 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06425889 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6766 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48872 \[°C\]

</td>

<td style="text-align:right;">

20.15819 \[°C\]

</td>

<td style="text-align:right;">

2.369699 \[kPa\]

</td>

<td style="text-align:right;">

59.90027 \[%\]

</td>

<td style="text-align:right;">

1.406223 \[kPa\]

</td>

<td style="text-align:right;">

2.347607 \[kPa\]

</td>

<td style="text-align:right;">

0.9634759 \[kPa\]

</td>

<td style="text-align:right;">

\-43.86195 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.56272 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.641891 \[W/m^2\]

</td>

<td style="text-align:right;">

177.6100 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185977 \[1\]

</td>

<td style="text-align:right;">

0.04699126 \[1\]

</td>

<td style="text-align:right;">

3.499989 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54997 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.016 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.228 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067749 \[s\]

</td>

<td style="text-align:right;">

132.86548 \[µmol/mol\]

</td>

<td style="text-align:right;">

149.75487 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90541 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72855 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0275 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9278 \[kPa\]

</td>

<td style="text-align:right;">

0.1999925 \[kPa\]

</td>

<td style="text-align:right;">

20.00684 \[°C\]

</td>

<td style="text-align:right;">

20.15819 \[°C\]

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

10001.893 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.55733 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.016 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730017 \[1\]

</td>

<td style="text-align:right;">

0.02699844 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.157174 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10289.67 \[1\]

</td>

<td style="text-align:right;">

13122.15 \[1\]

</td>

<td style="text-align:right;">

33.62297 \[°C\]

</td>

<td style="text-align:right;">

35.13300 \[°C\]

</td>

<td style="text-align:right;">

34.80600 \[°C\]

</td>

<td style="text-align:right;">

33.55200 \[°C\]

</td>

<td style="text-align:right;">

33.54600 \[°C\]

</td>

<td style="text-align:right;">

1459.515 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.50065 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067782 \[s\]

</td>

<td style="text-align:right;">

2.195004 \[1\]

</td>

<td style="text-align:right;">

\-0.484550411 \[1/min\]

</td>

<td style="text-align:right;">

\-87.1555556 \[1/min\]

</td>

<td style="text-align:right;">

10283.45 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.883887805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.932820e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20153146 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.188921 \[1\]

</td>

<td style="text-align:right;">

\-0.3117358671 \[1/min\]

</td>

<td style="text-align:right;">

0.1757769 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1769771 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.093596e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0032648933 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85496 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.930 \[µmol/s\]

</td>

<td style="text-align:right;">

577.395 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2559 \[°C\]

</td>

<td style="text-align:right;">

16.0973 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.51760 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2504 \[°C\]

</td>

<td style="text-align:right;">

180.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7170 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

57

</td>

<td style="text-align:right;">

1557067761 \[s\]

</td>

<td style="text-align:left;">

112

</td>

<td style="text-align:left;">

2019-05-05 07:49:21

</td>

<td style="text-align:left;">

07:49:21

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067751 \[s\]

</td>

<td style="text-align:right;">

0.0009934623 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

13.9949337 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

136.13644 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-82.4437746 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.33734229 \[Pa\]

</td>

<td style="text-align:right;">

13.767153 \[Pa\]

</td>

<td style="text-align:right;">

0.10488390 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275854 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10227071 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06414855 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6742 \[W/m^2\]

</td>

<td style="text-align:right;">

21.48947 \[°C\]

</td>

<td style="text-align:right;">

20.16131 \[°C\]

</td>

<td style="text-align:right;">

2.370157 \[kPa\]

</td>

<td style="text-align:right;">

59.89333 \[%\]

</td>

<td style="text-align:right;">

1.406140 \[kPa\]

</td>

<td style="text-align:right;">

2.347741 \[kPa\]

</td>

<td style="text-align:right;">

0.9640167 \[kPa\]

</td>

<td style="text-align:right;">

\-43.81169 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.84014 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.665827 \[W/m^2\]

</td>

<td style="text-align:right;">

177.3565 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04188342 \[1\]

</td>

<td style="text-align:right;">

0.04701781 \[1\]

</td>

<td style="text-align:right;">

3.501550 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54997 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.216 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067751 \[s\]

</td>

<td style="text-align:right;">

136.13645 \[µmol/mol\]

</td>

<td style="text-align:right;">

153.09210 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90461 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72907 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0168 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9276 \[kPa\]

</td>

<td style="text-align:right;">

0.1999697 \[kPa\]

</td>

<td style="text-align:right;">

20.00776 \[°C\]

</td>

<td style="text-align:right;">

20.16131 \[°C\]

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

10007.555 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.72105 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730030 \[1\]

</td>

<td style="text-align:right;">

0.02699715 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.157377 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10285.36 \[1\]

</td>

<td style="text-align:right;">

13122.03 \[1\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

35.13900 \[°C\]

</td>

<td style="text-align:right;">

34.80800 \[°C\]

</td>

<td style="text-align:right;">

33.55800 \[°C\]

</td>

<td style="text-align:right;">

33.55200 \[°C\]

</td>

<td style="text-align:right;">

1459.503 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49871 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067784 \[s\]

</td>

<td style="text-align:right;">

2.173446 \[1\]

</td>

<td style="text-align:right;">

\-0.330160669 \[1/min\]

</td>

<td style="text-align:right;">

\-85.3230768 \[1/min\]

</td>

<td style="text-align:right;">

10280.53 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.951417073 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.086087e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.21660080 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.190612 \[1\]

</td>

<td style="text-align:right;">

\-0.3687359459 \[1/min\]

</td>

<td style="text-align:right;">

0.2017112 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1756680 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.829150e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0040427304 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85495 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.048 \[µmol/s\]

</td>

<td style="text-align:right;">

577.251 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2517 \[°C\]

</td>

<td style="text-align:right;">

16.0965 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.68500 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2504 \[°C\]

</td>

<td style="text-align:right;">

180.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7197 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

58

</td>

<td style="text-align:right;">

1557067763 \[s\]

</td>

<td style="text-align:left;">

114

</td>

<td style="text-align:left;">

2019-05-05 07:49:23

</td>

<td style="text-align:left;">

07:49:23

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067753 \[s\]

</td>

<td style="text-align:right;">

0.0009922995 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.0313986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

139.40653 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-80.1754303 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-8.10793932 \[Pa\]

</td>

<td style="text-align:right;">

14.097832 \[Pa\]

</td>

<td style="text-align:right;">

0.10469216 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276770 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10208941 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06403434 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6719 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49004 \[°C\]

</td>

<td style="text-align:right;">

20.16462 \[°C\]

</td>

<td style="text-align:right;">

2.370642 \[kPa\]

</td>

<td style="text-align:right;">

59.88658 \[%\]

</td>

<td style="text-align:right;">

1.406047 \[kPa\]

</td>

<td style="text-align:right;">

2.347849 \[kPa\]

</td>

<td style="text-align:right;">

0.9645951 \[kPa\]

</td>

<td style="text-align:right;">

\-43.76041 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.16211 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.693648 \[W/m^2\]

</td>

<td style="text-align:right;">

177.0558 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04190835 \[1\]

</td>

<td style="text-align:right;">

0.04704580 \[1\]

</td>

<td style="text-align:right;">

3.503196 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54666 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.987 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.204 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067753 \[s\]

</td>

<td style="text-align:right;">

139.40655 \[µmol/mol\]

</td>

<td style="text-align:right;">

156.40971 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90371 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.72954 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0152 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9275 \[kPa\]

</td>

<td style="text-align:right;">

0.1999651 \[kPa\]

</td>

<td style="text-align:right;">

20.00851 \[°C\]

</td>

<td style="text-align:right;">

20.16462 \[°C\]

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

10013.526 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

83.89550 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.987 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730034 \[1\]

</td>

<td style="text-align:right;">

0.02699680 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.134358 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10281.89 \[1\]

</td>

<td style="text-align:right;">

13121.90 \[1\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

35.14500 \[°C\]

</td>

<td style="text-align:right;">

34.81000 \[°C\]

</td>

<td style="text-align:right;">

33.56000 \[°C\]

</td>

<td style="text-align:right;">

33.55800 \[°C\]

</td>

<td style="text-align:right;">

1459.490 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49839 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067786 \[s\]

</td>

<td style="text-align:right;">

2.163592 \[1\]

</td>

<td style="text-align:right;">

\-0.038687167 \[1/min\]

</td>

<td style="text-align:right;">

\-79.0085470 \[1/min\]

</td>

<td style="text-align:right;">

10277.21 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-16.998273171 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.015622e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.21199710 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.173997 \[1\]

</td>

<td style="text-align:right;">

\-0.3358809721 \[1/min\]

</td>

<td style="text-align:right;">

0.1996686 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1742744 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.913206e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0050161549 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85454 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.871 \[µmol/s\]

</td>

<td style="text-align:right;">

577.449 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2477 \[°C\]

</td>

<td style="text-align:right;">

16.0963 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.83620 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2407 \[°C\]

</td>

<td style="text-align:right;">

185.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7182 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.820 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

59

</td>

<td style="text-align:right;">

1557067765 \[s\]

</td>

<td style="text-align:left;">

116

</td>

<td style="text-align:left;">

2019-05-05 07:49:25

</td>

<td style="text-align:left;">

07:49:25

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067755 \[s\]

</td>

<td style="text-align:right;">

0.0009909886 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.0706883 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

142.66934 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-77.9939245 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.88730999 \[Pa\]

</td>

<td style="text-align:right;">

14.427756 \[Pa\]

</td>

<td style="text-align:right;">

0.10448513 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.277194 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10189300 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06391066 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6713 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49078 \[°C\]

</td>

<td style="text-align:right;">

20.16785 \[°C\]

</td>

<td style="text-align:right;">

2.371116 \[kPa\]

</td>

<td style="text-align:right;">

59.88002 \[%\]

</td>

<td style="text-align:right;">

1.405942 \[kPa\]

</td>

<td style="text-align:right;">

2.347932 \[kPa\]

</td>

<td style="text-align:right;">

0.9651736 \[kPa\]

</td>

<td style="text-align:right;">

\-43.70260 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.49280 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.722589 \[W/m^2\]

</td>

<td style="text-align:right;">

176.7533 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191989 \[1\]

</td>

<td style="text-align:right;">

0.04705875 \[1\]

</td>

<td style="text-align:right;">

3.503958 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54708 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916200 \[J/µmol\]

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

1557067755 \[s\]

</td>

<td style="text-align:right;">

142.66935 \[µmol/mol\]

</td>

<td style="text-align:right;">

159.72306 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90271 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73011 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0228 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9273 \[kPa\]

</td>

<td style="text-align:right;">

0.1999776 \[kPa\]

</td>

<td style="text-align:right;">

20.00907 \[°C\]

</td>

<td style="text-align:right;">

20.16785 \[°C\]

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

10016.309 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.08453 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730032 \[1\]

</td>

<td style="text-align:right;">

0.02699696 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.121842 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10278.93 \[1\]

</td>

<td style="text-align:right;">

13121.86 \[1\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

35.15100 \[°C\]

</td>

<td style="text-align:right;">

34.81200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

1459.485 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49871 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067788 \[s\]

</td>

<td style="text-align:right;">

2.144746 \[1\]

</td>

<td style="text-align:right;">

\-0.080478624 \[1/min\]

</td>

<td style="text-align:right;">

\-82.6188034 \[1/min\]

</td>

<td style="text-align:right;">

10275.11 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.051687805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.629506e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.18126986 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.172615 \[1\]

</td>

<td style="text-align:right;">

\-0.2456418329 \[1/min\]

</td>

<td style="text-align:right;">

0.1934795 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1727349 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.544794e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0055465630 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.811 \[µmol/s\]

</td>

<td style="text-align:right;">

577.485 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2443 \[°C\]

</td>

<td style="text-align:right;">

16.0963 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

10.99800 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2407 \[°C\]

</td>

<td style="text-align:right;">

190.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7164 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

60

</td>

<td style="text-align:right;">

1557067767 \[s\]

</td>

<td style="text-align:left;">

118

</td>

<td style="text-align:left;">

2019-05-05 07:49:27

</td>

<td style="text-align:left;">

07:49:27

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067757 \[s\]

</td>

<td style="text-align:right;">

0.0009896472 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.1089797 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

145.92573 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-75.8187433 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.66731764 \[Pa\]

</td>

<td style="text-align:right;">

14.757022 \[Pa\]

</td>

<td style="text-align:right;">

0.10427245 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.277719 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10169130 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06378364 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6702 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49136 \[°C\]

</td>

<td style="text-align:right;">

20.17117 \[°C\]

</td>

<td style="text-align:right;">

2.371603 \[kPa\]

</td>

<td style="text-align:right;">

59.87349 \[%\]

</td>

<td style="text-align:right;">

1.405829 \[kPa\]

</td>

<td style="text-align:right;">

2.347999 \[kPa\]

</td>

<td style="text-align:right;">

0.9657742 \[kPa\]

</td>

<td style="text-align:right;">

\-43.64344 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.84865 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.753665 \[W/m^2\]

</td>

<td style="text-align:right;">

176.4245 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04193418 \[1\]

</td>

<td style="text-align:right;">

0.04707479 \[1\]

</td>

<td style="text-align:right;">

3.504901 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54803 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.196 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067757 \[s\]

</td>

<td style="text-align:right;">

145.92574 \[µmol/mol\]

</td>

<td style="text-align:right;">

163.02916 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90163 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73060 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0191 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9270 \[kPa\]

</td>

<td style="text-align:right;">

0.1999741 \[kPa\]

</td>

<td style="text-align:right;">

20.00954 \[°C\]

</td>

<td style="text-align:right;">

20.17117 \[°C\]

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

10019.752 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.26621 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730037 \[1\]

</td>

<td style="text-align:right;">

0.02699647 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.106994 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10276.08 \[1\]

</td>

<td style="text-align:right;">

13121.81 \[1\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

35.15700 \[°C\]

</td>

<td style="text-align:right;">

34.81200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

1459.480 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067790 \[s\]

</td>

<td style="text-align:right;">

2.146519 \[1\]

</td>

<td style="text-align:right;">

\-0.241658109 \[1/min\]

</td>

<td style="text-align:right;">

\-84.6871793 \[1/min\]

</td>

<td style="text-align:right;">

10273.01 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.100278049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.549083e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.17490421 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.154165 \[1\]

</td>

<td style="text-align:right;">

\-0.2397477401 \[1/min\]

</td>

<td style="text-align:right;">

0.1938990 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1711580 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.486592e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0054984877 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.018 \[µmol/s\]

</td>

<td style="text-align:right;">

577.377 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2398 \[°C\]

</td>

<td style="text-align:right;">

16.0963 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

11.12620 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2294 \[°C\]

</td>

<td style="text-align:right;">

190.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7185 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

61

</td>

<td style="text-align:right;">

1557067769 \[s\]

</td>

<td style="text-align:left;">

120

</td>

<td style="text-align:left;">

2019-05-05 07:49:29

</td>

<td style="text-align:left;">

07:49:29

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067759 \[s\]

</td>

<td style="text-align:right;">

0.0009884002 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.1569811 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

149.17844 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-73.7315320 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.45623012 \[Pa\]

</td>

<td style="text-align:right;">

15.085930 \[Pa\]

</td>

<td style="text-align:right;">

0.10409415 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.278122 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10152214 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06367713 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6708 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49213 \[°C\]

</td>

<td style="text-align:right;">

20.17309 \[°C\]

</td>

<td style="text-align:right;">

2.371884 \[kPa\]

</td>

<td style="text-align:right;">

59.86675 \[%\]

</td>

<td style="text-align:right;">

1.405722 \[kPa\]

</td>

<td style="text-align:right;">

2.348085 \[kPa\]

</td>

<td style="text-align:right;">

0.9661617 \[kPa\]

</td>

<td style="text-align:right;">

\-43.58845 \[W/m^2\]

</td>

<td style="text-align:right;">

\-20.01460 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.768037 \[W/m^2\]

</td>

<td style="text-align:right;">

176.2997 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04194515 \[1\]

</td>

<td style="text-align:right;">

0.04708711 \[1\]

</td>

<td style="text-align:right;">

3.505624 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54574 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.980 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.198 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067759 \[s\]

</td>

<td style="text-align:right;">

149.17845 \[µmol/mol\]

</td>

<td style="text-align:right;">

166.34306 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.90060 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73105 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0205 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.1999747 \[kPa\]

</td>

<td style="text-align:right;">

20.01013 \[°C\]

</td>

<td style="text-align:right;">

20.17309 \[°C\]

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

10022.392 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.45011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.980 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730037 \[1\]

</td>

<td style="text-align:right;">

0.02699648 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.125832 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10273.66 \[1\]

</td>

<td style="text-align:right;">

13121.83 \[1\]

</td>

<td style="text-align:right;">

33.62700 \[°C\]

</td>

<td style="text-align:right;">

35.16300 \[°C\]

</td>

<td style="text-align:right;">

34.81200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

1459.483 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067792 \[s\]

</td>

<td style="text-align:right;">

2.169769 \[1\]

</td>

<td style="text-align:right;">

0.294864961 \[1/min\]

</td>

<td style="text-align:right;">

\-72.8136752 \[1/min\]

</td>

<td style="text-align:right;">

10269.66 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.156836585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.678685e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.18877245 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.159944 \[1\]

</td>

<td style="text-align:right;">

0.2625839939 \[1/min\]

</td>

<td style="text-align:right;">

0.1782078 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1696532 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.179317e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0052486144 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.974 \[µmol/s\]

</td>

<td style="text-align:right;">

577.485 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2364 \[°C\]

</td>

<td style="text-align:right;">

16.0963 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

11.26820 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2294 \[°C\]

</td>

<td style="text-align:right;">

195.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7179 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

62

</td>

<td style="text-align:right;">

1557067771 \[s\]

</td>

<td style="text-align:left;">

122

</td>

<td style="text-align:left;">

2019-05-05 07:49:31

</td>

<td style="text-align:left;">

07:49:31

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067761 \[s\]

</td>

<td style="text-align:right;">

0.0009872098 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.2286275 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

152.43089 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-71.9785704 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.27895644 \[Pa\]

</td>

<td style="text-align:right;">

15.414835 \[Pa\]

</td>

<td style="text-align:right;">

0.10393525 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.277677 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10137049 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06358172 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6681 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49362 \[°C\]

</td>

<td style="text-align:right;">

20.17435 \[°C\]

</td>

<td style="text-align:right;">

2.372070 \[kPa\]

</td>

<td style="text-align:right;">

59.85960 \[%\]

</td>

<td style="text-align:right;">

1.405629 \[kPa\]

</td>

<td style="text-align:right;">

2.348209 \[kPa\]

</td>

<td style="text-align:right;">

0.9664409 \[kPa\]

</td>

<td style="text-align:right;">

\-43.53595 \[W/m^2\]

</td>

<td style="text-align:right;">

\-20.06139 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.772536 \[W/m^2\]

</td>

<td style="text-align:right;">

176.2982 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04193305 \[1\]

</td>

<td style="text-align:right;">

0.04707352 \[1\]

</td>

<td style="text-align:right;">

3.504826 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54508 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.965 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.185 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067761 \[s\]

</td>

<td style="text-align:right;">

152.43090 \[µmol/mol\]

</td>

<td style="text-align:right;">

169.68500 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89968 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73155 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0242 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.2000062 \[kPa\]

</td>

<td style="text-align:right;">

20.01098 \[°C\]

</td>

<td style="text-align:right;">

20.17435 \[°C\]

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

10019.507 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.64917 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.965 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730049 \[1\]

</td>

<td style="text-align:right;">

0.02699533 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.148752 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10271.38 \[1\]

</td>

<td style="text-align:right;">

13121.70 \[1\]

</td>

<td style="text-align:right;">

33.63300 \[°C\]

</td>

<td style="text-align:right;">

35.16900 \[°C\]

</td>

<td style="text-align:right;">

34.81403 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

1459.469 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067794 \[s\]

</td>

<td style="text-align:right;">

2.187581 \[1\]

</td>

<td style="text-align:right;">

0.438095733 \[1/min\]

</td>

<td style="text-align:right;">

\-60.1367522 \[1/min\]

</td>

<td style="text-align:right;">

10267.66 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.246553659 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.827840e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20828193 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.173212 \[1\]

</td>

<td style="text-align:right;">

0.2887149146 \[1/min\]

</td>

<td style="text-align:right;">

0.1830898 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1682341 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.708307e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0048633718 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85335 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.885 \[µmol/s\]

</td>

<td style="text-align:right;">

577.449 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2323 \[°C\]

</td>

<td style="text-align:right;">

16.0963 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9126 \[°C\]

</td>

<td style="text-align:right;">

15.8756 \[°C\]

</td>

<td style="text-align:right;">

11.36640 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2294 \[°C\]

</td>

<td style="text-align:right;">

200.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7198 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

63

</td>

<td style="text-align:right;">

1557067773 \[s\]

</td>

<td style="text-align:left;">

124

</td>

<td style="text-align:left;">

2019-05-05 07:49:33

</td>

<td style="text-align:left;">

07:49:33

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067763 \[s\]

</td>

<td style="text-align:right;">

0.0009860019 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.2944324 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

155.68840 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-70.0964991 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.08863816 \[Pa\]

</td>

<td style="text-align:right;">

15.744278 \[Pa\]

</td>

<td style="text-align:right;">

0.10379410 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.277081 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10123556 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06349685 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6700 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49532 \[°C\]

</td>

<td style="text-align:right;">

20.17446 \[°C\]

</td>

<td style="text-align:right;">

2.372085 \[kPa\]

</td>

<td style="text-align:right;">

59.85231 \[%\]

</td>

<td style="text-align:right;">

1.405539 \[kPa\]

</td>

<td style="text-align:right;">

2.348345 \[kPa\]

</td>

<td style="text-align:right;">

0.9665467 \[kPa\]

</td>

<td style="text-align:right;">

\-43.48268 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.95477 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.763585 \[W/m^2\]

</td>

<td style="text-align:right;">

176.4689 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191682 \[1\]

</td>

<td style="text-align:right;">

0.04705531 \[1\]

</td>

<td style="text-align:right;">

3.503755 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54640 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.976 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.195 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067763 \[s\]

</td>

<td style="text-align:right;">

155.68842 \[µmol/mol\]

</td>

<td style="text-align:right;">

173.02529 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89877 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73205 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0190 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.2000113 \[kPa\]

</td>

<td style="text-align:right;">

20.01191 \[°C\]

</td>

<td style="text-align:right;">

20.17446 \[°C\]

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

10015.617 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

84.86551 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.976 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730044 \[1\]

</td>

<td style="text-align:right;">

0.02699581 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.169839 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10269.58 \[1\]

</td>

<td style="text-align:right;">

13121.80 \[1\]

</td>

<td style="text-align:right;">

33.63500 \[°C\]

</td>

<td style="text-align:right;">

35.17500 \[°C\]

</td>

<td style="text-align:right;">

34.81606 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

1459.479 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067796 \[s\]

</td>

<td style="text-align:right;">

2.208131 \[1\]

</td>

<td style="text-align:right;">

0.969025641 \[1/min\]

</td>

<td style="text-align:right;">

\-43.6683760 \[1/min\]

</td>

<td style="text-align:right;">

10266.30 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.330463415 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.112985e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.23987291 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203371 \[1\]

</td>

<td style="text-align:right;">

0.5087507199 \[1/min\]

</td>

<td style="text-align:right;">

0.1902274 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1668244 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.179659e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0043934192 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.980 \[µmol/s\]

</td>

<td style="text-align:right;">

577.420 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2278 \[°C\]

</td>

<td style="text-align:right;">

16.0961 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9131 \[°C\]

</td>

<td style="text-align:right;">

15.8761 \[°C\]

</td>

<td style="text-align:right;">

11.53330 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2124 \[°C\]

</td>

<td style="text-align:right;">

200.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7181 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

64

</td>

<td style="text-align:right;">

1557067775 \[s\]

</td>

<td style="text-align:left;">

126

</td>

<td style="text-align:left;">

2019-05-05 07:49:35

</td>

<td style="text-align:left;">

07:49:35

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067765 \[s\]

</td>

<td style="text-align:right;">

0.0009848474 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.3434137 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

158.94756 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-67.9224297 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.86878753 \[Pa\]

</td>

<td style="text-align:right;">

16.073881 \[Pa\]

</td>

<td style="text-align:right;">

0.10366711 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276782 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10111442 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06342062 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6718 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49690 \[°C\]

</td>

<td style="text-align:right;">

20.17402 \[°C\]

</td>

<td style="text-align:right;">

2.372020 \[kPa\]

</td>

<td style="text-align:right;">

59.84468 \[%\]

</td>

<td style="text-align:right;">

1.405447 \[kPa\]

</td>

<td style="text-align:right;">

2.348492 \[kPa\]

</td>

<td style="text-align:right;">

0.9665732 \[kPa\]

</td>

<td style="text-align:right;">

\-43.43177 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.77396 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.747841 \[W/m^2\]

</td>

<td style="text-align:right;">

176.7182 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04190868 \[1\]

</td>

<td style="text-align:right;">

0.04704617 \[1\]

</td>

<td style="text-align:right;">

3.503218 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54587 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.987 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.204 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067765 \[s\]

</td>

<td style="text-align:right;">

158.94758 \[µmol/mol\]

</td>

<td style="text-align:right;">

176.34677 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89785 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73251 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0215 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9269 \[kPa\]

</td>

<td style="text-align:right;">

0.2000054 \[kPa\]

</td>

<td style="text-align:right;">

20.01292 \[°C\]

</td>

<td style="text-align:right;">

20.17402 \[°C\]

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

10013.662 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.01653 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.987 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730037 \[1\]

</td>

<td style="text-align:right;">

0.02699645 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.183581 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10267.75 \[1\]

</td>

<td style="text-align:right;">

13121.90 \[1\]

</td>

<td style="text-align:right;">

33.64100 \[°C\]

</td>

<td style="text-align:right;">

35.18100 \[°C\]

</td>

<td style="text-align:right;">

34.82216 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56403 \[°C\]

</td>

<td style="text-align:right;">

1459.489 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067798 \[s\]

</td>

<td style="text-align:right;">

2.210538 \[1\]

</td>

<td style="text-align:right;">

1.066988036 \[1/min\]

</td>

<td style="text-align:right;">

\-26.7623932 \[1/min\]

</td>

<td style="text-align:right;">

10265.11 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.392726829 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.228921e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.24842144 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203141 \[1\]

</td>

<td style="text-align:right;">

0.6277473241 \[1/min\]

</td>

<td style="text-align:right;">

0.1855297 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1654339 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.693742e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0039202308 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.796 \[µmol/s\]

</td>

<td style="text-align:right;">

577.700 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2220 \[°C\]

</td>

<td style="text-align:right;">

16.0954 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9139 \[°C\]

</td>

<td style="text-align:right;">

15.8769 \[°C\]

</td>

<td style="text-align:right;">

11.68170 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2124 \[°C\]

</td>

<td style="text-align:right;">

205.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7204 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

65

</td>

<td style="text-align:right;">

1557067777 \[s\]

</td>

<td style="text-align:left;">

128

</td>

<td style="text-align:left;">

2019-05-05 07:49:37

</td>

<td style="text-align:left;">

07:49:37

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067767 \[s\]

</td>

<td style="text-align:right;">

0.0009837915 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.3944269 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

162.20311 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-65.7942353 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.65357317 \[Pa\]

</td>

<td style="text-align:right;">

16.403113 \[Pa\]

</td>

<td style="text-align:right;">

0.10353603 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276877 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10098981 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06334218 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6703 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49832 \[°C\]

</td>

<td style="text-align:right;">

20.17446 \[°C\]

</td>

<td style="text-align:right;">

2.372085 \[kPa\]

</td>

<td style="text-align:right;">

59.83657 \[%\]

</td>

<td style="text-align:right;">

1.405356 \[kPa\]

</td>

<td style="text-align:right;">

2.348657 \[kPa\]

</td>

<td style="text-align:right;">

0.9667289 \[kPa\]

</td>

<td style="text-align:right;">

\-43.38520 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.68886 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.740260 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8560 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191126 \[1\]

</td>

<td style="text-align:right;">

0.04704906 \[1\]

</td>

<td style="text-align:right;">

3.503388 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54744 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.978 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.196 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067767 \[s\]

</td>

<td style="text-align:right;">

162.20313 \[µmol/mol\]

</td>

<td style="text-align:right;">

179.66713 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89694 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73285 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0229 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9270 \[kPa\]

</td>

<td style="text-align:right;">

0.1999929 \[kPa\]

</td>

<td style="text-align:right;">

20.01406 \[°C\]

</td>

<td style="text-align:right;">

20.17446 \[°C\]

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

10014.272 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.07130 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.978 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730043 \[1\]

</td>

<td style="text-align:right;">

0.02699594 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.192877 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10266.21 \[1\]

</td>

<td style="text-align:right;">

13121.82 \[1\]

</td>

<td style="text-align:right;">

33.64700 \[°C\]

</td>

<td style="text-align:right;">

35.18500 \[°C\]

</td>

<td style="text-align:right;">

34.82826 \[°C\]

</td>

<td style="text-align:right;">

33.56200 \[°C\]

</td>

<td style="text-align:right;">

33.56403 \[°C\]

</td>

<td style="text-align:right;">

1459.481 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067800 \[s\]

</td>

<td style="text-align:right;">

2.241796 \[1\]

</td>

<td style="text-align:right;">

0.850540168 \[1/min\]

</td>

<td style="text-align:right;">

\-18.4478632 \[1/min\]

</td>

<td style="text-align:right;">

10264.40 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.460512195 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.144421e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.24158529 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.218209 \[1\]

</td>

<td style="text-align:right;">

0.6031874521 \[1/min\]

</td>

<td style="text-align:right;">

0.1897820 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1641773 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.132711e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0033562864 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85547 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.783 \[µmol/s\]

</td>

<td style="text-align:right;">

577.721 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2138 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

11.78280 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1929 \[°C\]

</td>

<td style="text-align:right;">

210.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7220 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

66

</td>

<td style="text-align:right;">

1557067779 \[s\]

</td>

<td style="text-align:left;">

130

</td>

<td style="text-align:left;">

2019-05-05 07:49:39

</td>

<td style="text-align:left;">

07:49:39

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067769 \[s\]

</td>

<td style="text-align:right;">

0.0009828690 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.4419682 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

165.45540 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-63.6129838 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.43300063 \[Pa\]

</td>

<td style="text-align:right;">

16.732036 \[Pa\]

</td>

<td style="text-align:right;">

0.10340722 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276852 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10086722 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06326502 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6705 \[W/m^2\]

</td>

<td style="text-align:right;">

21.49959 \[°C\]

</td>

<td style="text-align:right;">

20.17580 \[°C\]

</td>

<td style="text-align:right;">

2.372281 \[kPa\]

</td>

<td style="text-align:right;">

59.82998 \[%\]

</td>

<td style="text-align:right;">

1.405284 \[kPa\]

</td>

<td style="text-align:right;">

2.348796 \[kPa\]

</td>

<td style="text-align:right;">

0.9669973 \[kPa\]

</td>

<td style="text-align:right;">

\-43.34452 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.73616 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.744481 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8454 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191058 \[1\]

</td>

<td style="text-align:right;">

0.04704830 \[1\]

</td>

<td style="text-align:right;">

3.503343 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54764 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.979 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.198 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067769 \[s\]

</td>

<td style="text-align:right;">

165.45542 \[µmol/mol\]

</td>

<td style="text-align:right;">

182.98032 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89621 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73319 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0172 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.2000024 \[kPa\]

</td>

<td style="text-align:right;">

20.01501 \[°C\]

</td>

<td style="text-align:right;">

20.17580 \[°C\]

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

10014.094 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.11577 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.979 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730043 \[1\]

</td>

<td style="text-align:right;">

0.02699593 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.240423 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10265.31 \[1\]

</td>

<td style="text-align:right;">

13121.84 \[1\]

</td>

<td style="text-align:right;">

33.65300 \[°C\]

</td>

<td style="text-align:right;">

35.18700 \[°C\]

</td>

<td style="text-align:right;">

34.83435 \[°C\]

</td>

<td style="text-align:right;">

33.56403 \[°C\]

</td>

<td style="text-align:right;">

33.56810 \[°C\]

</td>

<td style="text-align:right;">

1459.483 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067802 \[s\]

</td>

<td style="text-align:right;">

2.274042 \[1\]

</td>

<td style="text-align:right;">

1.150328197 \[1/min\]

</td>

<td style="text-align:right;">

\-3.6888889 \[1/min\]

</td>

<td style="text-align:right;">

10263.93 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.520717073 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.308033e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.25320872 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.252200 \[1\]

</td>

<td style="text-align:right;">

0.7929283586 \[1/min\]

</td>

<td style="text-align:right;">

0.1904101 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1630698 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.339540e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0024739467 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.079 \[µmol/s\]

</td>

<td style="text-align:right;">

577.577 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2074 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

11.95170 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1929 \[°C\]

</td>

<td style="text-align:right;">

210.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7214 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.820 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

67

</td>

<td style="text-align:right;">

1557067781 \[s\]

</td>

<td style="text-align:left;">

132

</td>

<td style="text-align:left;">

2019-05-05 07:49:41

</td>

<td style="text-align:left;">

07:49:41

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067771 \[s\]

</td>

<td style="text-align:right;">

0.0009823429 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.4876792 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

168.70150 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-61.2850048 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-6.19759159 \[Pa\]

</td>

<td style="text-align:right;">

17.060340 \[Pa\]

</td>

<td style="text-align:right;">

0.10333767 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276235 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10080037 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06322301 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6707 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50074 \[°C\]

</td>

<td style="text-align:right;">

20.17646 \[°C\]

</td>

<td style="text-align:right;">

2.372379 \[kPa\]

</td>

<td style="text-align:right;">

59.82658 \[%\]

</td>

<td style="text-align:right;">

1.405257 \[kPa\]

</td>

<td style="text-align:right;">

2.348884 \[kPa\]

</td>

<td style="text-align:right;">

0.9671223 \[kPa\]

</td>

<td style="text-align:right;">

\-43.32132 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.73834 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.745157 \[W/m^2\]

</td>

<td style="text-align:right;">

176.8659 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189380 \[1\]

</td>

<td style="text-align:right;">

0.04702946 \[1\]

</td>

<td style="text-align:right;">

3.502235 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54473 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.981 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.199 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067771 \[s\]

</td>

<td style="text-align:right;">

168.70152 \[µmol/mol\]

</td>

<td style="text-align:right;">

186.28474 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89591 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73354 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0244 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9274 \[kPa\]

</td>

<td style="text-align:right;">

0.2000189 \[kPa\]

</td>

<td style="text-align:right;">

20.01562 \[°C\]

</td>

<td style="text-align:right;">

20.17646 \[°C\]

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

10010.065 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.18984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.981 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730043 \[1\]

</td>

<td style="text-align:right;">

0.02699593 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.240439 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10265.40 \[1\]

</td>

<td style="text-align:right;">

13121.85 \[1\]

</td>

<td style="text-align:right;">

33.65900 \[°C\]

</td>

<td style="text-align:right;">

35.18700 \[°C\]

</td>

<td style="text-align:right;">

34.84045 \[°C\]

</td>

<td style="text-align:right;">

33.56606 \[°C\]

</td>

<td style="text-align:right;">

33.57013 \[°C\]

</td>

<td style="text-align:right;">

1459.484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067804 \[s\]

</td>

<td style="text-align:right;">

2.304531 \[1\]

</td>

<td style="text-align:right;">

0.442673502 \[1/min\]

</td>

<td style="text-align:right;">

29.4632479 \[1/min\]

</td>

<td style="text-align:right;">

10264.75 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.576448780 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.506491e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.26582307 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.245253 \[1\]

</td>

<td style="text-align:right;">

1.0555506379 \[1/min\]

</td>

<td style="text-align:right;">

0.1946285 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

1.1623946 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.542836e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0017290292 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

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

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.828 \[µmol/s\]

</td>

<td style="text-align:right;">

577.793 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1991 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.10210 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1929 \[°C\]

</td>

<td style="text-align:right;">

215.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7195 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.820 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

68

</td>

<td style="text-align:right;">

1557067783 \[s\]

</td>

<td style="text-align:left;">

134

</td>

<td style="text-align:left;">

2019-05-05 07:49:43

</td>

<td style="text-align:left;">

07:49:43

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067773 \[s\]

</td>

<td style="text-align:right;">

0.0009820947 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.5481579 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

171.94192 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-59.0739712 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.97399636 \[Pa\]

</td>

<td style="text-align:right;">

17.388037 \[Pa\]

</td>

<td style="text-align:right;">

0.10332474 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275124 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10078687 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06321462 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6710 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50158 \[°C\]

</td>

<td style="text-align:right;">

20.17568 \[°C\]

</td>

<td style="text-align:right;">

2.372265 \[kPa\]

</td>

<td style="text-align:right;">

59.82623 \[%\]

</td>

<td style="text-align:right;">

1.405256 \[kPa\]

</td>

<td style="text-align:right;">

2.348897 \[kPa\]

</td>

<td style="text-align:right;">

0.9670083 \[kPa\]

</td>

<td style="text-align:right;">

\-43.31038 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.62188 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.735701 \[W/m^2\]

</td>

<td style="text-align:right;">

177.0030 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186358 \[1\]

</td>

<td style="text-align:right;">

0.04699554 \[1\]

</td>

<td style="text-align:right;">

3.500240 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54470 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.200 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067773 \[s\]

</td>

<td style="text-align:right;">

171.94194 \[µmol/mol\]

</td>

<td style="text-align:right;">

189.60135 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89590 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73383 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0285 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9274 \[kPa\]

</td>

<td style="text-align:right;">

0.2000325 \[kPa\]

</td>

<td style="text-align:right;">

20.01571 \[°C\]

</td>

<td style="text-align:right;">

20.17568 \[°C\]

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

10002.845 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.27557 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730043 \[1\]

</td>

<td style="text-align:right;">

0.02699592 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.235052 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10265.72 \[1\]

</td>

<td style="text-align:right;">

13121.87 \[1\]

</td>

<td style="text-align:right;">

33.66500 \[°C\]

</td>

<td style="text-align:right;">

35.18903 \[°C\]

</td>

<td style="text-align:right;">

34.84655 \[°C\]

</td>

<td style="text-align:right;">

33.57216 \[°C\]

</td>

<td style="text-align:right;">

33.57623 \[°C\]

</td>

<td style="text-align:right;">

1459.485 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067806 \[s\]

</td>

<td style="text-align:right;">

2.275673 \[1\]

</td>

<td style="text-align:right;">

\-0.740919656 \[1/min\]

</td>

<td style="text-align:right;">

49.8393163 \[1/min\]

</td>

<td style="text-align:right;">

10265.89 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.653458537 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.447329e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.26045458 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.253200 \[1\]

</td>

<td style="text-align:right;">

0.1546859110 \[1/min\]

</td>

<td style="text-align:right;">

0.1822713 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1621051 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.145916e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0015226920 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85447 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.902 \[µmol/s\]

</td>

<td style="text-align:right;">

577.667 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1906 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.20270 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1771 \[°C\]

</td>

<td style="text-align:right;">

220.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7226 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

69

</td>

<td style="text-align:right;">

1557067785 \[s\]

</td>

<td style="text-align:left;">

136

</td>

<td style="text-align:left;">

2019-05-05 07:49:45

</td>

<td style="text-align:left;">

07:49:45

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067775 \[s\]

</td>

<td style="text-align:right;">

0.0009815677 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.6228808 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

175.18305 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-57.1517050 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.77960684 \[Pa\]

</td>

<td style="text-align:right;">

17.715817 \[Pa\]

</td>

<td style="text-align:right;">

0.10328092 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274781 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10074480 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06318817 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6712 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50182 \[°C\]

</td>

<td style="text-align:right;">

20.17477 \[°C\]

</td>

<td style="text-align:right;">

2.372130 \[kPa\]

</td>

<td style="text-align:right;">

59.82588 \[%\]

</td>

<td style="text-align:right;">

1.405236 \[kPa\]

</td>

<td style="text-align:right;">

2.348876 \[kPa\]

</td>

<td style="text-align:right;">

0.9668944 \[kPa\]

</td>

<td style="text-align:right;">

\-43.28713 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.52397 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.727292 \[W/m^2\]

</td>

<td style="text-align:right;">

177.1328 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185424 \[1\]

</td>

<td style="text-align:right;">

0.04698505 \[1\]

</td>

<td style="text-align:right;">

3.499623 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54821 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067775 \[s\]

</td>

<td style="text-align:right;">

175.18306 \[µmol/mol\]

</td>

<td style="text-align:right;">

192.93606 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89569 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73423 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0226 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9275 \[kPa\]

</td>

<td style="text-align:right;">

0.2000098 \[kPa\]

</td>

<td style="text-align:right;">

20.01557 \[°C\]

</td>

<td style="text-align:right;">

20.17477 \[°C\]

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

10000.604 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.48822 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730043 \[1\]

</td>

<td style="text-align:right;">

0.02699590 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.249332 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10266.61 \[1\]

</td>

<td style="text-align:right;">

13121.89 \[1\]

</td>

<td style="text-align:right;">

33.67100 \[°C\]

</td>

<td style="text-align:right;">

35.18903 \[°C\]

</td>

<td style="text-align:right;">

34.85265 \[°C\]

</td>

<td style="text-align:right;">

33.57826 \[°C\]

</td>

<td style="text-align:right;">

33.58232 \[°C\]

</td>

<td style="text-align:right;">

1459.486 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067808 \[s\]

</td>

<td style="text-align:right;">

2.269108 \[1\]

</td>

<td style="text-align:right;">

\-0.793367514 \[1/min\]

</td>

<td style="text-align:right;">

64.9982905 \[1/min\]

</td>

<td style="text-align:right;">

10267.79 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.745958537 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.339776e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.24863094 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.252565 \[1\]

</td>

<td style="text-align:right;">

\-0.0780061600 \[1/min\]

</td>

<td style="text-align:right;">

0.1823689 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1615395 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.398084e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0018151019 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.005 \[µmol/s\]

</td>

<td style="text-align:right;">

577.649 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1845 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.37070 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1771 \[°C\]

</td>

<td style="text-align:right;">

220.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7256 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

70

</td>

<td style="text-align:right;">

1557067787 \[s\]

</td>

<td style="text-align:left;">

138

</td>

<td style="text-align:left;">

2019-05-05 07:49:47

</td>

<td style="text-align:left;">

07:49:47

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067777 \[s\]

</td>

<td style="text-align:right;">

0.0009806496 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.6966257 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

178.42885 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-55.3004992 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.59241876 \[Pa\]

</td>

<td style="text-align:right;">

18.044121 \[Pa\]

</td>

<td style="text-align:right;">

0.10319572 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274747 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10066368 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06313712 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6729 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50212 \[°C\]

</td>

<td style="text-align:right;">

20.17356 \[°C\]

</td>

<td style="text-align:right;">

2.371953 \[kPa\]

</td>

<td style="text-align:right;">

59.82364 \[%\]

</td>

<td style="text-align:right;">

1.405180 \[kPa\]

</td>

<td style="text-align:right;">

2.348871 \[kPa\]

</td>

<td style="text-align:right;">

0.9667730 \[kPa\]

</td>

<td style="text-align:right;">

\-43.24665 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.38007 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.714576 \[W/m^2\]

</td>

<td style="text-align:right;">

177.3316 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185331 \[1\]

</td>

<td style="text-align:right;">

0.04698401 \[1\]

</td>

<td style="text-align:right;">

3.499562 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54801 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.994 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.210 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408100 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067777 \[s\]

</td>

<td style="text-align:right;">

178.42887 \[µmol/mol\]

</td>

<td style="text-align:right;">

196.27406 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89509 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73471 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0204 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9278 \[kPa\]

</td>

<td style="text-align:right;">

0.2000105 \[kPa\]

</td>

<td style="text-align:right;">

20.01553 \[°C\]

</td>

<td style="text-align:right;">

20.17356 \[°C\]

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

10000.345 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.76356 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.994 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730036 \[1\]

</td>

<td style="text-align:right;">

0.02699654 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.245929 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10266.92 \[1\]

</td>

<td style="text-align:right;">

13121.98 \[1\]

</td>

<td style="text-align:right;">

33.67700 \[°C\]

</td>

<td style="text-align:right;">

35.18903 \[°C\]

</td>

<td style="text-align:right;">

34.85874 \[°C\]

</td>

<td style="text-align:right;">

33.58435 \[°C\]

</td>

<td style="text-align:right;">

33.58435 \[°C\]

</td>

<td style="text-align:right;">

1459.496 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49774 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067810 \[s\]

</td>

<td style="text-align:right;">

2.248792 \[1\]

</td>

<td style="text-align:right;">

\-0.818946998 \[1/min\]

</td>

<td style="text-align:right;">

44.1777778 \[1/min\]

</td>

<td style="text-align:right;">

10268.52 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.837085366 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.152537e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.22776554 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.256082 \[1\]

</td>

<td style="text-align:right;">

\-0.4819699006 \[1/min\]

</td>

<td style="text-align:right;">

0.1874883 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1604937 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.221150e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0028964577 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.827 \[µmol/s\]

</td>

<td style="text-align:right;">

577.812 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1769 \[°C\]

</td>

<td style="text-align:right;">

16.0949 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.51970 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1669 \[°C\]

</td>

<td style="text-align:right;">

225.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7300 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

71

</td>

<td style="text-align:right;">

1557067789 \[s\]

</td>

<td style="text-align:left;">

140

</td>

<td style="text-align:left;">

2019-05-05 07:49:49

</td>

<td style="text-align:left;">

07:49:49

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067779 \[s\]

</td>

<td style="text-align:right;">

0.0009795181 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.7628399 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

181.67779 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-53.3893354 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.39916028 \[Pa\]

</td>

<td style="text-align:right;">

18.372724 \[Pa\]

</td>

<td style="text-align:right;">

0.10308404 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274251 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10055688 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06306994 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6715 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50262 \[°C\]

</td>

<td style="text-align:right;">

20.17242 \[°C\]

</td>

<td style="text-align:right;">

2.371785 \[kPa\]

</td>

<td style="text-align:right;">

59.82077 \[%\]

</td>

<td style="text-align:right;">

1.405098 \[kPa\]

</td>

<td style="text-align:right;">

2.348847 \[kPa\]

</td>

<td style="text-align:right;">

0.9666868 \[kPa\]

</td>

<td style="text-align:right;">

\-43.19675 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.25561 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.703925 \[W/m^2\]

</td>

<td style="text-align:right;">

177.5152 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183983 \[1\]

</td>

<td style="text-align:right;">

0.04696887 \[1\]

</td>

<td style="text-align:right;">

3.498671 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54703 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.203 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067779 \[s\]

</td>

<td style="text-align:right;">

181.67781 \[µmol/mol\]

</td>

<td style="text-align:right;">

199.60597 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89425 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73521 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0222 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9280 \[kPa\]

</td>

<td style="text-align:right;">

0.2000346 \[kPa\]

</td>

<td style="text-align:right;">

20.01537 \[°C\]

</td>

<td style="text-align:right;">

20.17242 \[°C\]

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

9997.101 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

85.92028 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730041 \[1\]

</td>

<td style="text-align:right;">

0.02699603 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.258123 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10267.15 \[1\]

</td>

<td style="text-align:right;">

13121.92 \[1\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

35.18903 \[°C\]

</td>

<td style="text-align:right;">

34.86484 \[°C\]

</td>

<td style="text-align:right;">

33.59045 \[°C\]

</td>

<td style="text-align:right;">

33.59045 \[°C\]

</td>

<td style="text-align:right;">

1459.489 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067812 \[s\]

</td>

<td style="text-align:right;">

2.239469 \[1\]

</td>

<td style="text-align:right;">

\-0.441066657 \[1/min\]

</td>

<td style="text-align:right;">

26.2871795 \[1/min\]

</td>

<td style="text-align:right;">

10268.85 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.923409756 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.957334e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.20457458 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.262941 \[1\]

</td>

<td style="text-align:right;">

\-0.4162974328 \[1/min\]

</td>

<td style="text-align:right;">

0.1848450 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1591807 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-3.227289e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0040127750 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.887 \[µmol/s\]

</td>

<td style="text-align:right;">

577.703 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1711 \[°C\]

</td>

<td style="text-align:right;">

16.0947 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.68070 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1669 \[°C\]

</td>

<td style="text-align:right;">

230.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7364 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

72

</td>

<td style="text-align:right;">

1557067791 \[s\]

</td>

<td style="text-align:left;">

142

</td>

<td style="text-align:left;">

2019-05-05 07:49:51

</td>

<td style="text-align:left;">

07:49:51

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067781 \[s\]

</td>

<td style="text-align:right;">

0.0009779594 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.8173252 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

184.92711 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-51.4229268 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.20030113 \[Pa\]

</td>

<td style="text-align:right;">

18.701321 \[Pa\]

</td>

<td style="text-align:right;">

0.10291426 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274673 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10039576 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06296849 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6717 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50225 \[°C\]

</td>

<td style="text-align:right;">

20.17163 \[°C\]

</td>

<td style="text-align:right;">

2.371670 \[kPa\]

</td>

<td style="text-align:right;">

59.81771 \[%\]

</td>

<td style="text-align:right;">

1.404971 \[kPa\]

</td>

<td style="text-align:right;">

2.348755 \[kPa\]

</td>

<td style="text-align:right;">

0.9666986 \[kPa\]

</td>

<td style="text-align:right;">

\-43.12801 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.24059 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.702268 \[W/m^2\]

</td>

<td style="text-align:right;">

177.6008 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185131 \[1\]

</td>

<td style="text-align:right;">

0.04698177 \[1\]

</td>

<td style="text-align:right;">

3.499430 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54699 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.204 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067781 \[s\]

</td>

<td style="text-align:right;">

184.92713 \[µmol/mol\]

</td>

<td style="text-align:right;">

202.92426 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89299 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73579 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0190 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9281 \[kPa\]

</td>

<td style="text-align:right;">

0.2000014 \[kPa\]

</td>

<td style="text-align:right;">

20.01473 \[°C\]

</td>

<td style="text-align:right;">

20.17163 \[°C\]

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

9999.843 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.01020 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730041 \[1\]

</td>

<td style="text-align:right;">

0.02699602 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.244884 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10267.65 \[1\]

</td>

<td style="text-align:right;">

13121.93 \[1\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

35.19310 \[°C\]

</td>

<td style="text-align:right;">

34.87094 \[°C\]

</td>

<td style="text-align:right;">

33.59655 \[°C\]

</td>

<td style="text-align:right;">

33.59655 \[°C\]

</td>

<td style="text-align:right;">

1459.490 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067814 \[s\]

</td>

<td style="text-align:right;">

2.247162 \[1\]

</td>

<td style="text-align:right;">

\-0.424252978 \[1/min\]

</td>

<td style="text-align:right;">

3.3504274 \[1/min\]

</td>

<td style="text-align:right;">

10268.99 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-17.992790244 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.157050e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.22335538 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.260374 \[1\]

</td>

<td style="text-align:right;">

\-0.4052535370 \[1/min\]

</td>

<td style="text-align:right;">

0.1869889 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1574090 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.651275e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0055646207 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.020 \[µmol/s\]

</td>

<td style="text-align:right;">

577.739 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1662 \[°C\]

</td>

<td style="text-align:right;">

16.0940 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.80840 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1669 \[°C\]

</td>

<td style="text-align:right;">

230.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7395 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

73

</td>

<td style="text-align:right;">

1557067793 \[s\]

</td>

<td style="text-align:left;">

144

</td>

<td style="text-align:left;">

2019-05-05 07:49:53

</td>

<td style="text-align:left;">

07:49:53

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067783 \[s\]

</td>

<td style="text-align:right;">

0.0009761125 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.8770054 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

188.17421 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-49.6317968 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.01915573 \[Pa\]

</td>

<td style="text-align:right;">

19.029649 \[Pa\]

</td>

<td style="text-align:right;">

0.10270538 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275337 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.10019767 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06284375 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6721 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50152 \[°C\]

</td>

<td style="text-align:right;">

20.17103 \[°C\]

</td>

<td style="text-align:right;">

2.371582 \[kPa\]

</td>

<td style="text-align:right;">

59.81405 \[%\]

</td>

<td style="text-align:right;">

1.404803 \[kPa\]

</td>

<td style="text-align:right;">

2.348617 \[kPa\]

</td>

<td style="text-align:right;">

0.9667795 \[kPa\]

</td>

<td style="text-align:right;">

\-43.04656 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.28934 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.706069 \[W/m^2\]

</td>

<td style="text-align:right;">

177.6301 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186937 \[1\]

</td>

<td style="text-align:right;">

0.04700204 \[1\]

</td>

<td style="text-align:right;">

3.500622 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54584 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.989 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.206 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067783 \[s\]

</td>

<td style="text-align:right;">

188.17423 \[µmol/mol\]

</td>

<td style="text-align:right;">

206.24635 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.89136 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73634 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0192 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9278 \[kPa\]

</td>

<td style="text-align:right;">

0.1999876 \[kPa\]

</td>

<td style="text-align:right;">

20.01378 \[°C\]

</td>

<td style="text-align:right;">

20.17103 \[°C\]

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

10004.180 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.09714 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.989 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730040 \[1\]

</td>

<td style="text-align:right;">

0.02699616 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.230229 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10268.21 \[1\]

</td>

<td style="text-align:right;">

13121.95 \[1\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

35.19919 \[°C\]

</td>

<td style="text-align:right;">

34.87500 \[°C\]

</td>

<td style="text-align:right;">

33.60265 \[°C\]

</td>

<td style="text-align:right;">

33.60265 \[°C\]

</td>

<td style="text-align:right;">

1459.492 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49677 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067816 \[s\]

</td>

<td style="text-align:right;">

2.223858 \[1\]

</td>

<td style="text-align:right;">

0.073206857 \[1/min\]

</td>

<td style="text-align:right;">

\-15.0700855 \[1/min\]

</td>

<td style="text-align:right;">

10269.98 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.063029268 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.639789e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.26575435 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.241212 \[1\]

</td>

<td style="text-align:right;">

\-0.3861465371 \[1/min\]

</td>

<td style="text-align:right;">

0.1913530 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1552444 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-6.434760e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0073153554 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.931 \[µmol/s\]

</td>

<td style="text-align:right;">

577.956 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1618 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8771 \[°C\]

</td>

<td style="text-align:right;">

12.94760 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1565 \[°C\]

</td>

<td style="text-align:right;">

235.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7431 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

74

</td>

<td style="text-align:right;">

1557067795 \[s\]

</td>

<td style="text-align:left;">

146

</td>

<td style="text-align:left;">

2019-05-05 07:49:55

</td>

<td style="text-align:left;">

07:49:55

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067785 \[s\]

</td>

<td style="text-align:right;">

0.0009741343 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

14.9630389 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

191.42102 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-48.3002083 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.88447572 \[Pa\]

</td>

<td style="text-align:right;">

19.357915 \[Pa\]

</td>

<td style="text-align:right;">

0.10248095 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275325 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09998403 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06270929 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6693 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50129 \[°C\]

</td>

<td style="text-align:right;">

20.17043 \[°C\]

</td>

<td style="text-align:right;">

2.371493 \[kPa\]

</td>

<td style="text-align:right;">

59.80925 \[%\]

</td>

<td style="text-align:right;">

1.404614 \[kPa\]

</td>

<td style="text-align:right;">

2.348490 \[kPa\]

</td>

<td style="text-align:right;">

0.9668791 \[kPa\]

</td>

<td style="text-align:right;">

\-42.95932 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.32168 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.708926 \[W/m^2\]

</td>

<td style="text-align:right;">

177.6794 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186903 \[1\]

</td>

<td style="text-align:right;">

0.04700166 \[1\]

</td>

<td style="text-align:right;">

3.500600 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54554 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.972 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.192 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067785 \[s\]

</td>

<td style="text-align:right;">

191.42103 \[µmol/mol\]

</td>

<td style="text-align:right;">

209.59965 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88955 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73687 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0219 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9274 \[kPa\]

</td>

<td style="text-align:right;">

0.2000063 \[kPa\]

</td>

<td style="text-align:right;">

20.01291 \[°C\]

</td>

<td style="text-align:right;">

20.17043 \[°C\]

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

10004.140 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.21973 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.972 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730052 \[1\]

</td>

<td style="text-align:right;">

0.02699501 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.232006 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10268.62 \[1\]

</td>

<td style="text-align:right;">

13121.81 \[1\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

35.20529 \[°C\]

</td>

<td style="text-align:right;">

34.87500 \[°C\]

</td>

<td style="text-align:right;">

33.60874 \[°C\]

</td>

<td style="text-align:right;">

33.60874 \[°C\]

</td>

<td style="text-align:right;">

1459.477 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067818 \[s\]

</td>

<td style="text-align:right;">

2.220146 \[1\]

</td>

<td style="text-align:right;">

0.401292324 \[1/min\]

</td>

<td style="text-align:right;">

\-25.7606837 \[1/min\]

</td>

<td style="text-align:right;">

10270.30 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.168795122 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.145108e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.31870920 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.246629 \[1\]

</td>

<td style="text-align:right;">

\-0.0723774821 \[1/min\]

</td>

<td style="text-align:right;">

0.1953331 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1529088 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.302369e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0088849797 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.901 \[µmol/s\]

</td>

<td style="text-align:right;">

577.944 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1585 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8776 \[°C\]

</td>

<td style="text-align:right;">

13.04300 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1565 \[°C\]

</td>

<td style="text-align:right;">

240.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7486 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

75

</td>

<td style="text-align:right;">

1557067797 \[s\]

</td>

<td style="text-align:left;">

148

</td>

<td style="text-align:left;">

2019-05-05 07:49:57

</td>

<td style="text-align:left;">

07:49:57

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067787 \[s\]

</td>

<td style="text-align:right;">

0.0009718083 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.0530695 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

194.67673 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-47.1154239 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.76464914 \[Pa\]

</td>

<td style="text-align:right;">

19.687105 \[Pa\]

</td>

<td style="text-align:right;">

0.10221975 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275296 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09973535 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06255278 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6712 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50110 \[°C\]

</td>

<td style="text-align:right;">

20.16959 \[°C\]

</td>

<td style="text-align:right;">

2.371371 \[kPa\]

</td>

<td style="text-align:right;">

59.80363 \[%\]

</td>

<td style="text-align:right;">

1.404397 \[kPa\]

</td>

<td style="text-align:right;">

2.348347 \[kPa\]

</td>

<td style="text-align:right;">

0.9669747 \[kPa\]

</td>

<td style="text-align:right;">

\-42.85675 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.34043 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.710590 \[W/m^2\]

</td>

<td style="text-align:right;">

177.7634 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186824 \[1\]

</td>

<td style="text-align:right;">

0.04700077 \[1\]

</td>

<td style="text-align:right;">

3.500548 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54617 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916199 \[J/µmol\]

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

1557067787 \[s\]

</td>

<td style="text-align:right;">

194.67674 \[µmol/mol\]

</td>

<td style="text-align:right;">

212.96677 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88743 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73750 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0185 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9272 \[kPa\]

</td>

<td style="text-align:right;">

0.2000016 \[kPa\]

</td>

<td style="text-align:right;">

20.01193 \[°C\]

</td>

<td style="text-align:right;">

20.16959 \[°C\]

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

10003.977 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.33011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730046 \[1\]

</td>

<td style="text-align:right;">

0.02699552 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.225939 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10270.08 \[1\]

</td>

<td style="text-align:right;">

13121.91 \[1\]

</td>

<td style="text-align:right;">

33.68903 \[°C\]

</td>

<td style="text-align:right;">

35.21139 \[°C\]

</td>

<td style="text-align:right;">

34.87500 \[°C\]

</td>

<td style="text-align:right;">

33.61484 \[°C\]

</td>

<td style="text-align:right;">

33.61281 \[°C\]

</td>

<td style="text-align:right;">

1459.488 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067820 \[s\]

</td>

<td style="text-align:right;">

2.179131 \[1\]

</td>

<td style="text-align:right;">

0.266441035 \[1/min\]

</td>

<td style="text-align:right;">

\-2.8410255 \[1/min\]

</td>

<td style="text-align:right;">

10270.99 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.281268293 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.477939e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.35172925 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.220985 \[1\]

</td>

<td style="text-align:right;">

\-0.4838047828 \[1/min\]

</td>

<td style="text-align:right;">

0.1979074 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1502205 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.011090e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0103584623 \[mmol/mol\]

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

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85487 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.020 \[µmol/s\]

</td>

<td style="text-align:right;">

577.881 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1540 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8783 \[°C\]

</td>

<td style="text-align:right;">

13.20730 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1469 \[°C\]

</td>

<td style="text-align:right;">

240.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7534 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

76

</td>

<td style="text-align:right;">

1557067799 \[s\]

</td>

<td style="text-align:left;">

150

</td>

<td style="text-align:left;">

2019-05-05 07:49:59

</td>

<td style="text-align:left;">

07:49:59

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067789 \[s\]

</td>

<td style="text-align:right;">

0.0009691414 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.1243288 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

197.94414 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-45.6905576 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.62054768 \[Pa\]

</td>

<td style="text-align:right;">

20.017492 \[Pa\]

</td>

<td style="text-align:right;">

0.10193289 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274998 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09946191 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06238071 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6713 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50110 \[°C\]

</td>

<td style="text-align:right;">

20.16785 \[°C\]

</td>

<td style="text-align:right;">

2.371116 \[kPa\]

</td>

<td style="text-align:right;">

59.79679 \[%\]

</td>

<td style="text-align:right;">

1.404143 \[kPa\]

</td>

<td style="text-align:right;">

2.348191 \[kPa\]

</td>

<td style="text-align:right;">

0.9669728 \[kPa\]

</td>

<td style="text-align:right;">

\-42.73914 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.25521 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.703251 \[W/m^2\]

</td>

<td style="text-align:right;">

177.9737 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186014 \[1\]

</td>

<td style="text-align:right;">

0.04699167 \[1\]

</td>

<td style="text-align:right;">

3.500013 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54624 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.202 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067789 \[s\]

</td>

<td style="text-align:right;">

197.94416 \[µmol/mol\]

</td>

<td style="text-align:right;">

216.32274 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88495 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73818 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0222 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9270 \[kPa\]

</td>

<td style="text-align:right;">

0.2000030 \[kPa\]

</td>

<td style="text-align:right;">

20.01086 \[°C\]

</td>

<td style="text-align:right;">

20.16785 \[°C\]

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

10002.059 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.40916 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.985 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730046 \[1\]

</td>

<td style="text-align:right;">

0.02699552 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.195255 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10271.71 \[1\]

</td>

<td style="text-align:right;">

13121.92 \[1\]

</td>

<td style="text-align:right;">

33.68903 \[°C\]

</td>

<td style="text-align:right;">

35.21748 \[°C\]

</td>

<td style="text-align:right;">

34.87500 \[°C\]

</td>

<td style="text-align:right;">

33.62094 \[°C\]

</td>

<td style="text-align:right;">

33.61484 \[°C\]

</td>

<td style="text-align:right;">

1459.489 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49581 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067822 \[s\]

</td>

<td style="text-align:right;">

2.208585 \[1\]

</td>

<td style="text-align:right;">

\-0.393326490 \[1/min\]

</td>

<td style="text-align:right;">

62.3145303 \[1/min\]

</td>

<td style="text-align:right;">

10272.34 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.371256098 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.325905e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.34026645 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.201768 \[1\]

</td>

<td style="text-align:right;">

\-0.1426383895 \[1/min\]

</td>

<td style="text-align:right;">

0.1960845 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1470873 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.169502e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0116689411 \[mmol/mol\]

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

1.85547 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.842 \[µmol/s\]

</td>

<td style="text-align:right;">

577.957 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1507 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

13.35450 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1469 \[°C\]

</td>

<td style="text-align:right;">

245.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7586 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

77

</td>

<td style="text-align:right;">

1557067801 \[s\]

</td>

<td style="text-align:left;">

152

</td>

<td style="text-align:left;">

2019-05-05 07:50:01

</td>

<td style="text-align:left;">

07:50:01

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067791 \[s\]

</td>

<td style="text-align:right;">

0.0009661707 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.1863670 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

201.21724 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-44.1850157 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.46828753 \[Pa\]

</td>

<td style="text-align:right;">

20.348448 \[Pa\]

</td>

<td style="text-align:right;">

0.10161966 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274457 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09916308 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06219269 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6701 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50158 \[°C\]

</td>

<td style="text-align:right;">

20.16547 \[°C\]

</td>

<td style="text-align:right;">

2.370766 \[kPa\]

</td>

<td style="text-align:right;">

59.78739 \[%\]

</td>

<td style="text-align:right;">

1.403851 \[kPa\]

</td>

<td style="text-align:right;">

2.348073 \[kPa\]

</td>

<td style="text-align:right;">

0.9669148 \[kPa\]

</td>

<td style="text-align:right;">

\-42.60813 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.05839 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.686215 \[W/m^2\]

</td>

<td style="text-align:right;">

178.3174 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184543 \[1\]

</td>

<td style="text-align:right;">

0.04697517 \[1\]

</td>

<td style="text-align:right;">

3.499042 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54529 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.196 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067791 \[s\]

</td>

<td style="text-align:right;">

201.21726 \[µmol/mol\]

</td>

<td style="text-align:right;">

219.67335 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88210 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73884 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0226 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.2000191 \[kPa\]

</td>

<td style="text-align:right;">

20.01004 \[°C\]

</td>

<td style="text-align:right;">

20.16547 \[°C\]

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

9998.569 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.61316 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730052 \[1\]

</td>

<td style="text-align:right;">

0.02699501 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.175903 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10273.75 \[1\]

</td>

<td style="text-align:right;">

13121.85 \[1\]

</td>

<td style="text-align:right;">

33.69106 \[°C\]

</td>

<td style="text-align:right;">

35.22358 \[°C\]

</td>

<td style="text-align:right;">

34.87700 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

33.62094 \[°C\]

</td>

<td style="text-align:right;">

1459.483 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067824 \[s\]

</td>

<td style="text-align:right;">

2.205665 \[1\]

</td>

<td style="text-align:right;">

\-0.753124784 \[1/min\]

</td>

<td style="text-align:right;">

104.8649576 \[1/min\]

</td>

<td style="text-align:right;">

10274.07 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.452178049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.873921e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.30752963 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.181144 \[1\]

</td>

<td style="text-align:right;">

0.0009376529 \[1/min\]

</td>

<td style="text-align:right;">

0.1880368 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1435793 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.247178e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0123224511 \[mmol/mol\]

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

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.960 \[µmol/s\]

</td>

<td style="text-align:right;">

577.921 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1469 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

13.51350 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1469 \[°C\]

</td>

<td style="text-align:right;">

250.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7640 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

78

</td>

<td style="text-align:right;">

1557067803 \[s\]

</td>

<td style="text-align:left;">

154

</td>

<td style="text-align:left;">

2019-05-05 07:50:03

</td>

<td style="text-align:left;">

07:50:03

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067793 \[s\]

</td>

<td style="text-align:right;">

0.0009629509 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.2473374 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

204.49256 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-42.7985893 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.32807870 \[Pa\]

</td>

<td style="text-align:right;">

20.679651 \[Pa\]

</td>

<td style="text-align:right;">

0.10125159 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274748 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09881285 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06197225 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6706 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50207 \[°C\]

</td>

<td style="text-align:right;">

20.16461 \[°C\]

</td>

<td style="text-align:right;">

2.370640 \[kPa\]

</td>

<td style="text-align:right;">

59.77520 \[%\]

</td>

<td style="text-align:right;">

1.403530 \[kPa\]

</td>

<td style="text-align:right;">

2.348015 \[kPa\]

</td>

<td style="text-align:right;">

0.9671095 \[kPa\]

</td>

<td style="text-align:right;">

\-42.46614 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.00426 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.681199 \[W/m^2\]

</td>

<td style="text-align:right;">

178.5190 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185333 \[1\]

</td>

<td style="text-align:right;">

0.04698403 \[1\]

</td>

<td style="text-align:right;">

3.499563 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54805 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.980 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.198 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067793 \[s\]

</td>

<td style="text-align:right;">

204.49258 \[µmol/mol\]

</td>

<td style="text-align:right;">

223.02500 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87894 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.73947 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0185 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.1999899 \[kPa\]

</td>

<td style="text-align:right;">

20.00964 \[°C\]

</td>

<td style="text-align:right;">

20.16461 \[°C\]

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

10000.463 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.87273 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.980 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730052 \[1\]

</td>

<td style="text-align:right;">

0.02699501 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.204623 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10274.98 \[1\]

</td>

<td style="text-align:right;">

13121.87 \[1\]

</td>

<td style="text-align:right;">

33.69310 \[°C\]

</td>

<td style="text-align:right;">

35.22968 \[°C\]

</td>

<td style="text-align:right;">

34.87700 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

33.62094 \[°C\]

</td>

<td style="text-align:right;">

1459.485 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067826 \[s\]

</td>

<td style="text-align:right;">

2.205465 \[1\]

</td>

<td style="text-align:right;">

\-0.433063249 \[1/min\]

</td>

<td style="text-align:right;">

110.0923077 \[1/min\]

</td>

<td style="text-align:right;">

10276.17 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.527873171 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.439560e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.27462719 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.201603 \[1\]

</td>

<td style="text-align:right;">

\-0.1388834356 \[1/min\]

</td>

<td style="text-align:right;">

0.1797970 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1397824 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.213016e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0120083389 \[mmol/mol\]

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

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85343 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.197 \[µmol/s\]

</td>

<td style="text-align:right;">

578.029 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1433 \[°C\]

</td>

<td style="text-align:right;">

16.0935 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

13.63950 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1383 \[°C\]

</td>

<td style="text-align:right;">

250.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7689 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

79

</td>

<td style="text-align:right;">

1557067805 \[s\]

</td>

<td style="text-align:left;">

156

</td>

<td style="text-align:left;">

2019-05-05 07:50:05

</td>

<td style="text-align:left;">

07:50:05

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067795 \[s\]

</td>

<td style="text-align:right;">

0.0009598067 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.3116544 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

207.76963 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-41.4802079 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.19476020 \[Pa\]

</td>

<td style="text-align:right;">

21.011075 \[Pa\]

</td>

<td style="text-align:right;">

0.10088222 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275274 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09846156 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06175112 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6711 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50260 \[°C\]

</td>

<td style="text-align:right;">

20.16441 \[°C\]

</td>

<td style="text-align:right;">

2.370611 \[kPa\]

</td>

<td style="text-align:right;">

59.76258 \[%\]

</td>

<td style="text-align:right;">

1.403217 \[kPa\]

</td>

<td style="text-align:right;">

2.347986 \[kPa\]

</td>

<td style="text-align:right;">

0.9673938 \[kPa\]

</td>

<td style="text-align:right;">

\-42.32748 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.00826 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.681161 \[W/m^2\]

</td>

<td style="text-align:right;">

178.6542 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186765 \[1\]

</td>

<td style="text-align:right;">

0.04700011 \[1\]

</td>

<td style="text-align:right;">

3.500509 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54825 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067795 \[s\]

</td>

<td style="text-align:right;">

207.76965 \[µmol/mol\]

</td>

<td style="text-align:right;">

226.38226 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87582 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74008 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0181 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9268 \[kPa\]

</td>

<td style="text-align:right;">

0.1999818 \[kPa\]

</td>

<td style="text-align:right;">

20.00945 \[°C\]

</td>

<td style="text-align:right;">

20.16441 \[°C\]

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

10003.871 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.90258 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730052 \[1\]

</td>

<td style="text-align:right;">

0.02699501 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.206632 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10276.27 \[1\]

</td>

<td style="text-align:right;">

13121.90 \[1\]

</td>

<td style="text-align:right;">

33.69513 \[°C\]

</td>

<td style="text-align:right;">

35.23374 \[°C\]

</td>

<td style="text-align:right;">

34.87700 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

33.62094 \[°C\]

</td>

<td style="text-align:right;">

1459.488 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067828 \[s\]

</td>

<td style="text-align:right;">

2.186158 \[1\]

</td>

<td style="text-align:right;">

\-0.536495735 \[1/min\]

</td>

<td style="text-align:right;">

119.0324789 \[1/min\]

</td>

<td style="text-align:right;">

10280.10 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.604043902 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.209501e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.25672236 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199165 \[1\]

</td>

<td style="text-align:right;">

\-0.1471624212 \[1/min\]

</td>

<td style="text-align:right;">

0.1833768 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1360349 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.132380e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0112509482 \[mmol/mol\]

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

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85344 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.990 \[µmol/s\]

</td>

<td style="text-align:right;">

578.245 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1409 \[°C\]

</td>

<td style="text-align:right;">

16.0929 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9140 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

13.77700 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1383 \[°C\]

</td>

<td style="text-align:right;">

255.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7747 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.183 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

80

</td>

<td style="text-align:right;">

1557067807 \[s\]

</td>

<td style="text-align:left;">

158

</td>

<td style="text-align:left;">

2019-05-05 07:50:07

</td>

<td style="text-align:left;">

07:50:07

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067797 \[s\]

</td>

<td style="text-align:right;">

0.0009569270 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.3906100 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

211.04721 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-40.3057804 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-4.07599227 \[Pa\]

</td>

<td style="text-align:right;">

21.342517 \[Pa\]

</td>

<td style="text-align:right;">

0.10055691 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275261 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09815162 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06155608 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6684 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50320 \[°C\]

</td>

<td style="text-align:right;">

20.16336 \[°C\]

</td>

<td style="text-align:right;">

2.370458 \[kPa\]

</td>

<td style="text-align:right;">

59.75118 \[%\]

</td>

<td style="text-align:right;">

1.402919 \[kPa\]

</td>

<td style="text-align:right;">

2.347936 \[kPa\]

</td>

<td style="text-align:right;">

0.9675387 \[kPa\]

</td>

<td style="text-align:right;">

\-42.20048 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.92268 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.673590 \[W/m^2\]

</td>

<td style="text-align:right;">

178.8716 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186730 \[1\]

</td>

<td style="text-align:right;">

0.04699971 \[1\]

</td>

<td style="text-align:right;">

3.500486 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54592 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.967 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.187 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067797 \[s\]

</td>

<td style="text-align:right;">

211.04723 \[µmol/mol\]

</td>

<td style="text-align:right;">

229.75748 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87288 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74055 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0220 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.2000005 \[kPa\]

</td>

<td style="text-align:right;">

20.00910 \[°C\]

</td>

<td style="text-align:right;">

20.16336 \[°C\]

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

10003.794 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.76440 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.967 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730063 \[1\]

</td>

<td style="text-align:right;">

0.02699386 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.216497 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10278.49 \[1\]

</td>

<td style="text-align:right;">

13121.76 \[1\]

</td>

<td style="text-align:right;">

33.69716 \[°C\]

</td>

<td style="text-align:right;">

35.23984 \[°C\]

</td>

<td style="text-align:right;">

34.87700 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

1459.474 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067830 \[s\]

</td>

<td style="text-align:right;">

2.175435 \[1\]

</td>

<td style="text-align:right;">

0.127052980 \[1/min\]

</td>

<td style="text-align:right;">

115.7982910 \[1/min\]

</td>

<td style="text-align:right;">

10283.71 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.701975610 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.291049e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.26558171 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199229 \[1\]

</td>

<td style="text-align:right;">

\-0.2525848282 \[1/min\]

</td>

<td style="text-align:right;">

0.1818478 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1325868 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.047740e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0104673738 \[mmol/mol\]

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

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85344 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.007 \[µmol/s\]

</td>

<td style="text-align:right;">

578.119 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1371 \[°C\]

</td>

<td style="text-align:right;">

16.0922 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9142 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

13.87320 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1312 \[°C\]

</td>

<td style="text-align:right;">

260.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7811 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.183 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

81

</td>

<td style="text-align:right;">

1557067809 \[s\]

</td>

<td style="text-align:left;">

160

</td>

<td style="text-align:left;">

2019-05-05 07:50:09

</td>

<td style="text-align:left;">

07:50:09

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067799 \[s\]

</td>

<td style="text-align:right;">

0.0009540154 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.4667696 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

214.32998 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-39.1025424 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.95430359 \[Pa\]

</td>

<td style="text-align:right;">

21.674443 \[Pa\]

</td>

<td style="text-align:right;">

0.10022775 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275720 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09783844 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06135895 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6704 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50329 \[°C\]

</td>

<td style="text-align:right;">

20.16228 \[°C\]

</td>

<td style="text-align:right;">

2.370299 \[kPa\]

</td>

<td style="text-align:right;">

59.74055 \[%\]

</td>

<td style="text-align:right;">

1.402617 \[kPa\]

</td>

<td style="text-align:right;">

2.347848 \[kPa\]

</td>

<td style="text-align:right;">

0.9676823 \[kPa\]

</td>

<td style="text-align:right;">

\-42.07208 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.86833 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.668431 \[W/m^2\]

</td>

<td style="text-align:right;">

179.0615 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187979 \[1\]

</td>

<td style="text-align:right;">

0.04701374 \[1\]

</td>

<td style="text-align:right;">

3.501311 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54749 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.979 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.197 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067799 \[s\]

</td>

<td style="text-align:right;">

214.33000 \[µmol/mol\]

</td>

<td style="text-align:right;">

233.13477 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86993 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74103 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0191 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9265 \[kPa\]

</td>

<td style="text-align:right;">

0.1999601 \[kPa\]

</td>

<td style="text-align:right;">

20.00849 \[°C\]

</td>

<td style="text-align:right;">

20.16228 \[°C\]

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

10006.798 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.72764 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.979 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730058 \[1\]

</td>

<td style="text-align:right;">

0.02699436 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.215265 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10282.17 \[1\]

</td>

<td style="text-align:right;">

13121.86 \[1\]

</td>

<td style="text-align:right;">

33.70326 \[°C\]

</td>

<td style="text-align:right;">

35.24594 \[°C\]

</td>

<td style="text-align:right;">

34.87900 \[°C\]

</td>

<td style="text-align:right;">

33.63100 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

1459.485 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49387 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067832 \[s\]

</td>

<td style="text-align:right;">

2.189358 \[1\]

</td>

<td style="text-align:right;">

0.447312805 \[1/min\]

</td>

<td style="text-align:right;">

127.3162394 \[1/min\]

</td>

<td style="text-align:right;">

10287.52 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.797978049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.315032e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.26881892 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.201856 \[1\]

</td>

<td style="text-align:right;">

0.0367512207 \[1/min\]

</td>

<td style="text-align:right;">

0.1784616 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1291580 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-9.628976e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0096223797 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85343 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.057 \[µmol/s\]

</td>

<td style="text-align:right;">

578.065 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1339 \[°C\]

</td>

<td style="text-align:right;">

16.0920 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9147 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

14.03680 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1312 \[°C\]

</td>

<td style="text-align:right;">

260.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7865 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

82

</td>

<td style="text-align:right;">

1557067811 \[s\]

</td>

<td style="text-align:left;">

162

</td>

<td style="text-align:left;">

2019-05-05 07:50:11

</td>

<td style="text-align:left;">

07:50:11

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067801 \[s\]

</td>

<td style="text-align:right;">

0.0009511636 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.5235304 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

217.62060 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-37.5701495 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.79933321 \[Pa\]

</td>

<td style="text-align:right;">

22.007183 \[Pa\]

</td>

<td style="text-align:right;">

0.09990690 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275905 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09753286 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06116663 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6708 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50354 \[°C\]

</td>

<td style="text-align:right;">

20.16127 \[°C\]

</td>

<td style="text-align:right;">

2.370151 \[kPa\]

</td>

<td style="text-align:right;">

59.73080 \[%\]

</td>

<td style="text-align:right;">

1.402337 \[kPa\]

</td>

<td style="text-align:right;">

2.347762 \[kPa\]

</td>

<td style="text-align:right;">

0.9678134 \[kPa\]

</td>

<td style="text-align:right;">

\-41.94632 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.81721 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.663763 \[W/m^2\]

</td>

<td style="text-align:right;">

179.2435 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04188481 \[1\]

</td>

<td style="text-align:right;">

0.04701937 \[1\]

</td>

<td style="text-align:right;">

3.501642 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54726 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.200 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067801 \[s\]

</td>

<td style="text-align:right;">

217.62061 \[µmol/mol\]

</td>

<td style="text-align:right;">

236.49658 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86717 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74165 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0175 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9264 \[kPa\]

</td>

<td style="text-align:right;">

0.1999605 \[kPa\]

</td>

<td style="text-align:right;">

20.00791 \[°C\]

</td>

<td style="text-align:right;">

20.16127 \[°C\]

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

10008.009 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.93712 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730058 \[1\]

</td>

<td style="text-align:right;">

0.02699436 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.196590 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10285.69 \[1\]

</td>

<td style="text-align:right;">

13121.88 \[1\]

</td>

<td style="text-align:right;">

33.70935 \[°C\]

</td>

<td style="text-align:right;">

35.24797 \[°C\]

</td>

<td style="text-align:right;">

34.88500 \[°C\]

</td>

<td style="text-align:right;">

33.63100 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

1459.488 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49387 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067834 \[s\]

</td>

<td style="text-align:right;">

2.172173 \[1\]

</td>

<td style="text-align:right;">

0.247319643 \[1/min\]

</td>

<td style="text-align:right;">

106.1606840 \[1/min\]

</td>

<td style="text-align:right;">

10292.44 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.869795122 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.907199e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.23487595 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.186365 \[1\]

</td>

<td style="text-align:right;">

0.0161991519 \[1/min\]

</td>

<td style="text-align:right;">

0.1739362 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1257890 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.958188e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0089080185 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.839 \[µmol/s\]

</td>

<td style="text-align:right;">

578.227 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1308 \[°C\]

</td>

<td style="text-align:right;">

16.0920 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9151 \[°C\]

</td>

<td style="text-align:right;">

15.8785 \[°C\]

</td>

<td style="text-align:right;">

14.16160 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1312 \[°C\]

</td>

<td style="text-align:right;">

265.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.7921 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

83

</td>

<td style="text-align:right;">

1557067813 \[s\]

</td>

<td style="text-align:left;">

164

</td>

<td style="text-align:left;">

2019-05-05 07:50:13

</td>

<td style="text-align:left;">

07:50:13

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067803 \[s\]

</td>

<td style="text-align:right;">

0.0009486814 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.5668169 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

220.91124 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-35.7365376 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.61390681 \[Pa\]

</td>

<td style="text-align:right;">

22.339955 \[Pa\]

</td>

<td style="text-align:right;">

0.09962392 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275417 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09726264 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06099664 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6710 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50409 \[°C\]

</td>

<td style="text-align:right;">

20.16064 \[°C\]

</td>

<td style="text-align:right;">

2.370059 \[kPa\]

</td>

<td style="text-align:right;">

59.72223 \[%\]

</td>

<td style="text-align:right;">

1.402088 \[kPa\]

</td>

<td style="text-align:right;">

2.347681 \[kPa\]

</td>

<td style="text-align:right;">

0.9679712 \[kPa\]

</td>

<td style="text-align:right;">

\-41.83685 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.80487 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.663018 \[W/m^2\]

</td>

<td style="text-align:right;">

179.3663 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187155 \[1\]

</td>

<td style="text-align:right;">

0.04700448 \[1\]

</td>

<td style="text-align:right;">

3.500766 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54657 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916198 \[J/µmol\]

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

1557067803 \[s\]

</td>

<td style="text-align:right;">

220.91126 \[µmol/mol\]

</td>

<td style="text-align:right;">

239.84219 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86471 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74212 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0194 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9264 \[kPa\]

</td>

<td style="text-align:right;">

0.1999964 \[kPa\]

</td>

<td style="text-align:right;">

20.00735 \[°C\]

</td>

<td style="text-align:right;">

20.16064 \[°C\]

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

10004.845 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.29958 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730058 \[1\]

</td>

<td style="text-align:right;">

0.02699436 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.191765 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10290.07 \[1\]

</td>

<td style="text-align:right;">

13121.89 \[1\]

</td>

<td style="text-align:right;">

33.71545 \[°C\]

</td>

<td style="text-align:right;">

35.25000 \[°C\]

</td>

<td style="text-align:right;">

34.89100 \[°C\]

</td>

<td style="text-align:right;">

33.63500 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

1459.489 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49387 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067836 \[s\]

</td>

<td style="text-align:right;">

2.195092 \[1\]

</td>

<td style="text-align:right;">

\-0.170078643 \[1/min\]

</td>

<td style="text-align:right;">

116.2256413 \[1/min\]

</td>

<td style="text-align:right;">

10296.61 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.929287805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.400962e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.19337020 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.180535 \[1\]

</td>

<td style="text-align:right;">

\-0.1185721135 \[1/min\]

</td>

<td style="text-align:right;">

0.1696002 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1228232 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.390697e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0083404221 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85778 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.871 \[µmol/s\]

</td>

<td style="text-align:right;">

578.071 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1281 \[°C\]

</td>

<td style="text-align:right;">

16.0920 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9153 \[°C\]

</td>

<td style="text-align:right;">

15.8790 \[°C\]

</td>

<td style="text-align:right;">

14.32860 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1264 \[°C\]

</td>

<td style="text-align:right;">

270.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8010 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

84

</td>

<td style="text-align:right;">

1557067815 \[s\]

</td>

<td style="text-align:left;">

166

</td>

<td style="text-align:left;">

2019-05-05 07:50:15

</td>

<td style="text-align:left;">

07:50:15

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067805 \[s\]

</td>

<td style="text-align:right;">

0.0009463182 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.5730496 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

224.19947 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-33.3256358 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.37010388 \[Pa\]

</td>

<td style="text-align:right;">

22.672500 \[Pa\]

</td>

<td style="text-align:right;">

0.09933378 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275534 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09698618 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06082267 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6699 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50421 \[°C\]

</td>

<td style="text-align:right;">

20.16135 \[°C\]

</td>

<td style="text-align:right;">

2.370162 \[kPa\]

</td>

<td style="text-align:right;">

59.71420 \[%\]

</td>

<td style="text-align:right;">

1.401848 \[kPa\]

</td>

<td style="text-align:right;">

2.347596 \[kPa\]

</td>

<td style="text-align:right;">

0.9683138 \[kPa\]

</td>

<td style="text-align:right;">

\-41.73263 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.96413 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.677017 \[W/m^2\]

</td>

<td style="text-align:right;">

179.2961 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187471 \[1\]

</td>

<td style="text-align:right;">

0.04700803 \[1\]

</td>

<td style="text-align:right;">

3.500975 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54818 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.195 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067805 \[s\]

</td>

<td style="text-align:right;">

224.19948 \[µmol/mol\]

</td>

<td style="text-align:right;">

243.14123 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86233 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74252 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0136 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9265 \[kPa\]

</td>

<td style="text-align:right;">

0.1999851 \[kPa\]

</td>

<td style="text-align:right;">

20.00676 \[°C\]

</td>

<td style="text-align:right;">

20.16135 \[°C\]

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

10005.590 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.56735 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.977 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699372 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.198610 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10294.25 \[1\]

</td>

<td style="text-align:right;">

13121.83 \[1\]

</td>

<td style="text-align:right;">

33.72155 \[°C\]

</td>

<td style="text-align:right;">

35.25000 \[°C\]

</td>

<td style="text-align:right;">

34.89700 \[°C\]

</td>

<td style="text-align:right;">

33.64100 \[°C\]

</td>

<td style="text-align:right;">

33.62500 \[°C\]

</td>

<td style="text-align:right;">

1459.484 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067838 \[s\]

</td>

<td style="text-align:right;">

2.206469 \[1\]

</td>

<td style="text-align:right;">

0.278632470 \[1/min\]

</td>

<td style="text-align:right;">

126.1504272 \[1/min\]

</td>

<td style="text-align:right;">

10299.44 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.942836585 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.024566e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.18599166 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.185091 \[1\]

</td>

<td style="text-align:right;">

0.4651331914 \[1/min\]

</td>

<td style="text-align:right;">

0.1737737 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1200417 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.853561e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0078006829 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85547 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.917 \[µmol/s\]

</td>

<td style="text-align:right;">

578.009 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1262 \[°C\]

</td>

<td style="text-align:right;">

16.0920 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8797 \[°C\]

</td>

<td style="text-align:right;">

14.46010 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1264 \[°C\]

</td>

<td style="text-align:right;">

270.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8037 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

85

</td>

<td style="text-align:right;">

1557067817 \[s\]

</td>

<td style="text-align:left;">

168

</td>

<td style="text-align:left;">

2019-05-05 07:50:17

</td>

<td style="text-align:left;">

07:50:17

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067807 \[s\]

</td>

<td style="text-align:right;">

0.0009440141 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.5747657 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

227.47524 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-30.8367681 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.11841717 \[Pa\]

</td>

<td style="text-align:right;">

23.003795 \[Pa\]

</td>

<td style="text-align:right;">

0.09905159 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276150 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09671776 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06065371 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6688 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50412 \[°C\]

</td>

<td style="text-align:right;">

20.16200 \[°C\]

</td>

<td style="text-align:right;">

2.370258 \[kPa\]

</td>

<td style="text-align:right;">

59.70620 \[%\]

</td>

<td style="text-align:right;">

1.401619 \[kPa\]

</td>

<td style="text-align:right;">

2.347527 \[kPa\]

</td>

<td style="text-align:right;">

0.9686388 \[kPa\]

</td>

<td style="text-align:right;">

\-41.63102 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.10781 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.689267 \[W/m^2\]

</td>

<td style="text-align:right;">

179.2407 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189148 \[1\]

</td>

<td style="text-align:right;">

0.04702686 \[1\]

</td>

<td style="text-align:right;">

3.502082 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54845 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.970 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.190 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067807 \[s\]

</td>

<td style="text-align:right;">

227.47526 \[µmol/mol\]

</td>

<td style="text-align:right;">

246.42206 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86005 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74296 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0158 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9266 \[kPa\]

</td>

<td style="text-align:right;">

0.1999758 \[kPa\]

</td>

<td style="text-align:right;">

20.00629 \[°C\]

</td>

<td style="text-align:right;">

20.16200 \[°C\]

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

10009.584 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.72968 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.970 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730070 \[1\]

</td>

<td style="text-align:right;">

0.02699321 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.212677 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10298.63 \[1\]

</td>

<td style="text-align:right;">

13121.77 \[1\]

</td>

<td style="text-align:right;">

33.72765 \[°C\]

</td>

<td style="text-align:right;">

35.25200 \[°C\]

</td>

<td style="text-align:right;">

34.90300 \[°C\]

</td>

<td style="text-align:right;">

33.64700 \[°C\]

</td>

<td style="text-align:right;">

33.62700 \[°C\]

</td>

<td style="text-align:right;">

1459.478 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49194 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067840 \[s\]

</td>

<td style="text-align:right;">

2.212350 \[1\]

</td>

<td style="text-align:right;">

0.340297432 \[1/min\]

</td>

<td style="text-align:right;">

148.3965812 \[1/min\]

</td>

<td style="text-align:right;">

10304.55 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-18.942758537 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.085882e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.19022505 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.201915 \[1\]

</td>

<td style="text-align:right;">

0.1502730618 \[1/min\]

</td>

<td style="text-align:right;">

0.1708261 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1172956 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.486307e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0074089169 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85453 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.799 \[µmol/s\]

</td>

<td style="text-align:right;">

578.229 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1241 \[°C\]

</td>

<td style="text-align:right;">

16.0920 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

14.59840 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1224 \[°C\]

</td>

<td style="text-align:right;">

275.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8113 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

86

</td>

<td style="text-align:right;">

1557067819 \[s\]

</td>

<td style="text-align:left;">

170

</td>

<td style="text-align:left;">

2019-05-05 07:50:19

</td>

<td style="text-align:left;">

07:50:19

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067809 \[s\]

</td>

<td style="text-align:right;">

0.0009419001 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.6304781 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

230.73447 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-29.1497450 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.94781772 \[Pa\]

</td>

<td style="text-align:right;">

23.333417 \[Pa\]

</td>

<td style="text-align:right;">

0.09881030 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276853 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09648838 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06050931 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6707 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50381 \[°C\]

</td>

<td style="text-align:right;">

20.16145 \[°C\]

</td>

<td style="text-align:right;">

2.370177 \[kPa\]

</td>

<td style="text-align:right;">

59.69938 \[%\]

</td>

<td style="text-align:right;">

1.401408 \[kPa\]

</td>

<td style="text-align:right;">

2.347441 \[kPa\]

</td>

<td style="text-align:right;">

0.9687698 \[kPa\]

</td>

<td style="text-align:right;">

\-41.53780 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.11886 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.689712 \[W/m^2\]

</td>

<td style="text-align:right;">

179.3243 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191060 \[1\]

</td>

<td style="text-align:right;">

0.04704832 \[1\]

</td>

<td style="text-align:right;">

3.503344 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54757 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.199 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067809 \[s\]

</td>

<td style="text-align:right;">

230.73448 \[µmol/mol\]

</td>

<td style="text-align:right;">

249.75129 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85794 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74335 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0148 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.1999649 \[kPa\]

</td>

<td style="text-align:right;">

20.00570 \[°C\]

</td>

<td style="text-align:right;">

20.16145 \[°C\]

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

10014.140 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.98408 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.982 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699372 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.231606 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10302.93 \[1\]

</td>

<td style="text-align:right;">

13121.87 \[1\]

</td>

<td style="text-align:right;">

33.73171 \[°C\]

</td>

<td style="text-align:right;">

35.25400 \[°C\]

</td>

<td style="text-align:right;">

34.90900 \[°C\]

</td>

<td style="text-align:right;">

33.65300 \[°C\]

</td>

<td style="text-align:right;">

33.63300 \[°C\]

</td>

<td style="text-align:right;">

1459.489 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067842 \[s\]

</td>

<td style="text-align:right;">

2.198250 \[1\]

</td>

<td style="text-align:right;">

0.274841023 \[1/min\]

</td>

<td style="text-align:right;">

127.7777779 \[1/min\]

</td>

<td style="text-align:right;">

10308.63 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.008278049 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.350224e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.23174173 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.224135 \[1\]

</td>

<td style="text-align:right;">

0.1214528428 \[1/min\]

</td>

<td style="text-align:right;">

0.1701839 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1147712 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.398669e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0073202726 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85492 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.829 \[µmol/s\]

</td>

<td style="text-align:right;">

578.175 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1227 \[°C\]

</td>

<td style="text-align:right;">

16.0918 \[°C\]

</td>

<td style="text-align:right;">

30.0003 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

14.75260 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1224 \[°C\]

</td>

<td style="text-align:right;">

280.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8181 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.182 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

87

</td>

<td style="text-align:right;">

1557067821 \[s\]

</td>

<td style="text-align:left;">

172

</td>

<td style="text-align:left;">

2019-05-05 07:50:21

</td>

<td style="text-align:left;">

07:50:21

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067811 \[s\]

</td>

<td style="text-align:right;">

0.0009398759 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.7112262 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

233.99231 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-27.8433469 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.81570613 \[Pa\]

</td>

<td style="text-align:right;">

23.662872 \[Pa\]

</td>

<td style="text-align:right;">

0.09858487 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.277054 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09627360 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06037414 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6710 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50341 \[°C\]

</td>

<td style="text-align:right;">

20.16056 \[°C\]

</td>

<td style="text-align:right;">

2.370047 \[kPa\]

</td>

<td style="text-align:right;">

59.69411 \[%\]

</td>

<td style="text-align:right;">

1.401201 \[kPa\]

</td>

<td style="text-align:right;">

2.347302 \[kPa\]

</td>

<td style="text-align:right;">

0.9688462 \[kPa\]

</td>

<td style="text-align:right;">

\-41.44853 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.12887 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.690431 \[W/m^2\]

</td>

<td style="text-align:right;">

179.4032 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191609 \[1\]

</td>

<td style="text-align:right;">

0.04705448 \[1\]

</td>

<td style="text-align:right;">

3.503707 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54636 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.201 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067811 \[s\]

</td>

<td style="text-align:right;">

233.99232 \[µmol/mol\]

</td>

<td style="text-align:right;">

253.10913 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85590 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74371 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0150 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.1999702 \[kPa\]

</td>

<td style="text-align:right;">

20.00474 \[°C\]

</td>

<td style="text-align:right;">

20.16056 \[°C\]

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

10015.452 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.15595 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.984 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699372 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203881 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10305.94 \[1\]

</td>

<td style="text-align:right;">

13121.89 \[1\]

</td>

<td style="text-align:right;">

33.73781 \[°C\]

</td>

<td style="text-align:right;">

35.26000 \[°C\]

</td>

<td style="text-align:right;">

34.91500 \[°C\]

</td>

<td style="text-align:right;">

33.65900 \[°C\]

</td>

<td style="text-align:right;">

33.63900 \[°C\]

</td>

<td style="text-align:right;">

1459.491 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067844 \[s\]

</td>

<td style="text-align:right;">

2.204865 \[1\]

</td>

<td style="text-align:right;">

\-0.567401707 \[1/min\]

</td>

<td style="text-align:right;">

114.4991452 \[1/min\]

</td>

<td style="text-align:right;">

10311.91 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.107680488 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.918219e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.29403402 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199126 \[1\]

</td>

<td style="text-align:right;">

\-0.2207355453 \[1/min\]

</td>

<td style="text-align:right;">

0.1746455 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1123924 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.434355e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0073544693 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.021 \[µmol/s\]

</td>

<td style="text-align:right;">

578.103 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1212 \[°C\]

</td>

<td style="text-align:right;">

16.0911 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

14.87500 \[%\]

</td>

<td style="text-align:right;">

10.307700 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1224 \[°C\]

</td>

<td style="text-align:right;">

280.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8260 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

88

</td>

<td style="text-align:right;">

1557067823 \[s\]

</td>

<td style="text-align:left;">

174

</td>

<td style="text-align:left;">

2019-05-05 07:50:23

</td>

<td style="text-align:left;">

07:50:23

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067813 \[s\]

</td>

<td style="text-align:right;">

0.0009377733 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.7913330 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

237.25682 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-26.5367355 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.68357228 \[Pa\]

</td>

<td style="text-align:right;">

23.992997 \[Pa\]

</td>

<td style="text-align:right;">

0.09835650 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276908 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09605564 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06023702 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6714 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50298 \[°C\]

</td>

<td style="text-align:right;">

20.15930 \[°C\]

</td>

<td style="text-align:right;">

2.369863 \[kPa\]

</td>

<td style="text-align:right;">

59.68954 \[%\]

</td>

<td style="text-align:right;">

1.400989 \[kPa\]

</td>

<td style="text-align:right;">

2.347126 \[kPa\]

</td>

<td style="text-align:right;">

0.9688739 \[kPa\]

</td>

<td style="text-align:right;">

\-41.35580 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.12170 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.689885 \[W/m^2\]

</td>

<td style="text-align:right;">

179.5040 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04191211 \[1\]

</td>

<td style="text-align:right;">

0.04705002 \[1\]

</td>

<td style="text-align:right;">

3.503444 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54485 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.203 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067813 \[s\]

</td>

<td style="text-align:right;">

237.25684 \[µmol/mol\]

</td>

<td style="text-align:right;">

256.47277 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85380 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74410 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0171 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9267 \[kPa\]

</td>

<td style="text-align:right;">

0.1999823 \[kPa\]

</td>

<td style="text-align:right;">

20.00353 \[°C\]

</td>

<td style="text-align:right;">

20.15930 \[°C\]

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

10014.504 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.09374 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.986 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699372 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.212926 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10309.99 \[1\]

</td>

<td style="text-align:right;">

13121.91 \[1\]

</td>

<td style="text-align:right;">

33.74187 \[°C\]

</td>

<td style="text-align:right;">

35.26600 \[°C\]

</td>

<td style="text-align:right;">

34.91900 \[°C\]

</td>

<td style="text-align:right;">

33.66500 \[°C\]

</td>

<td style="text-align:right;">

33.64500 \[°C\]

</td>

<td style="text-align:right;">

1459.493 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49290 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067846 \[s\]

</td>

<td style="text-align:right;">

2.196392 \[1\]

</td>

<td style="text-align:right;">

\-0.132211967 \[1/min\]

</td>

<td style="text-align:right;">

111.7401710 \[1/min\]

</td>

<td style="text-align:right;">

10316.58 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.205497561 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.194482e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.31994346 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.200485 \[1\]

</td>

<td style="text-align:right;">

\-0.1598480458 \[1/min\]

</td>

<td style="text-align:right;">

0.1827417 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1099061 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.531171e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0074490415 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.843 \[µmol/s\]

</td>

<td style="text-align:right;">

578.463 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1203 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

15.01090 \[%\]

</td>

<td style="text-align:right;">

10.019100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1976 \[°C\]

</td>

<td style="text-align:right;">

285.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8346 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

89

</td>

<td style="text-align:right;">

1557067825 \[s\]

</td>

<td style="text-align:left;">

176

</td>

<td style="text-align:left;">

2019-05-05 07:50:25

</td>

<td style="text-align:left;">

07:50:25

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067815 \[s\]

</td>

<td style="text-align:right;">

0.0009354466 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.8722936 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

240.52943 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-25.2829612 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.55677551 \[Pa\]

</td>

<td style="text-align:right;">

24.323882 \[Pa\]

</td>

<td style="text-align:right;">

0.09811403 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.276240 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09582370 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.06009114 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6739 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50289 \[°C\]

</td>

<td style="text-align:right;">

20.15731 \[°C\]

</td>

<td style="text-align:right;">

2.369570 \[kPa\]

</td>

<td style="text-align:right;">

59.68458 \[%\]

</td>

<td style="text-align:right;">

1.400761 \[kPa\]

</td>

<td style="text-align:right;">

2.346939 \[kPa\]

</td>

<td style="text-align:right;">

0.9688094 \[kPa\]

</td>

<td style="text-align:right;">

\-41.25320 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.02900 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.682157 \[W/m^2\]

</td>

<td style="text-align:right;">

179.7096 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04189394 \[1\]

</td>

<td style="text-align:right;">

0.04702962 \[1\]

</td>

<td style="text-align:right;">

3.502244 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54426 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.002 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.217 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067815 \[s\]

</td>

<td style="text-align:right;">

240.52945 \[µmol/mol\]

</td>

<td style="text-align:right;">

259.84542 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85158 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74464 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0204 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9264 \[kPa\]

</td>

<td style="text-align:right;">

0.2000068 \[kPa\]

</td>

<td style="text-align:right;">

20.00224 \[°C\]

</td>

<td style="text-align:right;">

20.15731 \[°C\]

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

10010.191 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.09833 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.002 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730071 \[1\]

</td>

<td style="text-align:right;">

0.02699307 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.206403 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10314.85 \[1\]

</td>

<td style="text-align:right;">

13122.05 \[1\]

</td>

<td style="text-align:right;">

33.74594 \[°C\]

</td>

<td style="text-align:right;">

35.27200 \[°C\]

</td>

<td style="text-align:right;">

34.92500 \[°C\]

</td>

<td style="text-align:right;">

33.67100 \[°C\]

</td>

<td style="text-align:right;">

33.65100 \[°C\]

</td>

<td style="text-align:right;">

1459.510 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49194 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067848 \[s\]

</td>

<td style="text-align:right;">

2.191573 \[1\]

</td>

<td style="text-align:right;">

0.074916241 \[1/min\]

</td>

<td style="text-align:right;">

113.9726496 \[1/min\]

</td>

<td style="text-align:right;">

10320.36 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.308721951 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.480001e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.34549938 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.194168 \[1\]

</td>

<td style="text-align:right;">

\-0.0676911601 \[1/min\]

</td>

<td style="text-align:right;">

0.1782320 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1071834 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-7.867652e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0078014535 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.843 \[µmol/s\]

</td>

<td style="text-align:right;">

578.391 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1368 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

15.16300 \[%\]

</td>

<td style="text-align:right;">

10.019100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1976 \[°C\]

</td>

<td style="text-align:right;">

290.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8425 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.181 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

90

</td>

<td style="text-align:right;">

1557067827 \[s\]

</td>

<td style="text-align:left;">

178

</td>

<td style="text-align:left;">

2019-05-05 07:50:27

</td>

<td style="text-align:left;">

07:50:27

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067817 \[s\]

</td>

<td style="text-align:right;">

0.0009328940 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.9296050 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

243.81153 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-23.7171950 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.39842884 \[Pa\]

</td>

<td style="text-align:right;">

24.655724 \[Pa\]

</td>

<td style="text-align:right;">

0.09784153 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275659 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09556319 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05992727 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6742 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50275 \[°C\]

</td>

<td style="text-align:right;">

20.15567 \[°C\]

</td>

<td style="text-align:right;">

2.369330 \[kPa\]

</td>

<td style="text-align:right;">

59.67972 \[%\]

</td>

<td style="text-align:right;">

1.400530 \[kPa\]

</td>

<td style="text-align:right;">

2.346744 \[kPa\]

</td>

<td style="text-align:right;">

0.9687993 \[kPa\]

</td>

<td style="text-align:right;">

\-41.14063 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.98734 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.678877 \[W/m^2\]

</td>

<td style="text-align:right;">

179.8674 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187813 \[1\]

</td>

<td style="text-align:right;">

0.04701187 \[1\]

</td>

<td style="text-align:right;">

3.501201 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54652 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.218 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067817 \[s\]

</td>

<td style="text-align:right;">

243.81155 \[µmol/mol\]

</td>

<td style="text-align:right;">

263.19926 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84934 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74541 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0195 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9262 \[kPa\]

</td>

<td style="text-align:right;">

0.1999981 \[kPa\]

</td>

<td style="text-align:right;">

20.00090 \[°C\]

</td>

<td style="text-align:right;">

20.15567 \[°C\]

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

10006.439 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.20769 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730071 \[1\]

</td>

<td style="text-align:right;">

0.02699307 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.209087 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10319.13 \[1\]

</td>

<td style="text-align:right;">

13122.07 \[1\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

35.27800 \[°C\]

</td>

<td style="text-align:right;">

34.93100 \[°C\]

</td>

<td style="text-align:right;">

33.67700 \[°C\]

</td>

<td style="text-align:right;">

33.65300 \[°C\]

</td>

<td style="text-align:right;">

1459.512 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49194 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067850 \[s\]

</td>

<td style="text-align:right;">

2.209746 \[1\]

</td>

<td style="text-align:right;">

\-0.326427348 \[1/min\]

</td>

<td style="text-align:right;">

109.3299144 \[1/min\]

</td>

<td style="text-align:right;">

10324.34 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.382895122 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.037547e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.37922578 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.204818 \[1\]

</td>

<td style="text-align:right;">

\-0.1313204457 \[1/min\]

</td>

<td style="text-align:right;">

0.1738912 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1042029 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.363854e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0083386421 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.095 \[µmol/s\]

</td>

<td style="text-align:right;">

578.229 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1707 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0003 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

15.28460 \[%\]

</td>

<td style="text-align:right;">

9.731040 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2019 \[°C\]

</td>

<td style="text-align:right;">

290.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8498 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

91

</td>

<td style="text-align:right;">

1557067829 \[s\]

</td>

<td style="text-align:left;">

180

</td>

<td style="text-align:left;">

2019-05-05 07:50:29

</td>

<td style="text-align:left;">

07:50:29

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067819 \[s\]

</td>

<td style="text-align:right;">

0.0009302222 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

15.9781263 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

247.09372 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-22.0920681 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.23408168 \[Pa\]

</td>

<td style="text-align:right;">

24.987591 \[Pa\]

</td>

<td style="text-align:right;">

0.09753978 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275421 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09527506 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05974601 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6729 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50257 \[°C\]

</td>

<td style="text-align:right;">

20.15524 \[°C\]

</td>

<td style="text-align:right;">

2.369267 \[kPa\]

</td>

<td style="text-align:right;">

59.67528 \[%\]

</td>

<td style="text-align:right;">

1.400322 \[kPa\]

</td>

<td style="text-align:right;">

2.346570 \[kPa\]

</td>

<td style="text-align:right;">

0.9689455 \[kPa\]

</td>

<td style="text-align:right;">

\-41.02280 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.08071 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.687297 \[W/m^2\]

</td>

<td style="text-align:right;">

179.8821 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04187164 \[1\]

</td>

<td style="text-align:right;">

0.04700458 \[1\]

</td>

<td style="text-align:right;">

3.500772 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54659 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.211 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067819 \[s\]

</td>

<td style="text-align:right;">

247.09374 \[µmol/mol\]

</td>

<td style="text-align:right;">

266.54258 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84730 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74654 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0189 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9260 \[kPa\]

</td>

<td style="text-align:right;">

0.1999960 \[kPa\]

</td>

<td style="text-align:right;">

19.99970 \[°C\]

</td>

<td style="text-align:right;">

20.15524 \[°C\]

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

10004.907 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.26628 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730076 \[1\]

</td>

<td style="text-align:right;">

0.02699256 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.197294 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10323.14 \[1\]

</td>

<td style="text-align:right;">

13122.00 \[1\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

35.28400 \[°C\]

</td>

<td style="text-align:right;">

34.93700 \[°C\]

</td>

<td style="text-align:right;">

33.67900 \[°C\]

</td>

<td style="text-align:right;">

33.65900 \[°C\]

</td>

<td style="text-align:right;">

1459.505 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067852 \[s\]

</td>

<td style="text-align:right;">

2.202919 \[1\]

</td>

<td style="text-align:right;">

0.057733335 \[1/min\]

</td>

<td style="text-align:right;">

126.1948718 \[1/min\]

</td>

<td style="text-align:right;">

10328.66 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.440965854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.566900e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.40247579 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.198571 \[1\]

</td>

<td style="text-align:right;">

0.0591928070 \[1/min\]

</td>

<td style="text-align:right;">

0.1703023 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.1010617 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-9.015449e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0090259796 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.991 \[µmol/s\]

</td>

<td style="text-align:right;">

578.355 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1937 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8799 \[°C\]

</td>

<td style="text-align:right;">

15.42000 \[%\]

</td>

<td style="text-align:right;">

9.731040 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2019 \[°C\]

</td>

<td style="text-align:right;">

295.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8555 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

92

</td>

<td style="text-align:right;">

1557067831 \[s\]

</td>

<td style="text-align:left;">

182

</td>

<td style="text-align:left;">

2019-05-05 07:50:31

</td>

<td style="text-align:left;">

07:50:31

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067821 \[s\]

</td>

<td style="text-align:right;">

0.0009274034 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.0500038 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

250.36972 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-20.9159139 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.11514026 \[Pa\]

</td>

<td style="text-align:right;">

25.318860 \[Pa\]

</td>

<td style="text-align:right;">

0.09722188 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275028 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09497134 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05955495 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6730 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50279 \[°C\]

</td>

<td style="text-align:right;">

20.15504 \[°C\]

</td>

<td style="text-align:right;">

2.369237 \[kPa\]

</td>

<td style="text-align:right;">

59.67094 \[%\]

</td>

<td style="text-align:right;">

1.400138 \[kPa\]

</td>

<td style="text-align:right;">

2.346432 \[kPa\]

</td>

<td style="text-align:right;">

0.9690990 \[kPa\]

</td>

<td style="text-align:right;">

\-40.89849 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.16802 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.695300 \[W/m^2\]

</td>

<td style="text-align:right;">

179.9112 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186095 \[1\]

</td>

<td style="text-align:right;">

0.04699259 \[1\]

</td>

<td style="text-align:right;">

3.500067 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54668 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.997 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.212 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067821 \[s\]

</td>

<td style="text-align:right;">

250.36974 \[µmol/mol\]

</td>

<td style="text-align:right;">

269.90755 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84550 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.74807 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0213 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9259 \[kPa\]

</td>

<td style="text-align:right;">

0.2000123 \[kPa\]

</td>

<td style="text-align:right;">

19.99875 \[°C\]

</td>

<td style="text-align:right;">

20.15504 \[°C\]

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

10002.364 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

88.18719 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.997 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730076 \[1\]

</td>

<td style="text-align:right;">

0.02699256 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.177777 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10327.62 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

35.29000 \[°C\]

</td>

<td style="text-align:right;">

34.93700 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

33.66500 \[°C\]

</td>

<td style="text-align:right;">

1459.506 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067854 \[s\]

</td>

<td style="text-align:right;">

2.189638 \[1\]

</td>

<td style="text-align:right;">

\-0.116758970 \[1/min\]

</td>

<td style="text-align:right;">

130.6051284 \[1/min\]

</td>

<td style="text-align:right;">

10332.88 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.530365854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.809523e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.41745600 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.187582 \[1\]

</td>

<td style="text-align:right;">

\-0.1456678850 \[1/min\]

</td>

<td style="text-align:right;">

0.1818594 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0977524 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.018643e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0102060804 \[mmol/mol\]

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

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.888 \[µmol/s\]

</td>

<td style="text-align:right;">

578.235 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2027 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8804 \[°C\]

</td>

<td style="text-align:right;">

15.57210 \[%\]

</td>

<td style="text-align:right;">

9.731040 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2019 \[°C\]

</td>

<td style="text-align:right;">

300.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8615 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

93

</td>

<td style="text-align:right;">

1557067834 \[s\]

</td>

<td style="text-align:left;">

184.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:33

</td>

<td style="text-align:left;">

07:50:33

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067823 \[s\]

</td>

<td style="text-align:right;">

0.0009227005 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.1466269 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

254.73379 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-19.6055771 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.98262760 \[Pa\]

</td>

<td style="text-align:right;">

25.760131 \[Pa\]

</td>

<td style="text-align:right;">

0.09671692 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275162 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09448953 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05925181 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6746 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50323 \[°C\]

</td>

<td style="text-align:right;">

20.15347 \[°C\]

</td>

<td style="text-align:right;">

2.369008 \[kPa\]

</td>

<td style="text-align:right;">

59.66493 \[%\]

</td>

<td style="text-align:right;">

1.399906 \[kPa\]

</td>

<td style="text-align:right;">

2.346280 \[kPa\]

</td>

<td style="text-align:right;">

0.9691014 \[kPa\]

</td>

<td style="text-align:right;">

\-40.69109 \[W/m^2\]

</td>

<td style="text-align:right;">

\-19.10545 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.689644 \[W/m^2\]

</td>

<td style="text-align:right;">

180.1885 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186460 \[1\]

</td>

<td style="text-align:right;">

0.04699668 \[1\]

</td>

<td style="text-align:right;">

3.500307 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54619 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.221 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067823 \[s\]

</td>

<td style="text-align:right;">

254.73381 \[µmol/mol\]

</td>

<td style="text-align:right;">

274.39100 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84323 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.75136 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0206 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9257 \[kPa\]

</td>

<td style="text-align:right;">

0.1999852 \[kPa\]

</td>

<td style="text-align:right;">

19.99771 \[°C\]

</td>

<td style="text-align:right;">

20.15347 \[°C\]

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

10003.250 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.80468 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.007 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730077 \[1\]

</td>

<td style="text-align:right;">

0.02699242 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.176274 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10333.18 \[1\]

</td>

<td style="text-align:right;">

13122.10 \[1\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

35.29800 \[°C\]

</td>

<td style="text-align:right;">

34.94106 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

33.67300 \[°C\]

</td>

<td style="text-align:right;">

1459.516 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067856 \[s\]

</td>

<td style="text-align:right;">

2.181200 \[1\]

</td>

<td style="text-align:right;">

0.212588023 \[1/min\]

</td>

<td style="text-align:right;">

157.5623931 \[1/min\]

</td>

<td style="text-align:right;">

10337.89 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.644492683 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.605181e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.40442465 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.197815 \[1\]

</td>

<td style="text-align:right;">

\-0.5062332324 \[1/min\]

</td>

<td style="text-align:right;">

0.2067124 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0926390 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.255003e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0126668272 \[mmol/mol\]

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

1.85549 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.006 \[µmol/s\]

</td>

<td style="text-align:right;">

578.374 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2087 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9154 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

15.71300 \[%\]

</td>

<td style="text-align:right;">

9.447870 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2055 \[°C\]

</td>

<td style="text-align:right;">

300.83 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8708 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

94

</td>

<td style="text-align:right;">

1557067836 \[s\]

</td>

<td style="text-align:left;">

186.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:35

</td>

<td style="text-align:left;">

07:50:35

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067825 \[s\]

</td>

<td style="text-align:right;">

0.0009187657 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.2400081 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

257.99237 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-19.0620397 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.92765775 \[Pa\]

</td>

<td style="text-align:right;">

26.089600 \[Pa\]

</td>

<td style="text-align:right;">

0.09631900 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275189 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09410971 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05901284 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6749 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50371 \[°C\]

</td>

<td style="text-align:right;">

20.15090 \[°C\]

</td>

<td style="text-align:right;">

2.368631 \[kPa\]

</td>

<td style="text-align:right;">

59.66197 \[%\]

</td>

<td style="text-align:right;">

1.399767 \[kPa\]

</td>

<td style="text-align:right;">

2.346163 \[kPa\]

</td>

<td style="text-align:right;">

0.9688636 \[kPa\]

</td>

<td style="text-align:right;">

\-40.51757 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.88885 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.670439 \[W/m^2\]

</td>

<td style="text-align:right;">

180.5980 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186534 \[1\]

</td>

<td style="text-align:right;">

0.04699751 \[1\]

</td>

<td style="text-align:right;">

3.500356 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54625 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067825 \[s\]

</td>

<td style="text-align:right;">

257.99239 \[µmol/mol\]

</td>

<td style="text-align:right;">

277.76390 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84188 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.75468 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0236 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9255 \[kPa\]

</td>

<td style="text-align:right;">

0.1999877 \[kPa\]

</td>

<td style="text-align:right;">

19.99690 \[°C\]

</td>

<td style="text-align:right;">

20.15090 \[°C\]

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

10003.451 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.56957 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.009 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730077 \[1\]

</td>

<td style="text-align:right;">

0.02699242 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.171997 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10338.42 \[1\]

</td>

<td style="text-align:right;">

13122.12 \[1\]

</td>

<td style="text-align:right;">

33.75200 \[°C\]

</td>

<td style="text-align:right;">

35.30400 \[°C\]

</td>

<td style="text-align:right;">

34.94513 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

33.67900 \[°C\]

</td>

<td style="text-align:right;">

1459.518 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067858 \[s\]

</td>

<td style="text-align:right;">

2.199931 \[1\]

</td>

<td style="text-align:right;">

0.171254694 \[1/min\]

</td>

<td style="text-align:right;">

174.1059827 \[1/min\]

</td>

<td style="text-align:right;">

10345.32 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.753965854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.801530e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.33356370 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199724 \[1\]

</td>

<td style="text-align:right;">

0.1458258452 \[1/min\]

</td>

<td style="text-align:right;">

0.2061216 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0879515 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.449040e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0145832029 \[mmol/mol\]

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

1.85548 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.036 \[µmol/s\]

</td>

<td style="text-align:right;">

578.484 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2113 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9155 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

15.85390 \[%\]

</td>

<td style="text-align:right;">

9.447870 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2055 \[°C\]

</td>

<td style="text-align:right;">

305.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8735 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

95

</td>

<td style="text-align:right;">

1557067838 \[s\]

</td>

<td style="text-align:left;">

188.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:37

</td>

<td style="text-align:left;">

07:50:37

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067827 \[s\]

</td>

<td style="text-align:right;">

0.0009148547 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.3320963 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

261.25895 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-18.4734990 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.86813823 \[Pa\]

</td>

<td style="text-align:right;">

26.419891 \[Pa\]

</td>

<td style="text-align:right;">

0.09593444 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274923 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09374229 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05878171 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6752 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50434 \[°C\]

</td>

<td style="text-align:right;">

20.14791 \[°C\]

</td>

<td style="text-align:right;">

2.368193 \[kPa\]

</td>

<td style="text-align:right;">

59.66095 \[%\]

</td>

<td style="text-align:right;">

1.399671 \[kPa\]

</td>

<td style="text-align:right;">

2.346043 \[kPa\]

</td>

<td style="text-align:right;">

0.9685216 \[kPa\]

</td>

<td style="text-align:right;">

\-40.34509 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.62196 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.646997 \[W/m^2\]

</td>

<td style="text-align:right;">

181.0611 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185809 \[1\]

</td>

<td style="text-align:right;">

0.04698938 \[1\]

</td>

<td style="text-align:right;">

3.499878 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54658 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.223 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067827 \[s\]

</td>

<td style="text-align:right;">

261.25897 \[µmol/mol\]

</td>

<td style="text-align:right;">

281.14332 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84096 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.75838 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0246 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9253 \[kPa\]

</td>

<td style="text-align:right;">

0.1999830 \[kPa\]

</td>

<td style="text-align:right;">

19.99607 \[°C\]

</td>

<td style="text-align:right;">

20.14791 \[°C\]

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

10001.735 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.41031 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730077 \[1\]

</td>

<td style="text-align:right;">

0.02699242 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.178006 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10343.35 \[1\]

</td>

<td style="text-align:right;">

13122.13 \[1\]

</td>

<td style="text-align:right;">

33.75200 \[°C\]

</td>

<td style="text-align:right;">

35.30800 \[°C\]

</td>

<td style="text-align:right;">

34.94919 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

1459.519 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067860 \[s\]

</td>

<td style="text-align:right;">

2.223904 \[1\]

</td>

<td style="text-align:right;">

0.331900851 \[1/min\]

</td>

<td style="text-align:right;">

180.1230770 \[1/min\]

</td>

<td style="text-align:right;">

10350.61 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.871951220 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.748900e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.19535448 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.205203 \[1\]

</td>

<td style="text-align:right;">

0.2095811369 \[1/min\]

</td>

<td style="text-align:right;">

0.1993485 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0832932 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.584548e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0157666540 \[mmol/mol\]

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

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85447 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85342 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.778 \[µmol/s\]

</td>

<td style="text-align:right;">

578.610 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2130 \[°C\]

</td>

<td style="text-align:right;">

16.0905 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9162 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

16.01210 \[%\]

</td>

<td style="text-align:right;">

9.447870 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2086 \[°C\]

</td>

<td style="text-align:right;">

310.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8774 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

96

</td>

<td style="text-align:right;">

1557067840 \[s\]

</td>

<td style="text-align:left;">

190.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:39

</td>

<td style="text-align:left;">

07:50:39

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067829 \[s\]

</td>

<td style="text-align:right;">

0.0009108976 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.3745644 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

264.53630 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-17.1246462 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.73173182 \[Pa\]

</td>

<td style="text-align:right;">

26.751264 \[Pa\]

</td>

<td style="text-align:right;">

0.09552548 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274466 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09335132 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05853580 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6785 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50556 \[°C\]

</td>

<td style="text-align:right;">

20.14656 \[°C\]

</td>

<td style="text-align:right;">

2.367996 \[kPa\]

</td>

<td style="text-align:right;">

59.66043 \[%\]

</td>

<td style="text-align:right;">

1.399625 \[kPa\]

</td>

<td style="text-align:right;">

2.345986 \[kPa\]

</td>

<td style="text-align:right;">

0.9683705 \[kPa\]

</td>

<td style="text-align:right;">

\-40.17058 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.50114 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.636625 \[W/m^2\]

</td>

<td style="text-align:right;">

181.3701 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184569 \[1\]

</td>

<td style="text-align:right;">

0.04697545 \[1\]

</td>

<td style="text-align:right;">

3.499059 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54805 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.030 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.240 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067829 \[s\]

</td>

<td style="text-align:right;">

264.53632 \[µmol/mol\]

</td>

<td style="text-align:right;">

284.47406 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84053 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.76263 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0224 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9251 \[kPa\]

</td>

<td style="text-align:right;">

0.1999860 \[kPa\]

</td>

<td style="text-align:right;">

19.99568 \[°C\]

</td>

<td style="text-align:right;">

20.14656 \[°C\]

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

9998.790 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.21237 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.030 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730066 \[1\]

</td>

<td style="text-align:right;">

0.02699357 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.163094 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10348.80 \[1\]

</td>

<td style="text-align:right;">

13122.29 \[1\]

</td>

<td style="text-align:right;">

33.75400 \[°C\]

</td>

<td style="text-align:right;">

35.31200 \[°C\]

</td>

<td style="text-align:right;">

34.95529 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

1459.537 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067862 \[s\]

</td>

<td style="text-align:right;">

2.219619 \[1\]

</td>

<td style="text-align:right;">

0.337172647 \[1/min\]

</td>

<td style="text-align:right;">

195.6000000 \[1/min\]

</td>

<td style="text-align:right;">

10355.81 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.933246341 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.207039e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.13577869 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.199888 \[1\]

</td>

<td style="text-align:right;">

0.5011223416 \[1/min\]

</td>

<td style="text-align:right;">

0.2076789 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0786066 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.644010e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0162513979 \[mmol/mol\]

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

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.904 \[µmol/s\]

</td>

<td style="text-align:right;">

578.429 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2134 \[°C\]

</td>

<td style="text-align:right;">

16.0901 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

16.11150 \[%\]

</td>

<td style="text-align:right;">

9.174020 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2086 \[°C\]

</td>

<td style="text-align:right;">

310.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8808 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

97

</td>

<td style="text-align:right;">

1557067842 \[s\]

</td>

<td style="text-align:left;">

192.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:41

</td>

<td style="text-align:left;">

07:50:41

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067831 \[s\]

</td>

<td style="text-align:right;">

0.0009069802 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.4127167 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

267.81298 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-15.7651281 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.59424826 \[Pa\]

</td>

<td style="text-align:right;">

27.082582 \[Pa\]

</td>

<td style="text-align:right;">

0.09510023 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274518 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09294520 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05828030 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6787 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50707 \[°C\]

</td>

<td style="text-align:right;">

20.14688 \[°C\]

</td>

<td style="text-align:right;">

2.368042 \[kPa\]

</td>

<td style="text-align:right;">

59.65949 \[%\]

</td>

<td style="text-align:right;">

1.399625 \[kPa\]

</td>

<td style="text-align:right;">

2.346022 \[kPa\]

</td>

<td style="text-align:right;">

0.9684175 \[kPa\]

</td>

<td style="text-align:right;">

\-39.99783 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.50986 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.637365 \[W/m^2\]

</td>

<td style="text-align:right;">

181.5337 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184708 \[1\]

</td>

<td style="text-align:right;">

0.04697701 \[1\]

</td>

<td style="text-align:right;">

3.499150 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54768 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.242 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067831 \[s\]

</td>

<td style="text-align:right;">

267.81300 \[µmol/mol\]

</td>

<td style="text-align:right;">

287.79897 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84055 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.76727 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0194 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9250 \[kPa\]

</td>

<td style="text-align:right;">

0.1999797 \[kPa\]

</td>

<td style="text-align:right;">

19.99593 \[°C\]

</td>

<td style="text-align:right;">

20.14688 \[°C\]

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

9999.135 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.06768 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730066 \[1\]

</td>

<td style="text-align:right;">

0.02699357 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.176748 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10354.54 \[1\]

</td>

<td style="text-align:right;">

13122.31 \[1\]

</td>

<td style="text-align:right;">

33.76000 \[°C\]

</td>

<td style="text-align:right;">

35.31200 \[°C\]

</td>

<td style="text-align:right;">

34.96139 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

1459.539 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067864 \[s\]

</td>

<td style="text-align:right;">

2.213446 \[1\]

</td>

<td style="text-align:right;">

0.292211962 \[1/min\]

</td>

<td style="text-align:right;">

193.4940168 \[1/min\]

</td>

<td style="text-align:right;">

10362.88 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-19.977856098 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.236321e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.14117925 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.223326 \[1\]

</td>

<td style="text-align:right;">

0.0958143320 \[1/min\]

</td>

<td style="text-align:right;">

0.1962918 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0739034 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.611447e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0159729086 \[mmol/mol\]

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

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85777 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.889 \[µmol/s\]

</td>

<td style="text-align:right;">

578.429 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2137 \[°C\]

</td>

<td style="text-align:right;">

16.0894 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

16.23530 \[%\]

</td>

<td style="text-align:right;">

9.174020 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2086 \[°C\]

</td>

<td style="text-align:right;">

315.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8847 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

98

</td>

<td style="text-align:right;">

1557067844 \[s\]

</td>

<td style="text-align:left;">

194.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:43

</td>

<td style="text-align:left;">

07:50:43

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067833 \[s\]

</td>

<td style="text-align:right;">

0.0009030814 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.4500049 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

271.08434 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-14.4138751 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.45760205 \[Pa\]

</td>

<td style="text-align:right;">

27.413383 \[Pa\]

</td>

<td style="text-align:right;">

0.09467464 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274526 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09253862 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05802454 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6790 \[W/m^2\]

</td>

<td style="text-align:right;">

21.50928 \[°C\]

</td>

<td style="text-align:right;">

20.14772 \[°C\]

</td>

<td style="text-align:right;">

2.368166 \[kPa\]

</td>

<td style="text-align:right;">

59.65826 \[%\]

</td>

<td style="text-align:right;">

1.399676 \[kPa\]

</td>

<td style="text-align:right;">

2.346156 \[kPa\]

</td>

<td style="text-align:right;">

0.9684897 \[kPa\]

</td>

<td style="text-align:right;">

\-39.82589 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.50004 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.636505 \[W/m^2\]

</td>

<td style="text-align:right;">

181.7166 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184731 \[1\]

</td>

<td style="text-align:right;">

0.04697727 \[1\]

</td>

<td style="text-align:right;">

3.499165 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54444 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.034 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.243 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067833 \[s\]

</td>

<td style="text-align:right;">

271.08435 \[µmol/mol\]

</td>

<td style="text-align:right;">

291.11732 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84106 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.77240 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0203 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9249 \[kPa\]

</td>

<td style="text-align:right;">

0.1999902 \[kPa\]

</td>

<td style="text-align:right;">

19.99685 \[°C\]

</td>

<td style="text-align:right;">

20.14772 \[°C\]

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

9999.195 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.99032 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.034 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730066 \[1\]

</td>

<td style="text-align:right;">

0.02699357 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.165439 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10360.26 \[1\]

</td>

<td style="text-align:right;">

13122.32 \[1\]

</td>

<td style="text-align:right;">

33.76600 \[°C\]

</td>

<td style="text-align:right;">

35.31200 \[°C\]

</td>

<td style="text-align:right;">

34.96748 \[°C\]

</td>

<td style="text-align:right;">

33.69310 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

1459.541 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067866 \[s\]

</td>

<td style="text-align:right;">

2.215650 \[1\]

</td>

<td style="text-align:right;">

0.167675209 \[1/min\]

</td>

<td style="text-align:right;">

190.4273505 \[1/min\]

</td>

<td style="text-align:right;">

10368.44 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.029748780 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.224657e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.14028681 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.213015 \[1\]

</td>

<td style="text-align:right;">

\-0.0496920301 \[1/min\]

</td>

<td style="text-align:right;">

0.1862328 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0692602 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.516109e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0151523709 \[mmol/mol\]

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

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85335 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.904 \[µmol/s\]

</td>

<td style="text-align:right;">

578.429 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2137 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0002 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8814 \[°C\]

</td>

<td style="text-align:right;">

16.40290 \[%\]

</td>

<td style="text-align:right;">

9.174020 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2057 \[°C\]

</td>

<td style="text-align:right;">

320.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8885 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

99

</td>

<td style="text-align:right;">

1557067846 \[s\]

</td>

<td style="text-align:left;">

196.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:45

</td>

<td style="text-align:left;">

07:50:45

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067835 \[s\]

</td>

<td style="text-align:right;">

0.0008991372 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.4506005 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

274.34856 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-12.4559197 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.25960555 \[Pa\]

</td>

<td style="text-align:right;">

27.743513 \[Pa\]

</td>

<td style="text-align:right;">

0.09424928 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274308 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09213199 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05776876 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6754 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51191 \[°C\]

</td>

<td style="text-align:right;">

20.14867 \[°C\]

</td>

<td style="text-align:right;">

2.368304 \[kPa\]

</td>

<td style="text-align:right;">

59.65856 \[%\]

</td>

<td style="text-align:right;">

1.399788 \[kPa\]

</td>

<td style="text-align:right;">

2.346333 \[kPa\]

</td>

<td style="text-align:right;">

0.9685158 \[kPa\]

</td>

<td style="text-align:right;">

\-39.65195 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.46504 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.633584 \[W/m^2\]

</td>

<td style="text-align:right;">

181.9249 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184137 \[1\]

</td>

<td style="text-align:right;">

0.04697060 \[1\]

</td>

<td style="text-align:right;">

3.498773 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54316 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067835 \[s\]

</td>

<td style="text-align:right;">

274.34858 \[µmol/mol\]

</td>

<td style="text-align:right;">

294.38452 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84215 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.77816 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0199 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9251 \[kPa\]

</td>

<td style="text-align:right;">

0.1999896 \[kPa\]

</td>

<td style="text-align:right;">

19.99807 \[°C\]

</td>

<td style="text-align:right;">

20.14867 \[°C\]

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

9997.764 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.87580 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699371 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.168890 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10366.04 \[1\]

</td>

<td style="text-align:right;">

13122.12 \[1\]

</td>

<td style="text-align:right;">

33.77200 \[°C\]

</td>

<td style="text-align:right;">

35.31606 \[°C\]

</td>

<td style="text-align:right;">

34.97358 \[°C\]

</td>

<td style="text-align:right;">

33.69716 \[°C\]

</td>

<td style="text-align:right;">

33.68300 \[°C\]

</td>

<td style="text-align:right;">

1459.518 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067868 \[s\]

</td>

<td style="text-align:right;">

2.226969 \[1\]

</td>

<td style="text-align:right;">

0.210591451 \[1/min\]

</td>

<td style="text-align:right;">

188.2871795 \[1/min\]

</td>

<td style="text-align:right;">

10374.39 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.037375610 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.869603e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.13712362 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.225832 \[1\]

</td>

<td style="text-align:right;">

0.0932599953 \[1/min\]

</td>

<td style="text-align:right;">

0.1952612 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0645410 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.427180e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0143385127 \[mmol/mol\]

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

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.111 \[µmol/s\]

</td>

<td style="text-align:right;">

578.420 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2120 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8821 \[°C\]

</td>

<td style="text-align:right;">

16.50970 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.2057 \[°C\]

</td>

<td style="text-align:right;">

320.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8923 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.821 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

100

</td>

<td style="text-align:right;">

1557067848 \[s\]

</td>

<td style="text-align:left;">

198.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:47

</td>

<td style="text-align:left;">

07:50:47

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067837 \[s\]

</td>

<td style="text-align:right;">

0.0008953509 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.4686527 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

277.59734 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-10.7336587 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.08544353 \[Pa\]

</td>

<td style="text-align:right;">

28.072090 \[Pa\]

</td>

<td style="text-align:right;">

0.09385491 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273993 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09175480 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05753152 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6759 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51466 \[°C\]

</td>

<td style="text-align:right;">

20.14899 \[°C\]

</td>

<td style="text-align:right;">

2.368352 \[kPa\]

</td>

<td style="text-align:right;">

59.66057 \[%\]

</td>

<td style="text-align:right;">

1.399949 \[kPa\]

</td>

<td style="text-align:right;">

2.346524 \[kPa\]

</td>

<td style="text-align:right;">

0.9684024 \[kPa\]

</td>

<td style="text-align:right;">

\-39.48497 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.34148 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.622890 \[W/m^2\]

</td>

<td style="text-align:right;">

182.2265 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183283 \[1\]

</td>

<td style="text-align:right;">

0.04696102 \[1\]

</td>

<td style="text-align:right;">

3.498209 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54644 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.014 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.226 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067837 \[s\]

</td>

<td style="text-align:right;">

277.59735 \[µmol/mol\]

</td>

<td style="text-align:right;">

297.65723 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84372 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.78422 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0192 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999877 \[kPa\]

</td>

<td style="text-align:right;">

19.99938 \[°C\]

</td>

<td style="text-align:right;">

20.14899 \[°C\]

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

9995.707 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.81747 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.014 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699371 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.146910 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10372.34 \[1\]

</td>

<td style="text-align:right;">

13122.14 \[1\]

</td>

<td style="text-align:right;">

33.77800 \[°C\]

</td>

<td style="text-align:right;">

35.31606 \[°C\]

</td>

<td style="text-align:right;">

34.97968 \[°C\]

</td>

<td style="text-align:right;">

33.70326 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

1459.521 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067870 \[s\]

</td>

<td style="text-align:right;">

2.211327 \[1\]

</td>

<td style="text-align:right;">

\-0.915162397 \[1/min\]

</td>

<td style="text-align:right;">

187.3811964 \[1/min\]

</td>

<td style="text-align:right;">

10382.62 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.053687805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.602536e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.13580321 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.202585 \[1\]

</td>

<td style="text-align:right;">

\-0.2256621703 \[1/min\]

</td>

<td style="text-align:right;">

0.2113744 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0599644 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.310349e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0132385874 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.022 \[µmol/s\]

</td>

<td style="text-align:right;">

578.646 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2096 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

16.63280 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1992 \[°C\]

</td>

<td style="text-align:right;">

325.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8912 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.822 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

101

</td>

<td style="text-align:right;">

1557067850 \[s\]

</td>

<td style="text-align:left;">

200.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:49

</td>

<td style="text-align:left;">

07:50:49

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067839 \[s\]

</td>

<td style="text-align:right;">

0.0008920172 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.5113118 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

280.83647 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.2655337 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-0.93697985 \[Pa\]

</td>

<td style="text-align:right;">

28.399671 \[Pa\]

</td>

<td style="text-align:right;">

0.09352478 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274041 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09143929 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05733306 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6761 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51720 \[°C\]

</td>

<td style="text-align:right;">

20.14852 \[°C\]

</td>

<td style="text-align:right;">

2.368282 \[kPa\]

</td>

<td style="text-align:right;">

59.66400 \[%\]

</td>

<td style="text-align:right;">

1.400156 \[kPa\]

</td>

<td style="text-align:right;">

2.346736 \[kPa\]

</td>

<td style="text-align:right;">

0.9681260 \[kPa\]

</td>

<td style="text-align:right;">

\-39.33796 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.10458 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.601903 \[W/m^2\]

</td>

<td style="text-align:right;">

182.6317 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183413 \[1\]

</td>

<td style="text-align:right;">

0.04696247 \[1\]

</td>

<td style="text-align:right;">

3.498295 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54869 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.015 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.228 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067839 \[s\]

</td>

<td style="text-align:right;">

280.83648 \[µmol/mol\]

</td>

<td style="text-align:right;">

300.94994 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84576 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.79020 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0183 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9253 \[kPa\]

</td>

<td style="text-align:right;">

0.1999757 \[kPa\]

</td>

<td style="text-align:right;">

20.00085 \[°C\]

</td>

<td style="text-align:right;">

20.14852 \[°C\]

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

9996.007 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.84640 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.015 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699371 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.132829 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10378.95 \[1\]

</td>

<td style="text-align:right;">

13122.15 \[1\]

</td>

<td style="text-align:right;">

33.78400 \[°C\]

</td>

<td style="text-align:right;">

35.32216 \[°C\]

</td>

<td style="text-align:right;">

34.98577 \[°C\]

</td>

<td style="text-align:right;">

33.70935 \[°C\]

</td>

<td style="text-align:right;">

33.68700 \[°C\]

</td>

<td style="text-align:right;">

1459.522 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067872 \[s\]

</td>

<td style="text-align:right;">

2.186642 \[1\]

</td>

<td style="text-align:right;">

\-0.934095729 \[1/min\]

</td>

<td style="text-align:right;">

193.1213677 \[1/min\]

</td>

<td style="text-align:right;">

10388.71 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.108863415 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.765326e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.15838704 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.189747 \[1\]

</td>

<td style="text-align:right;">

\-0.3472767749 \[1/min\]

</td>

<td style="text-align:right;">

0.2134031 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0559398 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.098761e-01 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0112433231 \[mmol/mol\]

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

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.860 \[µmol/s\]

</td>

<td style="text-align:right;">

578.720 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2072 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

16.79920 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1992 \[°C\]

</td>

<td style="text-align:right;">

330.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8927 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.178 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

102

</td>

<td style="text-align:right;">

1557067852 \[s\]

</td>

<td style="text-align:left;">

202.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:51

</td>

<td style="text-align:left;">

07:50:51

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067841 \[s\]

</td>

<td style="text-align:right;">

0.0008891701 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.5297123 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

284.07024 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-7.2373001 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-0.73187338 \[Pa\]

</td>

<td style="text-align:right;">

28.726658 \[Pa\]

</td>

<td style="text-align:right;">

0.09324605 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274487 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09117322 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05716566 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6764 \[W/m^2\]

</td>

<td style="text-align:right;">

21.51940 \[°C\]

</td>

<td style="text-align:right;">

20.14834 \[°C\]

</td>

<td style="text-align:right;">

2.368256 \[kPa\]

</td>

<td style="text-align:right;">

59.66896 \[%\]

</td>

<td style="text-align:right;">

1.400406 \[kPa\]

</td>

<td style="text-align:right;">

2.346959 \[kPa\]

</td>

<td style="text-align:right;">

0.9678501 \[kPa\]

</td>

<td style="text-align:right;">

\-39.21240 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.89808 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.583333 \[W/m^2\]

</td>

<td style="text-align:right;">

182.9826 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184624 \[1\]

</td>

<td style="text-align:right;">

0.04697607 \[1\]

</td>

<td style="text-align:right;">

3.499095 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54717 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.229 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067841 \[s\]

</td>

<td style="text-align:right;">

284.07026 \[µmol/mol\]

</td>

<td style="text-align:right;">

304.20842 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.84824 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.79604 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0148 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999687 \[kPa\]

</td>

<td style="text-align:right;">

20.00238 \[°C\]

</td>

<td style="text-align:right;">

20.14834 \[°C\]

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

9998.912 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.92175 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.017 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730065 \[1\]

</td>

<td style="text-align:right;">

0.02699371 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.143523 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10386.01 \[1\]

</td>

<td style="text-align:right;">

13122.17 \[1\]

</td>

<td style="text-align:right;">

33.79000 \[°C\]

</td>

<td style="text-align:right;">

35.32419 \[°C\]

</td>

<td style="text-align:right;">

34.99187 \[°C\]

</td>

<td style="text-align:right;">

33.71545 \[°C\]

</td>

<td style="text-align:right;">

33.68903 \[°C\]

</td>

<td style="text-align:right;">

1459.524 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067874 \[s\]

</td>

<td style="text-align:right;">

2.168550 \[1\]

</td>

<td style="text-align:right;">

\-1.080400003 \[1/min\]

</td>

<td style="text-align:right;">

212.8341880 \[1/min\]

</td>

<td style="text-align:right;">

10394.67 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.138148780 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-9.022331e-01 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.16766273 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.191374 \[1\]

</td>

<td style="text-align:right;">

\-0.6803757348 \[1/min\]

</td>

<td style="text-align:right;">

0.2065223 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0524720 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-8.526454e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0087755993 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85555 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.037 \[µmol/s\]

</td>

<td style="text-align:right;">

578.521 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2035 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

16.90960 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1992 \[°C\]

</td>

<td style="text-align:right;">

330.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8940 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

103

</td>

<td style="text-align:right;">

1557067854 \[s\]

</td>

<td style="text-align:left;">

204.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:53

</td>

<td style="text-align:left;">

07:50:53

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067843 \[s\]

</td>

<td style="text-align:right;">

0.0008869956 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.5643983 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

287.28943 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-5.3293838 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-0.53893489 \[Pa\]

</td>

<td style="text-align:right;">

29.052196 \[Pa\]

</td>

<td style="text-align:right;">

0.09302835 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274558 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09096514 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05703477 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6756 \[W/m^2\]

</td>

<td style="text-align:right;">

21.52180 \[°C\]

</td>

<td style="text-align:right;">

20.14924 \[°C\]

</td>

<td style="text-align:right;">

2.368388 \[kPa\]

</td>

<td style="text-align:right;">

59.67502 \[%\]

</td>

<td style="text-align:right;">

1.400698 \[kPa\]

</td>

<td style="text-align:right;">

2.347210 \[kPa\]

</td>

<td style="text-align:right;">

0.9676895 \[kPa\]

</td>

<td style="text-align:right;">

\-39.11651 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.79659 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.574326 \[W/m^2\]

</td>

<td style="text-align:right;">

183.1882 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184817 \[1\]

</td>

<td style="text-align:right;">

0.04697824 \[1\]

</td>

<td style="text-align:right;">

3.499222 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54435 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.225 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067843 \[s\]

</td>

<td style="text-align:right;">

287.28945 \[µmol/mol\]

</td>

<td style="text-align:right;">

307.47177 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85113 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.80152 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0185 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999864 \[kPa\]

</td>

<td style="text-align:right;">

20.00411 \[°C\]

</td>

<td style="text-align:right;">

20.14924 \[°C\]

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

9999.376 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

86.97068 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.013 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730063 \[1\]

</td>

<td style="text-align:right;">

0.02699386 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.145245 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10393.38 \[1\]

</td>

<td style="text-align:right;">

13122.13 \[1\]

</td>

<td style="text-align:right;">

33.79600 \[°C\]

</td>

<td style="text-align:right;">

35.33029 \[°C\]

</td>

<td style="text-align:right;">

34.99594 \[°C\]

</td>

<td style="text-align:right;">

33.72155 \[°C\]

</td>

<td style="text-align:right;">

33.69106 \[°C\]

</td>

<td style="text-align:right;">

1459.519 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067876 \[s\]

</td>

<td style="text-align:right;">

2.135565 \[1\]

</td>

<td style="text-align:right;">

\-0.213111113 \[1/min\]

</td>

<td style="text-align:right;">

234.3726492 \[1/min\]

</td>

<td style="text-align:right;">

10403.55 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.174831707 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.149606e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.18719114 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.183209 \[1\]

</td>

<td style="text-align:right;">

\-0.9188868912 \[1/min\]

</td>

<td style="text-align:right;">

0.1802215 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0497459 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-6.798794e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0070201636 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85554 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85488 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.978 \[µmol/s\]

</td>

<td style="text-align:right;">

578.575 \[µmol/s\]

</td>

<td style="text-align:right;">

19.2000 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.03150 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1890 \[°C\]

</td>

<td style="text-align:right;">

335.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8955 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

104

</td>

<td style="text-align:right;">

1557067856 \[s\]

</td>

<td style="text-align:left;">

206.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:55

</td>

<td style="text-align:left;">

07:50:55

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067845 \[s\]

</td>

<td style="text-align:right;">

0.0008854163 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.6280465 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

290.52372 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.7461821 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-0.37883336 \[Pa\]

</td>

<td style="text-align:right;">

29.379266 \[Pa\]

</td>

<td style="text-align:right;">

0.09286703 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274139 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09081050 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05693754 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6762 \[W/m^2\]

</td>

<td style="text-align:right;">

21.52448 \[°C\]

</td>

<td style="text-align:right;">

20.15087 \[°C\]

</td>

<td style="text-align:right;">

2.368626 \[kPa\]

</td>

<td style="text-align:right;">

59.68158 \[%\]

</td>

<td style="text-align:right;">

1.401018 \[kPa\]

</td>

<td style="text-align:right;">

2.347487 \[kPa\]

</td>

<td style="text-align:right;">

0.9676087 \[kPa\]

</td>

<td style="text-align:right;">

\-39.04686 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.75929 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.571345 \[W/m^2\]

</td>

<td style="text-align:right;">

183.2987 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183678 \[1\]

</td>

<td style="text-align:right;">

0.04696545 \[1\]

</td>

<td style="text-align:right;">

3.498470 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54582 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.016 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.228 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067845 \[s\]

</td>

<td style="text-align:right;">

290.52374 \[µmol/mol\]

</td>

<td style="text-align:right;">

310.78535 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85429 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.80655 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0179 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999925 \[kPa\]

</td>

<td style="text-align:right;">

20.00602 \[°C\]

</td>

<td style="text-align:right;">

20.15087 \[°C\]

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

9996.654 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.01769 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.016 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730063 \[1\]

</td>

<td style="text-align:right;">

0.02699386 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.148239 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10400.69 \[1\]

</td>

<td style="text-align:right;">

13122.16 \[1\]

</td>

<td style="text-align:right;">

33.80000 \[°C\]

</td>

<td style="text-align:right;">

35.33639 \[°C\]

</td>

<td style="text-align:right;">

34.99797 \[°C\]

</td>

<td style="text-align:right;">

33.72765 \[°C\]

</td>

<td style="text-align:right;">

33.69310 \[°C\]

</td>

<td style="text-align:right;">

1459.523 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067878 \[s\]

</td>

<td style="text-align:right;">

2.152596 \[1\]

</td>

<td style="text-align:right;">

\-0.321056415 \[1/min\]

</td>

<td style="text-align:right;">

252.4102566 \[1/min\]

</td>

<td style="text-align:right;">

10410.60 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.254268293 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.699907e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.24566518 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.170712 \[1\]

</td>

<td style="text-align:right;">

\-0.4991437025 \[1/min\]

</td>

<td style="text-align:right;">

0.1721854 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0478512 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-5.622815e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0060226083 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.801 \[µmol/s\]

</td>

<td style="text-align:right;">

578.774 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1955 \[°C\]

</td>

<td style="text-align:right;">

16.0891 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.19930 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1890 \[°C\]

</td>

<td style="text-align:right;">

340.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8934 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.826 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

105

</td>

<td style="text-align:right;">

1557067858 \[s\]

</td>

<td style="text-align:left;">

208.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:57

</td>

<td style="text-align:left;">

07:50:57

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067847 \[s\]

</td>

<td style="text-align:right;">

0.0008842667 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.6684650 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

293.75853 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-1.6211945 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-0.16394355 \[Pa\]

</td>

<td style="text-align:right;">

29.706378 \[Pa\]

</td>

<td style="text-align:right;">

0.09275139 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273977 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09069978 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05686791 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6768 \[W/m^2\]

</td>

<td style="text-align:right;">

21.52683 \[°C\]

</td>

<td style="text-align:right;">

20.15255 \[°C\]

</td>

<td style="text-align:right;">

2.368872 \[kPa\]

</td>

<td style="text-align:right;">

59.68854 \[%\]

</td>

<td style="text-align:right;">

1.401343 \[kPa\]

</td>

<td style="text-align:right;">

2.347759 \[kPa\]

</td>

<td style="text-align:right;">

0.9675290 \[kPa\]

</td>

<td style="text-align:right;">

\-38.99616 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.73470 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.569309 \[W/m^2\]

</td>

<td style="text-align:right;">

183.3766 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04183238 \[1\]

</td>

<td style="text-align:right;">

0.04696051 \[1\]

</td>

<td style="text-align:right;">

3.498179 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54665 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.020 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.231 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408099 \[1\]

</td>

<td style="text-align:right;">

0.1916197 \[J/µmol\]

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

1557067847 \[s\]

</td>

<td style="text-align:right;">

293.75855 \[µmol/mol\]

</td>

<td style="text-align:right;">

314.07174 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.85751 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.81113 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0167 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999964 \[kPa\]

</td>

<td style="text-align:right;">

20.00788 \[°C\]

</td>

<td style="text-align:right;">

20.15255 \[°C\]

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

9995.605 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.14522 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.020 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730063 \[1\]

</td>

<td style="text-align:right;">

0.02699386 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.145829 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10407.90 \[1\]

</td>

<td style="text-align:right;">

13122.19 \[1\]

</td>

<td style="text-align:right;">

33.80600 \[°C\]

</td>

<td style="text-align:right;">

35.34248 \[°C\]

</td>

<td style="text-align:right;">

35.00000 \[°C\]

</td>

<td style="text-align:right;">

33.73374 \[°C\]

</td>

<td style="text-align:right;">

33.69716 \[°C\]

</td>

<td style="text-align:right;">

1459.526 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49323 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067880 \[s\]

</td>

<td style="text-align:right;">

2.138088 \[1\]

</td>

<td style="text-align:right;">

\-0.087052997 \[1/min\]

</td>

<td style="text-align:right;">

252.6769231 \[1/min\]

</td>

<td style="text-align:right;">

10417.90 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.310041463 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.060164e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.27044680 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.166641 \[1\]

</td>

<td style="text-align:right;">

\-0.2841115312 \[1/min\]

</td>

<td style="text-align:right;">

0.1681435 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0464337 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-4.181477e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0049413979 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85449 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.948 \[µmol/s\]

</td>

<td style="text-align:right;">

578.612 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1902 \[°C\]

</td>

<td style="text-align:right;">

16.0887 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.30660 \[%\]

</td>

<td style="text-align:right;">

8.902960 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1743 \[°C\]

</td>

<td style="text-align:right;">

340.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8966 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.826 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

106

</td>

<td style="text-align:right;">

1557067860 \[s\]

</td>

<td style="text-align:left;">

210.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:50:59

</td>

<td style="text-align:left;">

07:50:59

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067849 \[s\]

</td>

<td style="text-align:right;">

0.0008833898 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.7251318 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

296.98956 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.3162675 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.03198262 \[Pa\]

</td>

<td style="text-align:right;">

30.033136 \[Pa\]

</td>

<td style="text-align:right;">

0.09266936 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273241 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09062069 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05681823 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6741 \[W/m^2\]

</td>

<td style="text-align:right;">

21.52907 \[°C\]

</td>

<td style="text-align:right;">

20.15389 \[°C\]

</td>

<td style="text-align:right;">

2.369069 \[kPa\]

</td>

<td style="text-align:right;">

59.69633 \[%\]

</td>

<td style="text-align:right;">

1.401658 \[kPa\]

</td>

<td style="text-align:right;">

2.347979 \[kPa\]

</td>

<td style="text-align:right;">

0.9674112 \[kPa\]

</td>

<td style="text-align:right;">

\-38.95749 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.70762 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.567442 \[W/m^2\]

</td>

<td style="text-align:right;">

183.4416 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04181239 \[1\]

</td>

<td style="text-align:right;">

0.04693807 \[1\]

</td>

<td style="text-align:right;">

3.496859 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54455 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.218 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067849 \[s\]

</td>

<td style="text-align:right;">

296.98958 \[µmol/mol\]

</td>

<td style="text-align:right;">

317.37381 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86061 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.81528 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0187 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.2000297 \[kPa\]

</td>

<td style="text-align:right;">

20.00940 \[°C\]

</td>

<td style="text-align:right;">

20.15389 \[°C\]

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

9990.827 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.28029 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.004 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730075 \[1\]

</td>

<td style="text-align:right;">

0.02699271 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.137816 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10415.29 \[1\]

</td>

<td style="text-align:right;">

13122.07 \[1\]

</td>

<td style="text-align:right;">

33.81000 \[°C\]

</td>

<td style="text-align:right;">

35.34858 \[°C\]

</td>

<td style="text-align:right;">

35.00000 \[°C\]

</td>

<td style="text-align:right;">

33.73984 \[°C\]

</td>

<td style="text-align:right;">

33.70326 \[°C\]

</td>

<td style="text-align:right;">

1459.513 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49097 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067882 \[s\]

</td>

<td style="text-align:right;">

2.118323 \[1\]

</td>

<td style="text-align:right;">

0.555323071 \[1/min\]

</td>

<td style="text-align:right;">

247.2034185 \[1/min\]

</td>

<td style="text-align:right;">

10427.60 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.374802439 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.383913e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.29401250 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.146841 \[1\]

</td>

<td style="text-align:right;">

\-0.1607550770 \[1/min\]

</td>

<td style="text-align:right;">

0.1564623 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0453515 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.611589e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0038078914 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.845 \[µmol/s\]

</td>

<td style="text-align:right;">

578.756 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1857 \[°C\]

</td>

<td style="text-align:right;">

16.0879 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.42940 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1743 \[°C\]

</td>

<td style="text-align:right;">

345.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8975 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

107

</td>

<td style="text-align:right;">

1557067862 \[s\]

</td>

<td style="text-align:left;">

212.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:01

</td>

<td style="text-align:left;">

07:51:01

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067851 \[s\]

</td>

<td style="text-align:right;">

0.0008827889 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.8035757 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

300.21227 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.9704885 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.19926596 \[Pa\]

</td>

<td style="text-align:right;">

30.359014 \[Pa\]

</td>

<td style="text-align:right;">

0.09262162 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.272912 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09057475 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05678935 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6729 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53059 \[°C\]

</td>

<td style="text-align:right;">

20.15475 \[°C\]

</td>

<td style="text-align:right;">

2.369195 \[kPa\]

</td>

<td style="text-align:right;">

59.70480 \[%\]

</td>

<td style="text-align:right;">

1.401955 \[kPa\]

</td>

<td style="text-align:right;">

2.348144 \[kPa\]

</td>

<td style="text-align:right;">

0.9672410 \[kPa\]

</td>

<td style="text-align:right;">

\-38.93099 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.67264 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.564589 \[W/m^2\]

</td>

<td style="text-align:right;">

183.5047 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04180344 \[1\]

</td>

<td style="text-align:right;">

0.04692802 \[1\]

</td>

<td style="text-align:right;">

3.496268 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54668 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.212 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067851 \[s\]

</td>

<td style="text-align:right;">

300.21229 \[µmol/mol\]

</td>

<td style="text-align:right;">

320.69374 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86356 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.81894 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0212 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9252 \[kPa\]

</td>

<td style="text-align:right;">

0.1999970 \[kPa\]

</td>

<td style="text-align:right;">

20.01053 \[°C\]

</td>

<td style="text-align:right;">

20.15475 \[°C\]

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

9988.691 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.32222 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.996 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.140890 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10422.95 \[1\]

</td>

<td style="text-align:right;">

13122.01 \[1\]

</td>

<td style="text-align:right;">

33.81200 \[°C\]

</td>

<td style="text-align:right;">

35.35468 \[°C\]

</td>

<td style="text-align:right;">

35.00000 \[°C\]

</td>

<td style="text-align:right;">

33.74594 \[°C\]

</td>

<td style="text-align:right;">

33.70935 \[°C\]

</td>

<td style="text-align:right;">

1459.506 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067884 \[s\]

</td>

<td style="text-align:right;">

2.118508 \[1\]

</td>

<td style="text-align:right;">

0.240786327 \[1/min\]

</td>

<td style="text-align:right;">

244.2940173 \[1/min\]

</td>

<td style="text-align:right;">

10434.88 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.473265854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.027707e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.35063605 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.141621 \[1\]

</td>

<td style="text-align:right;">

\-0.2451225697 \[1/min\]

</td>

<td style="text-align:right;">

0.1673145 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0446224 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.026564e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0027863498 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85448 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85339 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85491 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.638 \[µmol/s\]

</td>

<td style="text-align:right;">

578.991 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1789 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.59630 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1743 \[°C\]

</td>

<td style="text-align:right;">

350.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8988 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

108

</td>

<td style="text-align:right;">

1557067864 \[s\]

</td>

<td style="text-align:left;">

214.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:03

</td>

<td style="text-align:left;">

07:51:03

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067853 \[s\]

</td>

<td style="text-align:right;">

0.0008823099 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.8498435 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

303.43818 \[µmol/mol\]

</td>

<td style="text-align:right;">

4.2254133 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.42729506 \[Pa\]

</td>

<td style="text-align:right;">

30.685196 \[Pa\]

</td>

<td style="text-align:right;">

0.09258503 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273324 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09054011 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05676753 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6733 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53129 \[°C\]

</td>

<td style="text-align:right;">

20.15566 \[°C\]

</td>

<td style="text-align:right;">

2.369328 \[kPa\]

</td>

<td style="text-align:right;">

59.71428 \[%\]

</td>

<td style="text-align:right;">

1.402246 \[kPa\]

</td>

<td style="text-align:right;">

2.348258 \[kPa\]

</td>

<td style="text-align:right;">

0.9670826 \[kPa\]

</td>

<td style="text-align:right;">

\-38.90987 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.69007 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.565862 \[W/m^2\]

</td>

<td style="text-align:right;">

183.5075 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04181463 \[1\]

</td>

<td style="text-align:right;">

0.04694058 \[1\]

</td>

<td style="text-align:right;">

3.497007 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54615 \[µmol/s\]

</td>

<td style="text-align:right;">

1499.999 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.214 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067853 \[s\]

</td>

<td style="text-align:right;">

303.43819 \[µmol/mol\]

</td>

<td style="text-align:right;">

323.97839 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86645 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.82241 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0217 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9251 \[kPa\]

</td>

<td style="text-align:right;">

0.1999695 \[kPa\]

</td>

<td style="text-align:right;">

20.01132 \[°C\]

</td>

<td style="text-align:right;">

20.15566 \[°C\]

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

9991.374 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.33608 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1499.999 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.113506 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10431.20 \[1\]

</td>

<td style="text-align:right;">

13122.04 \[1\]

</td>

<td style="text-align:right;">

33.81200 \[°C\]

</td>

<td style="text-align:right;">

35.36077 \[°C\]

</td>

<td style="text-align:right;">

35.00000 \[°C\]

</td>

<td style="text-align:right;">

33.74797 \[°C\]

</td>

<td style="text-align:right;">

33.71545 \[°C\]

</td>

<td style="text-align:right;">

1459.509 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067886 \[s\]

</td>

<td style="text-align:right;">

2.108350 \[1\]

</td>

<td style="text-align:right;">

\-0.322054691 \[1/min\]

</td>

<td style="text-align:right;">

244.8888889 \[1/min\]

</td>

<td style="text-align:right;">

10442.38 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.536365854 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.428484e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.37283902 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.124368 \[1\]

</td>

<td style="text-align:right;">

\-0.2043436084 \[1/min\]

</td>

<td style="text-align:right;">

0.1673019 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0440295 \[mmol/mol\]

</td>

<td style="text-align:right;">

4.569199e-03 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0016045818 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.919 \[µmol/s\]

</td>

<td style="text-align:right;">

578.612 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1725 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.70550 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1614 \[°C\]

</td>

<td style="text-align:right;">

350.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.9011 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.180 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

109

</td>

<td style="text-align:right;">

1557067866 \[s\]

</td>

<td style="text-align:left;">

216.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:05

</td>

<td style="text-align:left;">

07:51:05

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067855 \[s\]

</td>

<td style="text-align:right;">

0.0008819874 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

16.9319301 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

306.66234 \[µmol/mol\]

</td>

<td style="text-align:right;">

5.8988027 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.59651614 \[Pa\]

</td>

<td style="text-align:right;">

31.011214 \[Pa\]

</td>

<td style="text-align:right;">

0.09256360 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.273595 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09051986 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05675478 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6736 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53198 \[°C\]

</td>

<td style="text-align:right;">

20.15662 \[°C\]

</td>

<td style="text-align:right;">

2.369470 \[kPa\]

</td>

<td style="text-align:right;">

59.72347 \[%\]

</td>

<td style="text-align:right;">

1.402527 \[kPa\]

</td>

<td style="text-align:right;">

2.348368 \[kPa\]

</td>

<td style="text-align:right;">

0.9669426 \[kPa\]

</td>

<td style="text-align:right;">

\-38.89565 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.71788 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.568151 \[W/m^2\]

</td>

<td style="text-align:right;">

183.4919 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04182201 \[1\]

</td>

<td style="text-align:right;">

0.04694887 \[1\]

</td>

<td style="text-align:right;">

3.497494 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54543 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.215 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067855 \[s\]

</td>

<td style="text-align:right;">

306.66235 \[µmol/mol\]

</td>

<td style="text-align:right;">

327.30435 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.86925 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.82559 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0214 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9250 \[kPa\]

</td>

<td style="text-align:right;">

0.1999845 \[kPa\]

</td>

<td style="text-align:right;">

20.01207 \[°C\]

</td>

<td style="text-align:right;">

20.15662 \[°C\]

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

9993.147 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.41900 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.117135 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10439.41 \[1\]

</td>

<td style="text-align:right;">

13122.05 \[1\]

</td>

<td style="text-align:right;">

33.81200 \[°C\]

</td>

<td style="text-align:right;">

35.36484 \[°C\]

</td>

<td style="text-align:right;">

35.00600 \[°C\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

33.72155 \[°C\]

</td>

<td style="text-align:right;">

1459.511 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067888 \[s\]

</td>

<td style="text-align:right;">

2.122523 \[1\]

</td>

<td style="text-align:right;">

\-0.376991439 \[1/min\]

</td>

<td style="text-align:right;">

242.4273501 \[1/min\]

</td>

<td style="text-align:right;">

10452.41 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.630990244 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.261711e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.35962969 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.112344 \[1\]

</td>

<td style="text-align:right;">

0.1731173156 \[1/min\]

</td>

<td style="text-align:right;">

0.1532438 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0436624 \[mmol/mol\]

</td>

<td style="text-align:right;">

7.222160e-03 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0013684472 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85487 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.919 \[µmol/s\]

</td>

<td style="text-align:right;">

578.702 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1666 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.82660 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1614 \[°C\]

</td>

<td style="text-align:right;">

355.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8983 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

110

</td>

<td style="text-align:right;">

1557067868 \[s\]

</td>

<td style="text-align:left;">

218.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:07

</td>

<td style="text-align:left;">

07:51:07

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067857 \[s\]

</td>

<td style="text-align:right;">

0.0008818270 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.0413024 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

309.88966 \[µmol/mol\]

</td>

<td style="text-align:right;">

7.1300744 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.72102688 \[Pa\]

</td>

<td style="text-align:right;">

31.337510 \[Pa\]

</td>

<td style="text-align:right;">

0.09255213 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274421 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09050961 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05674826 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6737 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53248 \[°C\]

</td>

<td style="text-align:right;">

20.15804 \[°C\]

</td>

<td style="text-align:right;">

2.369678 \[kPa\]

</td>

<td style="text-align:right;">

59.73182 \[%\]

</td>

<td style="text-align:right;">

1.402806 \[kPa\]

</td>

<td style="text-align:right;">

2.348507 \[kPa\]

</td>

<td style="text-align:right;">

0.9668718 \[kPa\]

</td>

<td style="text-align:right;">

\-38.88857 \[W/m^2\]

</td>

<td style="text-align:right;">

\-17.78128 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.573209 \[W/m^2\]

</td>

<td style="text-align:right;">

183.4306 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04184446 \[1\]

</td>

<td style="text-align:right;">

0.04697407 \[1\]

</td>

<td style="text-align:right;">

3.498977 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54828 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.216 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067857 \[s\]

</td>

<td style="text-align:right;">

309.88968 \[µmol/mol\]

</td>

<td style="text-align:right;">

330.66639 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87204 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.82856 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0187 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9248 \[kPa\]

</td>

<td style="text-align:right;">

0.1999610 \[kPa\]

</td>

<td style="text-align:right;">

20.01303 \[°C\]

</td>

<td style="text-align:right;">

20.15804 \[°C\]

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

9998.530 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.48455 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.001 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.110732 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10447.69 \[1\]

</td>

<td style="text-align:right;">

13122.07 \[1\]

</td>

<td style="text-align:right;">

33.81200 \[°C\]

</td>

<td style="text-align:right;">

35.36890 \[°C\]

</td>

<td style="text-align:right;">

35.01000 \[°C\]

</td>

<td style="text-align:right;">

33.75200 \[°C\]

</td>

<td style="text-align:right;">

33.72765 \[°C\]

</td>

<td style="text-align:right;">

1459.511 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067890 \[s\]

</td>

<td style="text-align:right;">

2.128204 \[1\]

</td>

<td style="text-align:right;">

\-0.331593152 \[1/min\]

</td>

<td style="text-align:right;">

244.2495728 \[1/min\]

</td>

<td style="text-align:right;">

10459.90 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.767639024 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.078247e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.33784576 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.102150 \[1\]

</td>

<td style="text-align:right;">

0.0195190194 \[1/min\]

</td>

<td style="text-align:right;">

0.1501888 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0435034 \[mmol/mol\]

</td>

<td style="text-align:right;">

5.247387e-05 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0015873641 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85553 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85451 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85364 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.786 \[µmol/s\]

</td>

<td style="text-align:right;">

578.936 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1603 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

17.99190 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1468 \[°C\]

</td>

<td style="text-align:right;">

360.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.9005 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

111

</td>

<td style="text-align:right;">

1557067870 \[s\]

</td>

<td style="text-align:left;">

220.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:09

</td>

<td style="text-align:left;">

07:51:09

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067859 \[s\]

</td>

<td style="text-align:right;">

0.0008815500 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.1016794 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

313.12976 \[µmol/mol\]

</td>

<td style="text-align:right;">

9.1272267 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.92298681 \[Pa\]

</td>

<td style="text-align:right;">

31.665109 \[Pa\]

</td>

<td style="text-align:right;">

0.09250854 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274965 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09046840 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05672230 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6740 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53299 \[°C\]

</td>

<td style="text-align:right;">

20.16078 \[°C\]

</td>

<td style="text-align:right;">

2.370079 \[kPa\]

</td>

<td style="text-align:right;">

59.74050 \[%\]

</td>

<td style="text-align:right;">

1.403075 \[kPa\]

</td>

<td style="text-align:right;">

2.348616 \[kPa\]

</td>

<td style="text-align:right;">

0.9670034 \[kPa\]

</td>

<td style="text-align:right;">

\-38.87636 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.02885 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.594760 \[W/m^2\]

</td>

<td style="text-align:right;">

183.1740 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185925 \[1\]

</td>

<td style="text-align:right;">

0.04699067 \[1\]

</td>

<td style="text-align:right;">

3.499954 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54785 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.003 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.217 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067859 \[s\]

</td>

<td style="text-align:right;">

313.12977 \[µmol/mol\]

</td>

<td style="text-align:right;">

333.98229 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87472 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.83158 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0179 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9246 \[kPa\]

</td>

<td style="text-align:right;">

0.1999814 \[kPa\]

</td>

<td style="text-align:right;">

20.01378 \[°C\]

</td>

<td style="text-align:right;">

20.16078 \[°C\]

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

10002.083 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.45590 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.003 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.158077 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10456.16 \[1\]

</td>

<td style="text-align:right;">

13122.08 \[1\]

</td>

<td style="text-align:right;">

33.81403 \[°C\]

</td>

<td style="text-align:right;">

35.37094 \[°C\]

</td>

<td style="text-align:right;">

35.01600 \[°C\]

</td>

<td style="text-align:right;">

33.75800 \[°C\]

</td>

<td style="text-align:right;">

33.73374 \[°C\]

</td>

<td style="text-align:right;">

1459.513 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067892 \[s\]

</td>

<td style="text-align:right;">

2.153904 \[1\]

</td>

<td style="text-align:right;">

0.481111119 \[1/min\]

</td>

<td style="text-align:right;">

249.4188034 \[1/min\]

</td>

<td style="text-align:right;">

10467.34 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.848880488 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-3.017824e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.33576725 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.137985 \[1\]

</td>

<td style="text-align:right;">

0.2422916740 \[1/min\]

</td>

<td style="text-align:right;">

0.1683444 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0431717 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-6.280139e-03 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0019336997 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85554 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85452 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85340 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.948 \[µmol/s\]

</td>

<td style="text-align:right;">

578.738 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1554 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

29.9999 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

18.09880 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1468 \[°C\]

</td>

<td style="text-align:right;">

360.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.9012 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.823 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

112

</td>

<td style="text-align:right;">

1557067872 \[s\]

</td>

<td style="text-align:left;">

222.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:11

</td>

<td style="text-align:left;">

07:51:11

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067861 \[s\]

</td>

<td style="text-align:right;">

0.0008811765 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.1744071 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

316.37595 \[µmol/mol\]

</td>

<td style="text-align:right;">

10.8877095 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.10101403 \[Pa\]

</td>

<td style="text-align:right;">

31.993355 \[Pa\]

</td>

<td style="text-align:right;">

0.09245752 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274793 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09041946 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05669153 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6744 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53355 \[°C\]

</td>

<td style="text-align:right;">

20.16318 \[°C\]

</td>

<td style="text-align:right;">

2.370430 \[kPa\]

</td>

<td style="text-align:right;">

59.74959 \[%\]

</td>

<td style="text-align:right;">

1.403317 \[kPa\]

</td>

<td style="text-align:right;">

2.348664 \[kPa\]

</td>

<td style="text-align:right;">

0.9671133 \[kPa\]

</td>

<td style="text-align:right;">

\-38.85989 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.28146 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.617251 \[W/m^2\]

</td>

<td style="text-align:right;">

182.9158 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185456 \[1\]

</td>

<td style="text-align:right;">

0.04698541 \[1\]

</td>

<td style="text-align:right;">

3.499644 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54687 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.006 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.220 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067861 \[s\]

</td>

<td style="text-align:right;">

316.37597 \[µmol/mol\]

</td>

<td style="text-align:right;">

337.31897 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87713 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.83443 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0198 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9245 \[kPa\]

</td>

<td style="text-align:right;">

0.2000020 \[kPa\]

</td>

<td style="text-align:right;">

20.01411 \[°C\]

</td>

<td style="text-align:right;">

20.16318 \[°C\]

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

10000.974 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.39320 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.006 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.182210 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10464.56 \[1\]

</td>

<td style="text-align:right;">

13122.10 \[1\]

</td>

<td style="text-align:right;">

33.81403 \[°C\]

</td>

<td style="text-align:right;">

35.37297 \[°C\]

</td>

<td style="text-align:right;">

35.02200 \[°C\]

</td>

<td style="text-align:right;">

33.76400 \[°C\]

</td>

<td style="text-align:right;">

33.73781 \[°C\]

</td>

<td style="text-align:right;">

1459.516 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067894 \[s\]

</td>

<td style="text-align:right;">

2.177158 \[1\]

</td>

<td style="text-align:right;">

1.141911122 \[1/min\]

</td>

<td style="text-align:right;">

260.4615381 \[1/min\]

</td>

<td style="text-align:right;">

10477.23 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-20.933539024 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.760679e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.31621623 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.167826 \[1\]

</td>

<td style="text-align:right;">

0.5075436584 \[1/min\]

</td>

<td style="text-align:right;">

0.1792118 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0427205 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.165610e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0022687118 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85550 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85337 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85489 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.904 \[µmol/s\]

</td>

<td style="text-align:right;">

578.846 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1485 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9169 \[°C\]

</td>

<td style="text-align:right;">

15.8828 \[°C\]

</td>

<td style="text-align:right;">

18.22000 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1468 \[°C\]

</td>

<td style="text-align:right;">

365.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8987 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

113

</td>

<td style="text-align:right;">

1557067874 \[s\]

</td>

<td style="text-align:left;">

224.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:13

</td>

<td style="text-align:left;">

07:51:13

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067863 \[s\]

</td>

<td style="text-align:right;">

0.0008809734 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.2689346 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

319.62953 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.4087935 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.25483108 \[Pa\]

</td>

<td style="text-align:right;">

32.322326 \[Pa\]

</td>

<td style="text-align:right;">

0.09244884 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274682 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09041106 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05668626 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6747 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53373 \[°C\]

</td>

<td style="text-align:right;">

20.16372 \[°C\]

</td>

<td style="text-align:right;">

2.370510 \[kPa\]

</td>

<td style="text-align:right;">

59.75864 \[%\]

</td>

<td style="text-align:right;">

1.403533 \[kPa\]

</td>

<td style="text-align:right;">

2.348670 \[kPa\]

</td>

<td style="text-align:right;">

0.9669773 \[kPa\]

</td>

<td style="text-align:right;">

\-38.85093 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.34268 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.622750 \[W/m^2\]

</td>

<td style="text-align:right;">

182.8583 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185155 \[1\]

</td>

<td style="text-align:right;">

0.04698203 \[1\]

</td>

<td style="text-align:right;">

3.499446 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54491 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.221 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067863 \[s\]

</td>

<td style="text-align:right;">

319.62955 \[µmol/mol\]

</td>

<td style="text-align:right;">

340.68942 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.87928 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.83682 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0179 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9244 \[kPa\]

</td>

<td style="text-align:right;">

0.1999872 \[kPa\]

</td>

<td style="text-align:right;">

20.01415 \[°C\]

</td>

<td style="text-align:right;">

20.16372 \[°C\]

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

10000.267 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.37488 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.008 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.203387 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10472.84 \[1\]

</td>

<td style="text-align:right;">

13122.11 \[1\]

</td>

<td style="text-align:right;">

33.82013 \[°C\]

</td>

<td style="text-align:right;">

35.37500 \[°C\]

</td>

<td style="text-align:right;">

35.02800 \[°C\]

</td>

<td style="text-align:right;">

33.77000 \[°C\]

</td>

<td style="text-align:right;">

33.74187 \[°C\]

</td>

<td style="text-align:right;">

1459.518 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067896 \[s\]

</td>

<td style="text-align:right;">

2.195554 \[1\]

</td>

<td style="text-align:right;">

1.511398302 \[1/min\]

</td>

<td style="text-align:right;">

255.5282053 \[1/min\]

</td>

<td style="text-align:right;">

10484.66 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-21.052987805 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.500334e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.28514514 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.190103 \[1\]

</td>

<td style="text-align:right;">

0.5121225697 \[1/min\]

</td>

<td style="text-align:right;">

0.1791615 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0424780 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-1.700906e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0024294205 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85551 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85898 \[V\]

</td>

<td style="text-align:right;">

1.85338 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85490 \[V\]

</td>

<td style="text-align:right;">

1.85365 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

502.967 \[µmol/s\]

</td>

<td style="text-align:right;">

578.904 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1432 \[°C\]

</td>

<td style="text-align:right;">

16.0876 \[°C\]

</td>

<td style="text-align:right;">

30.0001 \[°C\]

</td>

<td style="text-align:right;">

15.9173 \[°C\]

</td>

<td style="text-align:right;">

15.8832 \[°C\]

</td>

<td style="text-align:right;">

18.38670 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1322 \[°C\]

</td>

<td style="text-align:right;">

370.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.8990 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.824 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

114

</td>

<td style="text-align:right;">

1557067876 \[s\]

</td>

<td style="text-align:left;">

226.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:15

</td>

<td style="text-align:left;">

07:51:15

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067865 \[s\]

</td>

<td style="text-align:right;">

0.0008808471 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.3139285 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

322.89414 \[µmol/mol\]

</td>

<td style="text-align:right;">

14.9047639 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.50723493 \[Pa\]

</td>

<td style="text-align:right;">

32.652468 \[Pa\]

</td>

<td style="text-align:right;">

0.09246998 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.274838 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09043141 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05669904 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6751 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53359 \[°C\]

</td>

<td style="text-align:right;">

20.16263 \[°C\]

</td>

<td style="text-align:right;">

2.370350 \[kPa\]

</td>

<td style="text-align:right;">

59.76728 \[%\]

</td>

<td style="text-align:right;">

1.403728 \[kPa\]

</td>

<td style="text-align:right;">

2.348657 \[kPa\]

</td>

<td style="text-align:right;">

0.9666213 \[kPa\]

</td>

<td style="text-align:right;">

\-38.84536 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.22050 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.611821 \[W/m^2\]

</td>

<td style="text-align:right;">

182.9974 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04185578 \[1\]

</td>

<td style="text-align:right;">

0.04698679 \[1\]

</td>

<td style="text-align:right;">

3.499725 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54616 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.223 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067865 \[s\]

</td>

<td style="text-align:right;">

322.89416 \[µmol/mol\]

</td>

<td style="text-align:right;">

344.01129 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88121 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.83891 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0211 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9244 \[kPa\]

</td>

<td style="text-align:right;">

0.1999874 \[kPa\]

</td>

<td style="text-align:right;">

20.01406 \[°C\]

</td>

<td style="text-align:right;">

20.16263 \[°C\]

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

10001.275 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.35091 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.010 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.213074 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10480.89 \[1\]

</td>

<td style="text-align:right;">

13122.13 \[1\]

</td>

<td style="text-align:right;">

33.82623 \[°C\]

</td>

<td style="text-align:right;">

35.37500 \[°C\]

</td>

<td style="text-align:right;">

35.03400 \[°C\]

</td>

<td style="text-align:right;">

33.77600 \[°C\]

</td>

<td style="text-align:right;">

33.74594 \[°C\]

</td>

<td style="text-align:right;">

1459.520 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067898 \[s\]

</td>

<td style="text-align:right;">

2.219896 \[1\]

</td>

<td style="text-align:right;">

1.647121374 \[1/min\]

</td>

<td style="text-align:right;">

249.3675213 \[1/min\]

</td>

<td style="text-align:right;">

10492.13 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

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

\-21.115317073 \[µmol/mol\]

</td>

<td style="text-align:right;">

\-2.370299e+00 \[µmol/min/mol\]

</td>

<td style="text-align:right;">

0.27829975 \[µmol/mol\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.195806 \[1\]

</td>

<td style="text-align:right;">

0.9292378114 \[1/min\]

</td>

<td style="text-align:right;">

0.1875400 \[1\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

1.0423263 \[mmol/mol\]

</td>

<td style="text-align:right;">

\-2.056390e-02 \[mmol/min/mol\]

</td>

<td style="text-align:right;">

0.0024961636 \[mmol/mol\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

3 \[1\]

</td>

<td style="text-align:left;">

2/3

</td>

<td style="text-align:right;">

1.85552 \[V\]

</td>

<td style="text-align:right;">

1.85349 \[V\]

</td>

<td style="text-align:right;">

1.85450 \[V\]

</td>

<td style="text-align:right;">

1.85899 \[V\]

</td>

<td style="text-align:right;">

1.85341 \[V\]

</td>

<td style="text-align:right;">

1.85776 \[V\]

</td>

<td style="text-align:right;">

1.85493 \[V\]

</td>

<td style="text-align:right;">

1.85366 \[V\]

</td>

<td style="text-align:right;">

5 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

11111111 \[1\]

</td>

<td style="text-align:left;">

oooooooo

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:left;">

off

</td>

<td style="text-align:right;">

0 \[V\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

2 \[1\]

</td>

<td style="text-align:right;">

503.149 \[µmol/s\]

</td>

<td style="text-align:right;">

578.801 \[µmol/s\]

</td>

<td style="text-align:right;">

19.1379 \[°C\]

</td>

<td style="text-align:right;">

16.0869 \[°C\]

</td>

<td style="text-align:right;">

30.0000 \[°C\]

</td>

<td style="text-align:right;">

15.9177 \[°C\]

</td>

<td style="text-align:right;">

15.8835 \[°C\]

</td>

<td style="text-align:right;">

18.49510 \[%\]

</td>

<td style="text-align:right;">

8.627610 \[%\]

</td>

<td style="text-align:right;">

100 \[%\]

</td>

<td style="text-align:right;">

19.1322 \[°C\]

</td>

<td style="text-align:right;">

370.67 \[µmol/mol\]

</td>

<td style="text-align:right;">

12.9013 \[mmol/mol\]

</td>

<td style="text-align:right;">

102.825 \[%\]

</td>

<td style="text-align:right;">

103.179 \[%\]

</td>

</tr>

<tr>

<td style="text-align:right;">

115

</td>

<td style="text-align:right;">

1557067878 \[s\]

</td>

<td style="text-align:left;">

228.400000095367

</td>

<td style="text-align:left;">

2019-05-05 07:51:17

</td>

<td style="text-align:left;">

07:51:17

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

1557067867 \[s\]

</td>

<td style="text-align:right;">

0.0008806909 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

17.3714917 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

326.15714 \[µmol/mol\]

</td>

<td style="text-align:right;">

17.1494691 \[µmol/mol\]

</td>

<td style="text-align:right;">

1.73423091 \[Pa\]

</td>

<td style="text-align:right;">

32.982467 \[Pa\]

</td>

<td style="text-align:right;">

0.09248181 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

2.275013 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.09044288 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

0.05670625 \[mol/m^2/s\]

</td>

<td style="text-align:right;">

241.6752 \[W/m^2\]

</td>

<td style="text-align:right;">

21.53341 \[°C\]

</td>

<td style="text-align:right;">

20.16185 \[°C\]

</td>

<td style="text-align:right;">

2.370235 \[kPa\]

</td>

<td style="text-align:right;">

59.77536 \[%\]

</td>

<td style="text-align:right;">

1.403907 \[kPa\]

</td>

<td style="text-align:right;">

2.348639 \[kPa\]

</td>

<td style="text-align:right;">

0.9663278 \[kPa\]

</td>

<td style="text-align:right;">

\-38.83847 \[W/m^2\]

</td>

<td style="text-align:right;">

\-18.14119 \[W/m^2\]

</td>

<td style="text-align:right;">

\-1.604674 \[W/m^2\]

</td>

<td style="text-align:right;">

183.0908 \[W/m^2\]

</td>

<td style="text-align:right;">

\-0.04186055 \[1\]

</td>

<td style="text-align:right;">

0.04699213 \[1\]

</td>

<td style="text-align:right;">

3.500040 \[1\]

</td>

<td style="text-align:right;">

5 \[µmol/s\]

</td>

<td style="text-align:right;">

1 \[%\]

</td>

<td style="text-align:right;">

1 \[1\]

</td>

<td style="text-align:right;">

0 \[%\]

</td>

<td style="text-align:right;">

54848 \[µmol/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1261.224 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.8408098 \[1\]

</td>

<td style="text-align:right;">

0.1916196 \[J/µmol\]

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

1557067867 \[s\]

</td>

<td style="text-align:right;">

326.15716 \[µmol/mol\]

</td>

<td style="text-align:right;">

347.34661 \[µmol/mol\]

</td>

<td style="text-align:right;">

13.88296 \[mmol/mol\]

</td>

<td style="text-align:right;">

12.84086 \[mmol/mol\]

</td>

<td style="text-align:right;">

500.0243 \[µmol/s\]

</td>

<td style="text-align:right;">

100.9245 \[kPa\]

</td>

<td style="text-align:right;">

0.1999825 \[kPa\]

</td>

<td style="text-align:right;">

20.01394 \[°C\]

</td>

<td style="text-align:right;">

20.16185 \[°C\]

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

10002.404 \[rpm\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

87.27449 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1500.011 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0.9730080 \[1\]

</td>

<td style="text-align:right;">

0.02699220 \[1\]

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.212726 \[1\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

10488.85 \[1\]

</td>

<td style="text-align:right;">

13122.14 \[1\]

</td>

<td style="text-align:right;">

33.83232 \[°C\]

</td>

<td style="text-align:right;">

35.37900 \[°C\]

</td>

<td style="text-align:right;">

35.04000 \[°C\]

</td>

<td style="text-align:right;">

33.78200 \[°C\]

</td>

<td style="text-align:right;">

33.75000 \[°C\]

</td>

<td style="text-align:right;">

1459.521 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

40.49000 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

0 \[µmol/m^2/s\]

</td>

<td style="text-align:right;">

1557067900 \[s\]

</td>

<td style="text-align:right;">

2.236877 \[1\]

</td>

<td style="text-align:right;">

0.988143585 \[1/min\]

</td>

<td style="text-align:right;">

236.0547005 \[1/min\]

</td>

<td style="text-align:right;">

10501.88 \[1\]

</td>

<td style="text-align:right;">

15 \[s\]

</td>

<td style="text-align:right;">

0 \[s\]

</td>

<td style="text-align:left;">

–:–:–

</td>

<td style="text-align:right;">

0 \[1\]

</td>

<td style="text-align:right;">

2.615 \[µmol/mol\]

</td>

<td style="text-align:right;">

0.039 \[mmol/mol\]

</td>

<td style="text-align:right;">

0 \[µmol/mol\]

</td>


0 \[mmol/mol\]

</td>
