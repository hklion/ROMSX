# ------------------  INPUTS TO MAIN PROGRAM  -------------------
remora.max_step = 10

amrex.fpe_trap_invalid = 1

# PROBLEM SIZE & GEOMETRY
remora.prob_lo     =      0.      0.     -50.
remora.prob_hi     = 100000. 300000.       0.

remora.n_cell           =  20     60      50

remora.is_periodic = 1 0 0

remora.bc.ylo.type = "SlipWall"
remora.bc.yhi.type = "SlipWall"

# TIME STEP CONTROL
remora.fixed_dt       = 400.0 # Timestep size (seconds)

remora.fixed_ndtfast_ratio = 10

# DIAGNOSTICS & VERBOSITY
remora.sum_interval  = 1       # timesteps between integrated/max quantities, if remora.v > 0
remora.v             = 0       # verbosity in REMORA.cpp (0: none, 1: integrated quantities, etc, 2: print boxes)
amr.v                = 1       # verbosity in Amr.cpp

# CHECKPOINT FILES
remora.check_file      = chk        # root name of checkpoint file
remora.check_int       = -57600      # number of timesteps between checkpoints

# PLOTFILES
remora.plot_file     = plt        # prefix of plotfile name
remora.plot_int      = 10         # number of timesteps between plotfiles
remora.plot_vars     = salt temp x_velocity y_velocity z_velocity
remora.plotfile_type = amrex

# SOLVER CHOICE
remora.flat_bathymetry = false
remora.tracer_horizontal_advection_scheme = "upstream3" # upstream3 or centered4
remora.spatial_order = 2
remora.vertical_mixing_type = gls

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

remora.Zob = 0.002
remora.Zos = 0.002

# turbulence closure parameters
remora.Akk_bak = 5.0e-6
remora.Akp_bak = 5.0e-6
remora.Akv_bak = 1.0e-5


# Linear EOS parameters
remora.R0    = 1027.0  # background density value (Kg/m3) used in Linear Equation of State
remora.S0    = 15.0    # background salinity (nondimensional) constant
remora.T0    = 10.0    # background potential temperature (Celsius) constant
remora.Tcoef = 1.7e-4  # linear equation of state parameter (1/Celsius)
remora.Scoef = 7.6e-4     # linear equation of state parameter (nondimensional)
remora.rho0  = 1025.0  # Mean density (Kg/m3) used when Boussinesq approx is inferred

remora.tcline = 25.0

# Coriolis params
remora.use_coriolis = true
remora.coriolis_type = beta_plane
remora.coriolis_f0 = 1.0e-4
remora.coriolis_beta = 0.0

