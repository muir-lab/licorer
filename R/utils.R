#' Get vector of acceptable data types
#'
#' @examples
#' acceptable_types()
#'
#' @export
acceptable_types <- function() {

  c("Auxiliary", "Const", "FLR",   "FlrLS", "FlrStats", "GasEx", "LeafQ", "Leak",  "Match",
    "Meas",  "MPF", "Stability", "Status", "Sys", "UserDefVar")

}

#' Get lookup table of acceptable units for data
#'
#' @examples
#' acceptable_types()
#'
#' @export
acceptable_units <- function() {

  c("CustomBLC" = ("mol m-2 s-1"), "Oxygen" = ("%"), "S" = ("cm2"),
    "A_fs" = ("µmol m-2 s-1"), "Adark" = ("µmol m-2 s-1"), "ETR" = ("µmol m-2 s-1"),
    "Qabs" = ("µmol m-2 s-1"), "f_blue" = ("µmol m-2 s-1"), "FARREDFRAC" = ("µmol m-2 s-1"),
    "PFD" = ("µmol m-2 s-1"), "f_red" = ("µmol m-2 s-1"), "REDMODAVG" = ("µmol m-2 s-1"),
    "dF/dt" = ("min-1"), "dF_dc/dt" = ("min-1"), "period" = ("s"), "A" = ("µmol m-2 s-1"),
    "Ci" = ("µmol mol-1"), "Ca" = ("µmol mol-1"), "E" = ("mol m-2 s-1"), "Pca" = ("Pa"),
    "Pci" = ("Pa"), "RHcham" = ("%"), "Rabs" = ("W m-2"), "SVPcham" = ("kPa"),
    "SVPleaf" = ("kPa"), "TIME" = ("s"), "TleafCnd" = ("°C"), "TleafEB" = ("°C"),
    "VPDleaf" = ("kPa"), "VPcham" = ("kPa"), "gbw" = ("mol m-2 s-1"), "gsw" = ("mol m-2 s-1"),
    "gtc" = ("mol m-2 s-1"), "gtw" = ("mol m-2 s-1"), "Qin" = ("µmol m-2 s-1"),
    "Qabs" = ("µmol m-2 s-1"), "convert" = ("J µmol-1"), "P2_DQDT" = ("mol m-2 s-1"),
    "PHASE1_DURATION" = ("ms"), "PHASE2_DURATION" = ("ms"), "PHASE3_DURATION" = ("ms"),
    "QMAX" = ("µmol m-2 s-1"), "co2_adj" = ("µmol mol-1"), "co2_at" = ("µmol mol-1"),
    "co2_cv" = ("%"), "h2o_adj" = ("µmol mol-1"), "h2o_at" = ("µmol mol-1"), "h2o_cv" = ("%"),
    "time_Match" = ("s"), "co2_at" = ("µmol mol-1"), "CO2_r" = ("µmol mol-1"),
    "CO2_s" = ("µmol mol-1"), "Fan_speed" = ("rpm"), "Flow" = ("µmol s-1"),
    "H2O_r" = ("mmol mol-1"), "H2O_s" = ("mmol mol-1"), "PPFD_in" = ("mol m-2 s-1"),
    "PPFD_out" = ("mol m-2 s-1"), "Pchamber" = ("kPa"), "Press" = ("kPa"),
    "TIME" = ("s"), "Tchamber" = ("°C"), "Tleaf" = ("°C"), "Tleaf2" = ("°C"),
    "CO2_a" = ("µmol mol-1"), "CO2_b" = ("µmol mol-1"), "CO2_d" = ("µmol mol-1"),
    "CO2_r_d" = ("µmol mol-1"), "CO2_s_d" = ("µmol mol-1"), "Flow_a" = ("µmol s-1"),
    "Flow_b" = ("µmol s-1"), "H20_a" = ("mmol mol-1"), "H2O_b" = ("mmol mol-1"),
    "H2O_d" = ("mmol mol-1"), "Td_r" = ("°C"), "Td_s" = ("°C"),
    "e_r" = ("kPa"), "e_s" = ("kPa"), "ADC_CH1" = ("V"), "ADC_CH2" = ("V"),
    "ADC_CH3" = ("V"), "ADC_CH4" = ("V"), "ADC_CH5" = ("V"), "ADC_CH6" = ("V"),
    "ADC_CH7" = ("V"), "ADC_CH8" = ("V"), "Flow_a_v" = ("V"), "Flow_b_v" = ("V"),
    "Vflow" = ("V"), "VPchabmer" = ("V"), "Wc_a" = ("V"), "Wc_b" = ("V"),
    "Wco_a" = ("V"), "Wco_b" = ("V"), "Ww_a" = ("V"), "Ww_b" = ("V"),
    "Wwo_a" = ("V"), "Wwo_b" = ("V"), "abs_c_a" = ("V"), "abs_c_b" = ("V"),
    "abs_h_a" = ("V"), "abs_h_b" = ("V"), "leaf2_t_v" = ("V"), "leav_t_v" = ("V"),
    "A.GasEx:MN" = ("µmol m-2 s-1"), "A.GasEx:SD" = ("µmol m-2s-1"),
    "A.GasEx:SLP" = ("µmol m-2 s-1 min-1"), "CO2_s.Meas:MN" = ("µmol mol-1"),
    "CO2_s:Meas:SLP" = ("µmol m-2 s-1 min-1"), "H2O_s.Meas:MN" = ("mmol mol-1"),
    "H2O_s.Meas:SE" = ("mmol m-2 s-1"), "H2O_s:Meas:SLP" = ("µmol m-2 s-1 min-1"),
    "CO2_percent" = ("%"), "CO2_r_setpoint" = ("µmol mol-1"), "Desiccant_percent" = ("%"),
    "Flow_r" = ("µmol s-1"), "Flow_s" = ("µmol s-1"), "H2O_r_setpoint" = ("mmol mol-1"),
    "Heatx_setpoint" = ("°C"), "Humidifier_percent" = ("%"),
    "MatchCO2" = ("µmol mol-1"), "MatchH2O" = ("mmol mol-1"),
    "MarchValveR" = ("%"), "MarchValveS" = ("%"), "SS_a" = ("%"), "SS_b" = ("%"),
    "Ta" = ("°C"), "Tb" = ("°C"), "Tchopper" = ("°C"),
    "Tirga_block" = ("°C"), "Txchg" = ("°C"), "AccCO2_soda" = ("mg"),
    "AccH2O_des" = ("mg"), "AccH2O_hum" = ("mg"), "CO2_h" = ("h"),
    "Console_H2O" = ("mmol mol-1"), "Console_RH" = ("%"), "Concole_T" = ("°C"),
    "Fan_percent" = ("%"), "Flow_percent" = ("%"), "TleafJunction" = ("°C"),
    "TleafJunction2" = ("°C"), "diag_12v" = ("V"), "diag_20v" = ("V"),
    "diag_3_3v" = ("V"), "diag_5_4v" = ("V"), "diag_5v" = ("V"), "Flow_b" = ("µmol s-1"),
    "heatx_t_pwm_v" = ("V"), "time_Sys" = ("s"), "date" = ("s"), "elapsed" = ("s"),
    "TIME_GasEx" = ("s"), "SenHFlux" = ("W m-2"), "NetTherm" = ("W m-2"), "EBSum" = ("W m-2"),
    "LatHFlux" = ("W m-2"), "Leak" = ("µmol s-1"), "LeakPct" = ("%"), "CorrFactPct" = ("%"),
    "Fan" = ("µmol s-1"), "Afs" = ("µmol m-2 s-1"), "Qabs_fs" = ("µmol m-2 s-1"),
    "PhiCO2" = ("µmol µmol-1"), "P1_dur" = ("ms"), "P2_dur" = ("ms"), "P3_dur" = ("ms"),
    "P1_Qmax" = ("µmol m-2 s-1"), "P2_dQdt" = ("mol m-2 s-2"), "TIME_Meas" = ("s"),
    "Pa" = ("kPa"), "ΔPcham" = ("kPa"), "Tair" = ("°C"), "Offset" = ("°C"),
    "Offset2" = ("°C"), "Qamb_in" = ("µmol m-2 s-1"), "Qamb_out" = ("µmol m-2 s-1"),
    "Q" = ("µmol m-2 s-1"), "H2O_r_sp" = ("mmol mol-1")
    )

}
