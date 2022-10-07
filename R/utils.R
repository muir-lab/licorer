<<<<<<< HEAD
=======
#' Get vector of acceptable data types
#'
#' @examples
#' acceptable_types()
#'
#' @export
acceptable_types <- function() {

  c("Auxiliary", "Const", "FLR",   "FlrLS", "FlrStats", "GasEx", "LeafQ", "Leak",  "Match",
    "MchEvent", "MchStatus", "Meas",  "Meas2", "MPF", "Stability", "Status", "Sys", "UserDefCon",
    "UserDefVar")

}

>>>>>>> ba0dbd43cc9ec91e495143f253ac25a5b744607c
#' Get lookup table of acceptable units for data (delta altered)
#'
#' @examples
#' acceptable_units()
#'
#' @export
acceptable_units <- function() {

    c("CustomBLC" = ("mol m-2 s-1"), "Oxygen" = ("%"), "S" = ("cm2"),
    "A_fs" = ("\u00b5mol m-2 s-1"), "Adark" = ("\u00b5mol m-2 s-1"), "ETR" = ("\u00b5mol m-2 s-1"),
    "Qabs" = ("\u00b5mol m-2 s-1"), "f_blue" = ("1"), "FARREDFRAC" = ("\u00b5mol m-2 s-1"),
    "PFD" = ("\u00b5mol m-2 s-1"), "f_red" = ("1"), "REDMODAVG" = ("\u00b5mol m-2 s-1"),
    "dF/dt" = ("min-1"), "dF_dc/dt" = ("min-1"), "period" = ("s"), "A" = ("\u00b5mol m-2 s-1"),
    "Ci" = ("\u00b5mol mol-1"), "Ca" = ("\u00b5mol mol-1"), "E" = ("mol m-2 s-1"), "Pca" = ("Pa"),
    "Pci" = ("Pa"), "RHcham" = ("%"), "Rabs" = ("W m-2"), "SVPcham" = ("kPa"),
    "SVPleaf" = ("kPa"), "TIME" = ("s"), "TleafCnd" = ("\u00b0C"), "TleafEB" = ("\u00b0C"),
    "VPDleaf" = ("kPa"), "VPcham" = ("kPa"), "gbw" = ("mol m-2 s-1"), "gsw" = ("mol m-2 s-1"),
    "gtc" = ("mol m-2 s-1"), "gtw" = ("mol m-2 s-1"), "Qin" = ("\u00b5mol m-2 s-1"),
    "Qabs" = ("\u00b5mol m-2 s-1"), "convert" = ("J \u00b5mol-1"), "P2_DQDT" = ("mol m-2 s-1"),
    "PHASE1_DURATION" = ("ms"), "PHASE2_DURATION" = ("ms"), "PHASE3_DURATION" = ("ms"),
    "QMAX" = ("\u00b5mol m-2 s-1"), "co2_adj" = ("\u00b5mol mol-1"), "co2_at" = ("\u00b5mol mol-1"),
    "co2_cv" = ("%"), "h2o_adj" = ("mmol mol-1"), "h2o_at" = ("mmol mol-1"), "h2o_cv" = ("%"),
    "time_Match" = ("s"), "co2_at" = ("\u00b5mol mol-1"), "CO2_r" = ("\u00b5mol mol-1"),
    "CO2_s" = ("\u00b5mol mol-1"), "Fan_speed" = ("rpm"), "Flow" = ("\u00b5mol s-1"),
    "H2O_r" = ("mmol mol-1"), "H2O_s" = ("mmol mol-1"), "PPFD_in" = ("mol m-2 s-1"),
    "PPFD_out" = ("mol m-2 s-1"), "Pchamber" = ("kPa"), "Press" = ("kPa"),
    "TIME" = ("s"), "Tchamber" = ("\u00b0C"), "Tleaf" = ("\u00b0C"), "Tleaf2" = ("\u00b0C"),
    "CO2_a" = ("\u00b5mol mol-1"), "CO2_b" = ("\u00b5mol mol-1"), "CO2_d" = ("\u00b5mol mol-1"),
    "CO2_r_d" = ("\u00b5mol mol-1"), "CO2_s_d" = ("\u00b5mol mol-1"), "Flow_a" = ("\u00b5mol s-1"),
    "Flow_b" = ("\u00b5mol s-1"), "H20_a" = ("mmol mol-1"), "H2O_b" = ("mmol mol-1"),
    "H2O_d" = ("mmol mol-1"), "Td_r" = ("\u00b0C"), "Td_s" = ("\u00b0C"),
    "e_r" = ("kPa"), "e_s" = ("kPa"), "ADC_CH1" = ("V"), "ADC_CH2" = ("V"),
    "ADC_CH3" = ("V"), "ADC_CH4" = ("V"), "ADC_CH5" = ("V"), "ADC_CH6" = ("V"),
    "ADC_CH7" = ("V"), "ADC_CH8" = ("V"), "Flow_a_v" = ("V"), "Flow_b_v" = ("V"),
    "Vflow" = ("V"), "VPchabmer" = ("V"), "Wc_a" = ("V"), "Wc_b" = ("V"),
    "Wco_a" = ("V"), "Wco_b" = ("V"), "Ww_a" = ("V"), "Ww_b" = ("V"),
    "Wwo_a" = ("V"), "Wwo_b" = ("V"), "abs_c_a" = ("V"), "abs_c_b" = ("V"),
    "abs_h_a" = ("V"), "abs_h_b" = ("V"), "leaf2_t_v" = ("V"), "leav_t_v" = ("V"),
    "A.GasEx:MN" = ("\u00b5mol m-2 s-1"), "A.GasEx:SD" = ("\u00b5mol m-2s-1"),
    "A.GasEx:SLP" = ("\u00b5mol m-2 s-1 min-1"), "CO2_s.Meas:MN" = ("\u00b5mol mol-1"),
    "CO2_s:Meas:SLP" = ("\u00b5mol m-2 s-1 min-1"), "H2O_s.Meas:MN" = ("mmol mol-1"),
    "H2O_s.Meas:SE" = ("mmol m-2 s-1"), "H2O_s:Meas:SLP" = ("\u00b5mol m-2 s-1 min-1"),
    "CO2_percent" = ("%"), "CO2_r_setpoint" = ("\u00b5mol mol-1"), "Desiccant_percent" = ("%"),
    "Flow_r" = ("\u00b5mol s-1"), "Flow_s" = ("\u00b5mol s-1"), "H2O_r_setpoint" = ("mmol mol-1"),
    "Heatx_setpoint" = ("\u00b0C"), "Humidifier_percent" = ("%"),
    "MatchCO2" = ("\u00b5mol mol-1"), "MatchH2O" = ("mmol mol-1"),
    "MarchValveR" = ("%"), "MarchValveS" = ("%"), "SS_a" = ("%"), "SS_b" = ("%"),
    "Ta" = ("\u00b0C"), "Tb" = ("\u00b0C"), "Tchopper" = ("\u00b0C"),
    "Tirga_block" = ("\u00b0C"), "Txchg" = ("\u00b0C"), "AccCO2_soda" = ("mg"),
    "AccH2O_des" = ("mg"), "AccH2O_hum" = ("mg"), "CO2_h" = ("h"),
    "Console_H2O" = ("mmol mol-1"), "Console_RH" = ("%"), "Concole_T" = ("\u00b0C"),
    "Fan_percent" = ("%"), "Flow_percent" = ("%"), "TleafJunction" = ("\u00b0C"),
    "TleafJunction2" = ("\u00b0C"), "diag_12v" = ("V"), "diag_20v" = ("V"),
    "diag_3_3v" = ("V"), "diag_5_4v" = ("V"), "diag_5v" = ("V"), "Flow_b" = ("\u00b5mol s-1"),
    "heatx_t_pwm_v" = ("V"), "time_Sys" = ("s"), "date" = ("s"), "elapsed" = ("s"),
    "TIME_GasEx" = ("s"), "SenHFlux" = ("W m-2"), "NetTherm" = ("W m-2"), "EBSum" = ("W m-2"),
    "LatHFlux" = ("W m-2"), "Leak" = ("\u00b5mol s-1"), "LeakPct" = ("%"), "CorrFactPct" = ("%"),
    "Fan" = ("\u00b5mol s-1"), "Afs" = ("\u00b5mol m-2 s-1"), "Qabs_fs" = ("\u00b5mol m-2 s-1"),
    "PhiCO2" = ("\u00b5mol \u00b5mol-1"), "P1_dur" = ("ms"), "P2_dur" = ("ms"), "P3_dur" = ("ms"),
    "P1_Qmax" = ("\u00b5mol m-2 s-1"), "P2_dQdt" = ("mol m-2 s-2"), "TIME_Meas" = ("s"),
    "Pa" = ("kPa"), "(delta)Pcham" = ("kPa"), "Tair" = ("\u00b0C"), "Offset" = ("\u00b0C"),
    "Offset2" = ("\u00b0C"), "Qamb_in" = ("\u00b5mol m-2 s-1"), "Qamb_out" = ("\u00b5mol m-2 s-1"),
    "Q" = ("\u00b5mol m-2 s-1"), "H2O_r_sp" = ("mmol mol-1"), "Q_modavg" = ("\u00b5mol m-2 s-1"),
    "Tled" = ("\u00b0C"), "TDigital" = ("\u00b0C"), "TPreamp" = ("\u00b0C"), "TPwrSpy" = ("\u00b0C"),
    "TDrive" = ("\u00b0C"), "Q_red" = ("\u00b5mol m-2 s-1"), "Q_blue" = ("\u00b5mol m-2 s-1"),
    "Q_farred" = ("\u00b5mol m-2 s-1"), "TSPF" = ("s"), "(delta)CO2:MN" = ("\u00b5mol mol-1"),
    "(delta)CO2:SLP" = ("\u00b5mol min-1 mol-1"), "(delta)CO2:SD" = ("\u00b5mol mol-1"), "F:SLP" = ("min-1"),
    "(delta)H2O:MN" = ("mmol mol-1"), "(delta)H2O:SLP" = ("mmol min-1 mol-1"), "(delta)H2O:SD" = ("mmol mol-1"),
    "DAC_1" = ("V"), "DAC_2" = ("V"), "DAC_3" = ("V"), "DAC_4" = ("V"), "AuxPower" = ("V"),
    "MatchValveR" = ("%"), "MatchValveS" = ("%"), "Tirga" = ("\u00b0C"), "Ts" = ("\u00b0C"),
    "Tr" = ("\u00b0C"), "CO2_%" = ("%"), "Desiccant_%" = ("%"), "Humidifier_%" = ("%"),
    "Txchg_sp" = ("\u00b0C"), "CO2_r_sp" = ("\u00b5mol mol-1"), "SS_s" = ("%"), "SS_r" = ("%"),
    "blfa_1" = ("1"), "blfa_2" = ("1"), "blfa_3" = ("1"), "CorrFact" = ("1"), "alpha" = ("1"),
    "K" = ("1"), "F" = ("1"), "F_dc" = ("1"), "Pc" = ("1"), "F_avg" = ("1"),
    "F_dc_avg" = ("1"), "count" = ("1"), "(delta)CO2:OK" = ("1"), "Stable" = ("1"), "Total" = ("1"),
    "f_farred" = ("1"), "F:MN" = ("1"), "F:SD" = ("1"), "F:OK" = ("1"), "(delta)H2O:OK" = ("1"),
    "GPIO" = ("1"), "DIAG" = ("1"), "Geometry" = ("1"), "Fo" = ("1"), "Fm" = ("1"), "Fv" = ("1"),
    "Fv/Fm" = ("1"), "Fs" = ("1"), "Fm'" = ("1"), "PhiPS2" = ("1"), "PS2/1" = ("1"),
    "Fv'/Fm'" = ("1"), "NPQ" = ("1"), "Fo'" = ("1"), "Fv'" = ("1"), "qP" = ("1"),
    "qN" = ("1"), "qP_Fo" = ("1"), "qN_Fo" = ("1"), "ID" = ("1"), "P1_Fmax" = ("1"),
    "P3_(delta)F" = ("1"), "Custom" = ("mol m-2 s-1"), "H2O_a" = ("mmol mol-1"),
    "state" = ("1"), "time_MchEvent" = ("s"), "co2_t" = ("s"), "h2o_t" = ("s"),
    "co2_match" = ("\u00b5mol mol-1"), "h2o_match" = ("mmol mol-1"), "cf_co2_a" = ("mmol mol-1"),
    "cf_co2_b" = ("1"), "cf_co2_c" = ("1"), "cf_co2_d" = ("1"), "cf_h2o_a" = ("mmol mol-1"),
    "cf_h2o_b" = ("1"), "cf_h2o_c" = ("1"), "cf_h2o_d" = ("1"), "co2_fit_low" = ("\u00b5mol mol-1"),
    "co2_fit_high" = ("\u00b5mol mol-1"), "h2o_fit_low" = ("mmol mol-1"),
    "h2o_fit_high" = ("mmol mol-1"), "co2_elapsed" = ("min"), "h2o_elapsed" = ("min"))
}

#' Get lookup table of acceptable variable types for classes other than "units"
#'
#' @examples
#' acceptable_nonunits()
#'
#' @export

acceptable_nonunits <- function() {
  c("obs" = "numeric", "elapsed" = "character", "date" =  "POSIXct", "hhmmss_Sys" = "hms",
    "binomial" = "logical", "leaf_id" = "logical", "Geometry" = "character",
    "hhmmss_Match" = "hms", "State" = "character", "GPIO_dir" = "character",
    "excit_5v" = "character", "power_12v" = "character", "power_5v" = "character",
    "ch1_pullup" = "character", "DarkAdaptedID" = "character", "LightAdaptedID" = "character",
    "DarkPulseID" = "character", "hhmmss_MchEvent" = "hms")
}

#' Get lookup table of acceptable header variables
#'
#' @examples
#' acceptable_header()
#'
#' @export

acceptable_header <- function() {
  c("File opened", "Console s/n", "Console ver", "Scripts ver", "Head s/n","Head ver",
    "Head cal", "Chamber type", "Chamber s/n", "Chamber rev", "Chamber cal",
    "Fluorometer", "Flr. Version", "SysConst:AvgTime", "SysConst:Oxygen", "SysConst:Chamber",
    "Const:CustomBLC", "LTConst:deltaTw", "LTConst:fT1", "LTConst:fT2", "LTConst:fTeb",
    "LQConst:Leaf", "LQConst:Ambient", "LQConst:abs_ambient", "LQConst:abs_redLED",
    "LQConst:abs_greenLED", "LQConst:abs_blueLED", "LQConst:abs_whiteLED",
    "LQConst:abs_redFlr", "LQConst:abs_blueFlr", "LQConst:k_ambient", "LQConst:k_redLED",
    "LQConst:k_greenLED", "LQConst:k_blueLED", "LQConst:k_whiteLED", "LQConst:k_redFlr",
    "LQConst:k_blueFlr", "QConst:fQ_Amb_in", "QConst:fQ_Amb_out", "QConst:fQ_HeadLS",
    "QConst:fQ_ConsoleLS", "QConst:fQ_Flr", "LeakConst:fan_a", "LeakConst:fan_b",
    "LeakConst:fan_c", "LeakConst:fan_d", "LeakConst:Fs_meas", "LeakConst:Fs_true",
    "LeakConst:leak_wt", "File opened", "ChType", "CustomBLC", "Geometry", "K", "Oxygen", "S")

}
