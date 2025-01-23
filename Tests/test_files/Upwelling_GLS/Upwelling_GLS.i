# ------------------  INPUTS TO MAIN PROGRAM  -------------------
max_step = 10

amrex.fpe_trap_invalid = 1

fabarray.mfiter_tile_size = 1024 1024 1024

# PROBLEM SIZE & GEOMETRY
geometry.prob_lo     =      0.     0.    -150.
geometry.prob_hi     =  41000. 80000.       0.

amr.n_cell           =  41     80      16

geometry.is_periodic = 1 0 0

remora.bc.ylo.type = "SlipWall"
remora.bc.yhi.type = "SlipWall"

# TIME STEP CONTROL
remora.fixed_dt       = 300.0 # Timestep size (seconds)

remora.fixed_fast_dt  = 10.0 # Baratropic timestep size (seconds)

remora.fixed_ndtfast_ratio  = 30 # Ratio of baroclinic to barotropic time step

# DIAGNOSTICS & VERBOSITY
remora.sum_interval  = 1       # timesteps between computing mass
remora.v             = 0       # verbosity in REMORA.cpp (0: none, 1: print boxes, etc, 2: print values)
amr.v                = 1       # verbosity in Amr.cpp

# REFINEMENT / REGRIDDING
amr.max_level       = 0       # maximum level number allowed

# CHECKPOINT FILES
remora.check_file      = chk        # root name of checkpoint file
remora.check_int       = -57600      # number of timesteps between checkpoints

# PLOTFILES
remora.plot_file     = plt        # prefix of plotfile name
remora.plot_int      = 100        # number of timesteps between plotfiles
remora.plot_vars     = salt temp x_velocity y_velocity z_velocity
remora.plotfile_type = amrex

# SOLVER CHOICE
remora.flat_bathymetry = false
remora.tracer_horizontal_advection_scheme = "upstream3" # upstream3 or centered4
remora.spatial_order = 2

# Linear EOS parameters
remora.R0    = 1027.0  # background density value (Kg/m3) used in Linear Equation of State
remora.S0    = 35.0    # background salinity (nondimensional) constant
remora.T0    = 14.0    # background potential temperature (Celsius) constant
remora.Tcoef = 1.7e-4  # linear equation of state parameter (1/Celsius)
remora.Scoef = 0.0     # linear equation of state parameter (nondimensional)
remora.rho0  = 1025.0  # Mean density (Kg/m3) used when Boussinesq approx is inferred

remora.tcline = 25.0

remora.vertical_mixing_type = "gls"
remora.gls_stability_type = "galperin"

remora.gls_P = 3.0
remora.gls_M = 1.5
remora.gls_N = -1.0
remora.gls_Kmin = 7.6e-6
remora.gls_Pmin = 1.0e-12

remora.gls_cmu0 = 0.5477
remora.gls_c1 = 1.44
remora.gls_c2 = 1.92
remora.gls_c3m = -0.4
remora.gls_c3p = 1.0
remora.gls_sigk = 1.0
remora.gls_sigp = 1.3

# turbulence closure parameters
remora.Akk_bak = 5.0e-6
remora.Akp_bak = 5.0e-6
remora.Akv_bak = 1.0e-5

# Coriolis params
remora.use_coriolis = true
remora.coriolis_type = beta_plane
remora.coriolis_f0 = -8.26e-5
remora.coriolis_beta = 0.0

