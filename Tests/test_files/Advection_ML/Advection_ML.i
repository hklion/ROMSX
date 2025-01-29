# ------------------  INPUTS TO MAIN PROGRAM  -------------------
remora.max_step = 10
remora.stop_time = 300000.0

amrex.fpe_trap_invalid = 1

# PROBLEM SIZE & GEOMETRY
remora.prob_lo     =      0.     0.    -150.
remora.prob_hi     =  40000. 40000.       0.

remora.n_cell           = 80     80      16

remora.is_periodic = 1 1 0

# TIME STEP CONTROL
remora.fixed_dt       = 100.0 # Timestep size (seconds)
remora.fixed_ndtfast_ratio  = 10 # Baratropic timestep size (seconds)

# DIAGNOSTICS & VERBOSITY
remora.sum_interval   = 10       # timesteps between computing mass
remora.v              = 0       # verbosity in REMORA.cpp (0: none, 1: print boxes, etc, 2: print values)
amr.v                = 1       # verbosity in Amr.cpp

# REFINEMENT / REGRIDDING
amr.max_level       = 1       # maximum level number allowed
amr.ref_ratio_vect = 2 2 1
amr.n_error_buf = 3 3
amr.regrid_int=1

# CHECKPOINT FILES
remora.check_file      = chk        # root name of checkpoint file
remora.check_int       = -57600      # number of timesteps between checkpoints

# PLOTFILES
remora.plot_file     = plt        # prefix of plotfile name
remora.plot_int      = 100          # number of timesteps between plotfiles
remora.plot_vars     = salt temp scalar x_velocity y_velocity z_velocity
remora.plotfile_type = amrex

# SOLVER CHOICE
remora.use_coriolis = false
remora.flat_bathymetry=true
remora.use_barotropic=true
remora.tracer_horizontal_advection_scheme = "centered4" # upstream3 or centered4
remora.spatial_order = 2

# Linear EOS parameters
remora.R0    = 1027.0  # background density value (Kg/m3) used in Linear Equation of State
remora.S0    = 35.0    # background salinity (nondimensional) constant
remora.T0    = 14.0    # background potential temperature (Celsius) constant
remora.Tcoef = 0.0 #1.7e-4  # linear equation of state parameter (1/Celsius)
remora.Scoef = 0.0 #1.0e-4  # linear equation of state parameter (nondimensional)
remora.rho0  = 1025.0  # Mean density (Kg/m3) used when Boussinesq approx is inferred

# Coriolis params
remora.coriolis_f0 = 0.0
remora.coriolis_beta = 0.0

remora.rdrag=0.0

# PROBLEM PARAMETERS (velocity fields)
remora.prob.u_0   =1.0e-0
remora.prob.v_0   = -1.0e-0

remora.refinement_indicators = scalar
remora.scalar.max_level = 1
remora.scalar.field_name = scalar
remora.scalar.value_greater = 0.5
remora.scalar.start_time = 200
remora.coupling_type = "TwoWay"

