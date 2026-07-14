# ============================================================================
# ENVIRONMENTAL DATA SCIENCE PLATFORM v12.0 - RESEARCH GRADE
# ============================================================================
# System: Intel i5-4570 @ 3.20GHz, 16GB RAM, Windows 11 Pro
# Domain: Environmental Science, Geospatial AI, Climate Analytics, Hydrology
# ============================================================================

#Requires -Version 7.0
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
$ErrorActionPreference = "Continue"

# ============================================================================
# PLATFORM METADATA
# ============================================================================

$PLATFORM = @{
    version       = "12.0"
    release       = "Research Grade"
    created       = "2026-07-14"
    schema        = "2026.07"
    machine       = "i5-4570"
    ram           = "16GB"
    os            = "Windows 11 Pro"
    owner         = "Aammar"
    domain        = "Environmental Data Science & Geospatial AI"
    type          = "Research Workstation"
    last_reviewed = "2026-07-14"
}

# ============================================================================
# SIMPLIFIED CONFIGURATION
# ============================================================================

$CONFIG = @{
    PythonVersion  = "3.11"
    BaseDir        = "E:\EnvironmentalDataScience"
    CondaCache     = "E:\CondaCache"
    EnvDir         = "C:\ProgramData\miniconda3\envs"
    BackupDir      = "$env:USERPROFILE\Desktop\platform_backups"
    LogFile        = "$env:USERPROFILE\Desktop\platform_v12_log.txt"
    DashboardFile  = "$env:USERPROFILE\Desktop\platform_dashboard.html"
    StartTime      = Get-Date
    OverwriteEnvs  = $false
    MaxRetries     = 3
    MaxEnvSizeGB   = 12
    HealthCheck    = $true
    TrackUsage     = $true
    UseMicromamba  = $true
}

# ============================================================================
# COMPLETE ENVIRONMENT MANIFESTS (Research Grade)
# ============================================================================

$MANIFESTS = @{
    "data-analyst" = @{
        name        = "data-analyst"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "xarray",
            "netcdf4",
            "matplotlib",
            "seaborn",
            "jupyterlab",
            "openpyxl",
            "xlrd",
            "ipykernel",
            "scipy",
            "statsmodels",
            "pingouin"
        )
        pip = @(
            "sqlalchemy",
            "psycopg2-binary",
            "polars",
            "duckdb",
            "pyarrow",
            "great-expectations",
            "pandera",
            "cerberus"
        )
        description     = "Core Data Analysis - Tabular, Time-Series, Climate Data"
        category        = "Core"
        priority        = 1
        status          = "active"
        lifecycle       = "production"
        owner           = "Aammar"
        estimated_time  = "8 min"
        tags            = @("analysis", "timeseries", "climate", "sql", "datavalidation")
        verify = @(
            "import pandas; print(f'pandas {pandas.__version__}')",
            "import xarray; print(f'xarray {xarray.__version__}')",
            "import duckdb; print(f'duckdb {duckdb.__version__}')"
        )
    }
    "ml-engineer" = @{
        name        = "ml-engineer"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "scikit-learn>=1.6,<2.0",
            "xgboost",
            "lightgbm",
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "ipykernel",
            "joblib"
        )
        pip = @(
            "catboost",
            "shap",
            "lime",
            "optuna",
            "prophet",
            "tsfresh",
            "mapie",
            "pytest-benchmark",
            "memory-profiler",
            "line-profiler"
        )
        description     = "ML Engineering - Predictive Modeling, Forecasting, Explainability"
        category        = "Core"
        priority        = 2
        status          = "active"
        lifecycle       = "production"
        owner           = "Aammar"
        estimated_time  = "10 min"
        tags            = @("ml", "forecasting", "timeseries", "explainable", "benchmarking")
        verify = @(
            "import sklearn; print(f'sklearn {sklearn.__version__}')",
            "import xgboost; print(f'xgboost {xgboost.__version__}')",
            "import shap; print(f'SHAP {shap.__version__}')"
        )
        requires = @("data-analyst")
    }
    "ai-engineer" = @{
        name        = "ai-engineer"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("pytorch", "conda-forge")
        dependencies = @(
            "pytorch",
            "cpuonly",
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "ipykernel"
        )
        pip = @(
            "transformers",
            "datasets",
            "tokenizers",
            "sentence-transformers",
            "timm",
            "albumentations",
            "opencv-python-headless",
            "wandb",
            "tensorboard",
            "pytorch-lightning",
            "accelerate",
            "evaluate",
            "segment-anything",
            "ultralytics",
            "torchgeo",
            "ray"
        )
        description     = "AI Engineering - Deep Learning, Computer Vision, Earth Observation AI"
        category        = "Core"
        priority        = 3
        status          = "active"
        lifecycle       = "production"
        owner           = "Aammar"
        estimated_time  = "18 min"
        tags            = @("deeplearning", "nlp", "cv", "earthobservation", "segment-anything")
        verify = @(
            "import torch; print(f'PyTorch {torch.__version__}')",
            "import transformers; print(f'transformers {transformers.__version__}')",
            "import torchgeo; print(f'TorchGeo {torchgeo.__version__}')"
        )
        requires = @("ml-engineer")
    }
    "geo-env" = @{
        name        = "geo-env"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "geopandas",
            "rasterio",
            "shapely",
            "pyproj",
            "fiona",
            "xarray",
            "netcdf4",
            "rioxarray",
            "cartopy",
            "folium",
            "contextily",
            "ipykernel",
            "duckdb-spatial",
            "geoalchemy2"
        )
        pip = @(
            "earthengine-api",
            "leafmap",
            "geemap",
            "stackstac",
            "planetary-computer",
            "pystac-client",
            "odc-stac",
            "rio-cogeo",
            "cogeo-mosaic",
            "sentinelhub",
            "eemont",
            "metpy",
            "windspharm"
        )
        description     = "Geospatial Analysis - GIS, Remote Sensing, Satellite Imagery, Meteorology"
        category        = "Core"
        priority        = 4
        status          = "active"
        lifecycle       = "production"
        owner           = "Aammar"
        estimated_time  = "15 min"
        tags            = @("gis", "remote-sensing", "satellite", "mapping", "meteorology")
        verify = @(
            "import geopandas; print(f'GeoPandas {geopandas.__version__}')",
            "import rasterio; print(f'Rasterio {rasterio.__version__}')",
            "import xarray; print(f'xarray {xarray.__version__}')",
            "import metpy; print(f'MetPy {metpy.__version__}')"
        )
        requires = @("data-analyst")
    }
    "climate-science" = @{
        name        = "climate-science"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "xarray",
            "netcdf4",
            "cfgrib",
            "cftime",
            "zarr",
            "dask",
            "bottleneck",
            "numexpr",
            "ipykernel",
            "distributed"
        )
        pip = @(
            "xcdat",
            "xesmf",
            "clisops",
            "intake-esm",
            "esmpy",
            "wrf-python",
            "xgcm",
            "gsw",
            "oceans"
        )
        description     = "Climate Science - CMIP6, ERA5, Weather Forecasting, Oceanography"
        category        = "Core"
        priority        = 5
        status          = "active"
        lifecycle       = "staging"
        owner           = "Aammar"
        estimated_time  = "12 min"
        tags            = @("climate", "cmip6", "era5", "weather", "oceanography")
        verify = @(
            "import xarray; print(f'xarray {xarray.__version__}')",
            "import xcdat; print(f'xCDAT {xcdat.__version__}')",
            "import xgcm; print(f'xgcm {xgcm.__version__}')"
        )
        requires = @("data-analyst")
    }
    "stats-research" = @{
        name        = "stats-research"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "scipy",
            "statsmodels",
            "pingouin",
            "pymc",
            "arviz",
            "lifelines",
            "ipykernel"
        )
        pip = @(
            "mapie",
            "snakeviz"
        )
        description     = "Statistical Research - Bayesian, Time-Series, Uncertainty Quantification"
        category        = "Research"
        priority        = 6
        status          = "active"
        lifecycle       = "development"
        owner           = "Aammar"
        estimated_time  = "8 min"
        tags            = @("statistics", "bayesian", "timeseries", "uncertainty")
        verify = @(
            "import statsmodels; print(f'statsmodels {statsmodels.__version__}')",
            "import pymc; print(f'PyMC {pymc.__version__}')"
        )
        requires = @("data-analyst")
    }
    "hydro-env" = @{
        name        = "hydro-env"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "xarray",
            "netcdf4",
            "matplotlib",
            "ipykernel",
            "geopandas"
        )
        pip = @(
            "hydroeval",
            "hydrostats",
            "pysheds",
            "hydrofunctions",
            "pyflwdir",
            "flopy"
        )
        description     = "Hydrology - Flood Prediction, Watershed Analysis, River Networks"
        category        = "Research"
        priority        = 7
        status          = "optional"
        lifecycle       = "development"
        owner           = "Aammar"
        estimated_time  = "8 min"
        tags            = @("hydrology", "flood", "watershed", "river")
        verify = @(
            "import hydroeval; print(f'hydroeval {hydroeval.__version__}')",
            "import pysheds; print(f'pysheds {pysheds.__version__}')"
        )
        requires = @("geo-env")
    }
    "dev-tools" = @{
        name        = "dev-tools"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @("python", "pip", "ipykernel")
        pip = @(
            "black",
            "ruff",
            "pytest",
            "pre-commit",
            "rich",
            "uv",
            "pip-audit",
            "safety",
            "nbstripout",
            "jupyterlab-code-formatter",
            "ipywidgets",
            "nbconvert",
            "papermill",
            "memory-profiler",
            "line-profiler",
            "python-dotenv",
            "mkdocs",
            "mkdocs-material",
            "sphinx",
            "quarto",
            "conda-lock",
            "pixi"
        )
        description     = "Development Tools - Code Quality, Testing, Profiling, Documentation"
        category        = "Utilities"
        priority        = 0
        status          = "active"
        lifecycle       = "production"
        owner           = "Aammar"
        estimated_time  = "5 min"
        tags            = @("development", "quality", "testing", "profiling", "docs")
        verify = @(
            "import black; print(f'black {black.__version__}')",
            "import pytest; print(f'pytest {pytest.__version__}')",
            "import mkdocs; print(f' MkDocs {mkdocs.__version__}')"
        )
    }
    "gen-ai" = @{
        name        = "gen-ai"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @("pandas>=2.3,<3", "numpy>=2.2,<3", "ipykernel")
        pip = @(
            "openai",
            "chromadb",
            "faiss-cpu",
            "sentence-transformers"
        )
        description     = "Generative AI - LLMs, RAG, Environmental Policy Analysis"
        category        = "Core"
        priority        = 8
        status          = "optional"
        lifecycle       = "development"
        owner           = "Aammar"
        estimated_time  = "8 min"
        tags            = @("llm", "rag", "policy", "text-analysis")
        verify = @(
            "import openai; print(f'openai {openai.__version__}')",
            "import chromadb; print(f'ChromaDB {chromadb.__version__}')"
        )
        requires = @("ai-engineer")
    }
    "mlops" = @{
        name        = "mlops"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "scikit-learn>=1.6,<2.0",
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "ipykernel"
        )
        pip = @(
            "mlflow",
            "dvc",
            "fastapi",
            "uvicorn",
            "evidently",
            "bentoml",
            "great-expectations",
            "prefect",
            "kedro"
        )
        description     = "MLOps - Pipelines, Monitoring, Model Deployment, Orchestration"
        category        = "Production"
        priority        = 9
        status          = "optional"
        lifecycle       = "staging"
        owner           = "Aammar"
        estimated_time  = "10 min"
        tags            = @("deployment", "monitoring", "pipelines", "versioning", "orchestration")
        verify = @(
            "import mlflow; print(f'MLflow {mlflow.__version__}')",
            "import fastapi; print(f'FastAPI {fastapi.__version__}')",
            "import prefect; print(f'Prefect {prefect.__version__}')"
        )
        requires = @("ml-engineer")
    }
    "dashboard-env" = @{
        name        = "dashboard-env"
        version     = "2026.07"
        python      = "3.11"
        channels    = @("conda-forge")
        dependencies = @(
            "pandas>=2.3,<3",
            "numpy>=2.2,<3",
            "matplotlib",
            "seaborn",
            "ipykernel",
            "plotly",
            "folium"
        )
        pip = @(
            "streamlit",
            "dash",
            "panel",
            "hvplot",
            "holoviews",
            "datashader"
        )
        description     = "Environmental Dashboards - Interactive Visualization, Decision Support"
        category        = "Production"
        priority        = 10
        status          = "optional"
        lifecycle       = "staging"
        owner           = "Aammar"
        estimated_time  = "8 min"
        tags            = @("dashboard", "visualization", "interactive", "decision-support")
        verify = @(
            "import plotly; print(f'plotly {plotly.__version__}')",
            "import streamlit; print(f'streamlit {streamlit.__version__}')",
            "import holoviews; print(f'holoviews {holoviews.__version__}')"
        )
        requires = @("geo-env")
    }
}

# ============================================================================
# INSTALLATION PROFILES
# ============================================================================

$PROFILES = @{
    "research-grade" = @{
        description = "Complete Research Platform (RECOMMENDED)"
        environments = @(
            "dev-tools",
            "data-analyst",
            "ml-engineer",
            "ai-engineer",
            "geo-env",
            "climate-science",
            "stats-research",
            "hydro-env"
        )
        estimated_size = "20 GB"
        recommended    = $true
    }
    "geospatial" = @{
        description  = "GIS & Remote Sensing Focus"
        environments = @("dev-tools", "data-analyst", "geo-env")
        estimated_size = "8 GB"
        recommended  = $false
    }
    "climate" = @{
        description  = "Climate Science Focus"
        environments = @("dev-tools", "data-analyst", "climate-science", "stats-research")
        estimated_size = "10 GB"
        recommended  = $false
    }
    "ai-research" = @{
        description  = "AI & ML Research Focus"
        environments = @("dev-tools", "data-analyst", "ml-engineer", "ai-engineer")
        estimated_size = "12 GB"
        recommended  = $false
    }
    "complete" = @{
        description  = "Complete Platform (All Environments)"
        environments = ($MANIFESTS.Keys | Sort-Object)
        estimated_size = "25 GB"
        recommended  = $false
    }
}

# ============================================================================
# LOGGING FUNCTIONS
# ============================================================================

function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[$timestamp] [$Level] $Message"
    Write-Host $logEntry
    Add-Content -Path $CONFIG.LogFile -Value $logEntry
}

function Write-Section {
    param([string]$Title)
    $separator = "=" * 80
    Write-Log $separator
    Write-Log $Title
    Write-Log $separator
}

# ============================================================================
# SYSTEM FUNCTIONS
# ============================================================================

function Get-PackageManager {
    if ($CONFIG.UseMicromamba) {
        return "micromamba"
    }
    return "mamba"
}

function Test-CondaInstallation {
    $pm = Get-PackageManager
    try {
        $cmd = Get-Command $pm -ErrorAction Stop
        $version = & $pm --version 2>$null
        Write-Log "$pm found: $version at $($cmd.Source)"
        return $true
    } catch {
        Write-Log "Installing $pm..."
        if ($pm -eq "micromamba") {
            try {
                $rootPrefix = "$env:USERPROFILE\micromamba"
                $binDir     = Join-Path $rootPrefix "bin"
                $archive    = "$env:TEMP\micromamba.tar.bz2"
                $extractDir = "$env:TEMP\micromamba_extract"

                if (-not (Test-Path $binDir)) { New-Item -Path $binDir -ItemType Directory -Force | Out-Null }
                if (Test-Path $extractDir) { Remove-Item $extractDir -Recurse -Force -ErrorAction SilentlyContinue }
                New-Item -Path $extractDir -ItemType Directory -Force | Out-Null

                Write-Log "Downloading micromamba archive..."
                Invoke-WebRequest -Uri "https://micro.mamba.pm/api/micromamba/win-64/latest" -OutFile $archive -UseBasicParsing

                Write-Log "Extracting archive (tar)..."
                Push-Location $extractDir
                tar xf $archive 2>&1 | Out-String | Write-Log
                Pop-Location

                $extractedExe = Join-Path $extractDir "Library\bin\micromamba.exe"
                if (-not (Test-Path $extractedExe)) {
                    throw "micromamba.exe not found after extraction at $extractedExe"
                }

                $finalExe = Join-Path $binDir "micromamba.exe"
                Copy-Item $extractedExe $finalExe -Force

                # Make it available on PATH for this session and future ones
                if ($env:Path -notlike "*$binDir*") {
                    $env:Path += ";$binDir"
                }
                [Environment]::SetEnvironmentVariable("Path", "$([Environment]::GetEnvironmentVariable('Path','User'));$binDir", "User")
                [Environment]::SetEnvironmentVariable("MAMBA_ROOT_PREFIX", $rootPrefix, "User")
                $env:MAMBA_ROOT_PREFIX = $rootPrefix

                # Activate the shell hook for the current session so 'micromamba' works right away
                & $finalExe shell hook -s powershell | Out-String | Invoke-Expression

                Remove-Item $archive -Force -ErrorAction SilentlyContinue
                Remove-Item $extractDir -Recurse -Force -ErrorAction SilentlyContinue

                $check = & $finalExe --version 2>&1
                Write-Log "Micromamba installed successfully! Version: $check"
                return $true
            } catch {
                Write-Log "Micromamba installation failed: $_" "ERROR"
                return $false
            }
        } else {
            & conda install -n base mamba -c conda-forge -y 2>&1 | Out-String | Write-Log
            if ($LASTEXITCODE -eq 0) {
                Write-Log "Mamba installed successfully!"
                return $true
            }
        }
        Write-Log "Please install Miniconda first." "ERROR"
        return $false
    }
}

function Get-EnvironmentSize {
    param([string]$EnvName)
    try {
        $envPath = Join-Path $CONFIG.EnvDir $EnvName
        if (Test-Path $envPath) {
            $size = (Get-ChildItem -Path $envPath -Recurse -File -ErrorAction SilentlyContinue |
                     Measure-Object -Property Length -Sum).Sum
            return [math]::Round($size / 1MB, 2)
        }
    } catch {}
    return 0
}

function Get-DiskSpace {
    $drive = Get-PSDrive -Name "C"
    return @{
        Free  = [math]::Round($drive.Free / 1GB, 2)
        Used  = [math]::Round($drive.Used / 1GB, 2)
    }
}

function Test-DiskSpace {
    $space = Get-DiskSpace
    Write-Log "Available space on C: $($space.Free) GB"
    if ($space.Free -lt 25) {
        Write-Log "WARNING: Low disk space! Only $($space.Free) GB available." "WARNING"
        return $false
    }
    return $true
}

function Predict-DiskUsage {
    param([array]$Environments)

    $totalSize = 0
    foreach ($envName in $Environments) {
        if ($MANIFESTS.ContainsKey($envName)) {
            $size = 0
            switch ($envName) {
                "data-analyst"    { $size = 2.5 }
                "ml-engineer"     { $size = 2.5 }
                "ai-engineer"     { $size = 6.0 }
                "geo-env"         { $size = 3.5 }
                "climate-science" { $size = 3.0 }
                "stats-research"  { $size = 2.0 }
                "hydro-env"       { $size = 1.5 }
                "dev-tools"       { $size = 0.5 }
                "gen-ai"          { $size = 2.0 }
                "mlops"           { $size = 1.5 }
                "dashboard-env"   { $size = 1.5 }
            }
            $totalSize += $size
        }
    }

    $space = Get-DiskSpace
    return @{
        TotalGB     = [math]::Round($totalSize, 1)
        AvailableGB = $space.Free
        IsPossible  = ($space.Free - $totalSize) -gt 3
    }
}

# ============================================================================
# ENVIRONMENT EXPORT
# ============================================================================

function Export-Environment {
    param(
        [string]$EnvName,
        [string]$Version = (Get-Date -Format "yyyyMMdd")
    )

    Write-Log "Exporting $EnvName..."
    $pm = Get-PackageManager
    $exportDir = Join-Path $CONFIG.BackupDir "exports"

    if (-not (Test-Path $exportDir)) {
        New-Item -Path $exportDir -ItemType Directory -Force | Out-Null
    }

    $yamlPath = Join-Path $exportDir "$EnvName-$Version.yml"
    & $pm env export -n $EnvName --from-history > $yamlPath 2>&1
    Write-Log "  Exported YAML: $yamlPath"

    $lockPath = Join-Path $exportDir "$EnvName-$Version.lock.yml"
    & $pm env export -n $EnvName > $lockPath 2>&1
    Write-Log "  Exported lock: $lockPath"

    $reqPath = Join-Path $exportDir "$EnvName-$Version-requirements.txt"
    & $pm run -n $EnvName pip freeze > $reqPath 2>&1
    Write-Log "  Exported requirements: $reqPath"

    $explicitPath = Join-Path $exportDir "$EnvName-$Version-explicit.txt"
    & $pm list -n $EnvName --explicit > $explicitPath 2>&1
    Write-Log "  Exported explicit: $explicitPath"
}

# ============================================================================
# ENVIRONMENT CREATION
# ============================================================================

function Create-Environment {
    param(
        [string]$EnvName,
        [hashtable]$Manifest
    )

    $envStart = Get-Date
    Write-Section "Creating $EnvName ($($Manifest.description))"
    Write-Log "Version: $($Manifest.version) | Status: $($Manifest.status) | Time: $($Manifest.estimated_time)"
    Write-Log "Owner: $($Manifest.owner) | Lifecycle: $($Manifest.lifecycle)"

    $pm = Get-PackageManager

    $exists = & $pm env list | Select-String -Pattern "^$EnvName\s"
    if ($exists) {
        if ($CONFIG.OverwriteEnvs) {
            Write-Log "Removing existing environment..."
            & $pm env remove -n $EnvName -y 2>&1 | Out-String | Write-Log
        } else {
            Write-Log "Environment exists. Skipping..." "WARNING"
            return $true
        }
    }

    $channelArgs = @()
    foreach ($channel in $Manifest.channels) {
        $channelArgs += "-c"
        $channelArgs += $channel
    }

    $attempt = 0
    $success = $false

    while ($attempt -lt $CONFIG.MaxRetries -and -not $success) {
        $attempt++
        Write-Log "Attempt $attempt of $($CONFIG.MaxRetries)"

        try {
            $createArgs = @("create", "-n", $EnvName, "python=$($Manifest.python)", "pip", "-y") + $channelArgs
            & $pm $createArgs 2>&1 | Out-String | Write-Log
            if ($LASTEXITCODE -ne 0) { throw "Creation failed" }

            if ($Manifest.dependencies.Count -gt 0) {
                Write-Log "Installing dependencies..."
                $installArgs = @("install", "-n", $EnvName) + $Manifest.dependencies + @("-y") + $channelArgs
                & $pm $installArgs 2>&1 | Out-String | Write-Log
                if ($LASTEXITCODE -ne 0) { throw "Dependency installation failed" }
            }

            if ($Manifest.pip.Count -gt 0) {
                Write-Log "Installing pip packages..."
                $pipArgs = @("run", "-n", $EnvName, "pip", "install") + $Manifest.pip
                & $pm $pipArgs 2>&1 | Out-String | Write-Log
                if ($LASTEXITCODE -ne 0) { throw "Pip installation failed" }
            }

            $success = $true

        } catch {
            Write-Log "Attempt $attempt failed: $_" "WARNING"
            & $pm env remove -n $EnvName -y 2>&1 | Out-String | Write-Log
            if ($attempt -lt $CONFIG.MaxRetries) {
                Write-Log "Retrying in 5 seconds..."
                Start-Sleep -Seconds 5
            }
        }
    }

    if (-not $success) {
        Write-Log "Failed to create $EnvName" "ERROR"
        return $false
    }

    Write-Log "Installing Jupyter kernel..."
    & $pm run -n $EnvName python -m ipykernel install --user --name $EnvName --display-name "Python ($EnvName)" 2>&1 | Out-String | Write-Log

    if ($Manifest.verify.Count -gt 0 -and $CONFIG.HealthCheck) {
        Write-Log "Verifying installation..."
        $passed = 0
        foreach ($check in $Manifest.verify) {
            & $pm run -n $EnvName python -c $check 2>&1 | Out-String | Write-Log
            if ($LASTEXITCODE -eq 0) {
                Write-Log "PASS: $check"
                $passed++
            } else {
                Write-Log "FAIL: $check" "WARNING"
            }
        }
        Write-Log "Verification: $passed/$($Manifest.verify.Count) passed"
    }

    $duration = (Get-Date) - $envStart
    $size = Get-EnvironmentSize -EnvName $EnvName
    Write-Log "Installation time: $($duration.ToString('mm\:ss'))"
    Write-Log "Final size: $size MB"

    Export-Environment -EnvName $EnvName
    Create-Launcher -EnvName $EnvName

    return $true
}

# ============================================================================
# LAUNCHER
# ============================================================================

function Create-Launcher {
    param([string]$EnvName)

    $activateScript = "$env:USERPROFILE\micromamba\condabin\micromamba.bat"
    if (-not (Test-Path $activateScript)) {
        $activateScript = "C:\ProgramData\miniconda3\Scripts\activate.bat"
    }

    $batContent = @"
@echo off
echo ============================================
echo Activating $EnvName environment...
echo ============================================
call "$activateScript"
micromamba activate $EnvName
echo.
echo Active environment: %CONDA_DEFAULT_ENV%
echo.
cmd /k
"@

    $batPath = "$env:USERPROFILE\Desktop\start_$EnvName.bat"
    $batContent | Out-File -FilePath $batPath -Encoding ASCII
    Write-Log "Created launcher: $batPath"
}

# ============================================================================
# PROJECT STRUCTURE GENERATOR
# ============================================================================

function Create-ProjectStructure {
    Write-Section "Creating Project Structure"

    $folders = @(
        "01_Data_Analysis",
        "02_ML_Engineering",
        "03_AI_Engineering",
        "04_Geospatial_Analysis",
        "05_Climate_Science",
        "06_Statistical_Research",
        "07_Hydrology",
        "08_Gen_AI",
        "09_MLOps",
        "10_Dashboards",
        "Data",
        "Notebooks",
        "Scripts",
        "Reports",
        "exports",
        "templates"
    )

    foreach ($folder in $folders) {
        $path = Join-Path $CONFIG.BaseDir $folder
        if (-not (Test-Path $path)) {
            New-Item -Path $path -ItemType Directory -Force | Out-Null
            Write-Log "Created: $path"
        }
    }

    # Project template with environmental data science structure
    $templatePath = Join-Path $CONFIG.BaseDir "templates\environmental-project"
    if (-not (Test-Path $templatePath)) {
        New-Item -Path $templatePath -ItemType Directory -Force | Out-Null

        $subFolders = @(
            "data\raw",
            "data\interim",
            "data\processed",
            "data\external",
            "notebooks",
            "src",
            "models",
            "reports\figures",
            "reports\tables",
            "configs",
            "tests",
            "docs",
            "scripts"
        )

        foreach ($sub in $subFolders) {
            New-Item -Path (Join-Path $templatePath $sub) -ItemType Directory -Force | Out-Null
        }

        $readmeDate = Get-Date -Format "yyyy-MM-dd"
        $readme = @"
# Environmental Data Science Project

## Project Metadata
- **Author**: Aammar
- **Date**: $readmeDate
- **Platform**: Environmental Data Science Platform v12.0
- **Environment**:

## Project Structure
- data/raw/ - Original, immutable datasets
- data/interim/ - Intermediate processed data
- data/processed/ - Final analysis datasets
- data/external/ - External reference data
- notebooks/ - Jupyter notebooks for exploration
- src/ - Python modules and functions
- models/ - Saved models and artifacts
- reports/figures/ - Generated figures
- reports/tables/ - Generated tables
- configs/ - Configuration files
- tests/ - Unit and integration tests
- docs/ - Documentation
- scripts/ - Utility and automation scripts

## Domain-Specific Considerations
- **Climate Data**: NetCDF, GRIB, CMIP6, ERA5
- **Geospatial**: Shapefiles, GeoTIFF, GeoJSON
- **Remote Sensing**: Satellite imagery, NDVI, Land Cover
- **Hydrology**: Watersheds, River networks, Flood models

## Setup
``````bash
conda activate <environment>
jupyter lab
``````

## Notes
Add project-specific notes here.
"@

        $readme | Out-File -FilePath (Join-Path $templatePath "README.md") -Encoding UTF8
        Write-Log "Created project template: $templatePath"
    }
}

# ============================================================================
# DASHBOARD (HTML SUMMARY REPORT)
# ============================================================================

function New-Dashboard {
    param([array]$Results)

    Write-Section "Generating Dashboard"

    $rows = ""
    foreach ($r in $Results) {
        $color = if ($r.Success) { "#2e7d32" } else { "#c62828" }
        $statusText = if ($r.Success) { "OK" } else { "FAILED" }
        $rows += "<tr><td>$($r.Name)</td><td>$($r.Description)</td><td style='color:$color;font-weight:bold'>$statusText</td><td>$($r.Duration)</td><td>$($r.SizeMB) MB</td></tr>`n"
    }

    $html = @"
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Environmental Data Science Platform - Dashboard</title>
<style>
body { font-family: Segoe UI, Arial, sans-serif; background: #f4f6f8; margin: 40px; color: #222; }
h1 { color: #1565c0; }
table { border-collapse: collapse; width: 100%; background: #fff; box-shadow: 0 1px 3px rgba(0,0,0,0.15); }
th, td { padding: 10px 14px; border-bottom: 1px solid #e0e0e0; text-align: left; }
th { background: #1565c0; color: #fff; }
tr:hover { background: #f1f7ff; }
.meta { color: #555; margin-bottom: 20px; }
</style>
</head>
<body>
<h1>Environmental Data Science Platform v$($PLATFORM.version)</h1>
<p class="meta">Owner: $($PLATFORM.owner) &nbsp;|&nbsp; Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss") &nbsp;|&nbsp; Machine: $($PLATFORM.machine) / $($PLATFORM.ram)</p>
<table>
<tr><th>Environment</th><th>Description</th><th>Status</th><th>Duration</th><th>Size</th></tr>
$rows
</table>
</body>
</html>
"@

    $html | Out-File -FilePath $CONFIG.DashboardFile -Encoding UTF8
    Write-Log "Dashboard written: $($CONFIG.DashboardFile)"
}

# ============================================================================
# PROFILE RESOLUTION (dependency-ordered)
# ============================================================================

function Resolve-EnvironmentOrder {
    param([array]$Names)

    $resolved = New-Object System.Collections.Generic.List[string]
    $visiting = @{}

    function Visit($n) {
        if ($resolved.Contains($n)) { return }
        if ($visiting.ContainsKey($n)) { return } # avoid cycles
        $visiting[$n] = $true
        if ($MANIFESTS.ContainsKey($n) -and $MANIFESTS[$n].ContainsKey("requires")) {
            foreach ($dep in $MANIFESTS[$n].requires) {
                Visit $dep
            }
        }
        if (-not $resolved.Contains($n)) { $resolved.Add($n) }
    }

    foreach ($n in $Names) { Visit $n }
    return $resolved
}

# ============================================================================
# MAIN ENTRY POINT
# ============================================================================

function Show-Banner {
    Write-Host ""
    Write-Host "================================================================================" -ForegroundColor Cyan
    Write-Host "   ENVIRONMENTAL DATA SCIENCE PLATFORM v$($PLATFORM.version) - $($PLATFORM.release)" -ForegroundColor Cyan
    Write-Host "   Owner: $($PLATFORM.owner)  |  Machine: $($PLATFORM.machine) / $($PLATFORM.ram)  |  $($PLATFORM.os)" -ForegroundColor Cyan
    Write-Host "================================================================================" -ForegroundColor Cyan
    Write-Host ""
}

function Show-ProfileMenu {
    Write-Host "Available installation profiles:" -ForegroundColor Yellow
    Write-Host ""
    $i = 1
    $keys = @($PROFILES.Keys)
    foreach ($key in $keys) {
        $p = $PROFILES[$key]
        $tag = if ($p.recommended) { " (RECOMMENDED)" } else { "" }
        Write-Host ("  [{0}] {1,-16} - {2}{3}  (~{4})" -f $i, $key, $p.description, $tag, $p.estimated_size)
        $i++
    }
    Write-Host ("  [{0}] {1,-16} - Pick individual environments manually" -f $i, "custom")
    Write-Host ""

    $choice = Read-Host "Select a profile by number (default: research-grade)"
    if ([string]::IsNullOrWhiteSpace($choice)) {
        return "research-grade"
    }
    $idx = 0
    if ([int]::TryParse($choice, [ref]$idx)) {
        if ($idx -ge 1 -and $idx -le $keys.Count) {
            return $keys[$idx - 1]
        } elseif ($idx -eq ($keys.Count + 1)) {
            return "custom"
        }
    }
    Write-Log "Invalid selection, defaulting to research-grade" "WARNING"
    return "research-grade"
}

function Show-CustomEnvironmentMenu {
    Write-Host ""
    Write-Host "Select environments to install (comma-separated numbers):" -ForegroundColor Yellow
    $keys = @($MANIFESTS.Keys | Sort-Object)
    for ($i = 0; $i -lt $keys.Count; $i++) {
        $m = $MANIFESTS[$keys[$i]]
        Write-Host ("  [{0}] {1,-16} - {2}" -f ($i + 1), $keys[$i], $m.description)
    }
    $selection = Read-Host "Enter numbers (e.g. 1,3,4)"
    $indices = $selection -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ -match '^\d+$' } | ForEach-Object { [int]$_ }
    $chosen = @()
    foreach ($idx in $indices) {
        if ($idx -ge 1 -and $idx -le $keys.Count) {
            $chosen += $keys[$idx - 1]
        }
    }
    return $chosen
}

function Start-Platform {
    Show-Banner

    if (-not (Test-Path (Split-Path $CONFIG.LogFile))) {
        New-Item -Path (Split-Path $CONFIG.LogFile) -ItemType Directory -Force | Out-Null
    }
    if (-not (Test-Path $CONFIG.BackupDir)) {
        New-Item -Path $CONFIG.BackupDir -ItemType Directory -Force | Out-Null
    }
    if (-not (Test-Path $CONFIG.BaseDir)) {
        New-Item -Path $CONFIG.BaseDir -ItemType Directory -Force | Out-Null
    }

    Write-Section "Startup Checks"

    if (-not (Test-CondaInstallation)) {
        Write-Log "Cannot continue without a package manager (micromamba/mamba)." "ERROR"
        return
    }

    Test-DiskSpace | Out-Null

    $profileKey = Show-ProfileMenu

    if ($profileKey -eq "custom") {
        $envNames = Show-CustomEnvironmentMenu
    } else {
        $envNames = $PROFILES[$profileKey].environments
    }

    if (-not $envNames -or $envNames.Count -eq 0) {
        Write-Log "No environments selected. Exiting." "WARNING"
        return
    }

    $orderedEnvs = Resolve-EnvironmentOrder -Names $envNames
    Write-Log "Install order: $($orderedEnvs -join ', ')"

    $prediction = Predict-DiskUsage -Environments $orderedEnvs
    Write-Log "Estimated disk usage: $($prediction.TotalGB) GB | Available: $($prediction.AvailableGB) GB"
    if (-not $prediction.IsPossible) {
        Write-Log "WARNING: Estimated usage may exceed available disk space!" "WARNING"
        $proceed = Read-Host "Continue anyway? (y/N)"
        if ($proceed -notin @("y", "Y")) {
            Write-Log "Aborted by user due to disk space concerns."
            return
        }
    }

    Create-ProjectStructure

    $results = @()
    foreach ($envName in $orderedEnvs) {
        if (-not $MANIFESTS.ContainsKey($envName)) {
            Write-Log "Unknown environment: $envName" "WARNING"
            continue
        }
        $manifest = $MANIFESTS[$envName]
        $envStart = Get-Date
        $ok = Create-Environment -EnvName $envName -Manifest $manifest
        $duration = ((Get-Date) - $envStart).ToString('mm\:ss')
        $results += [PSCustomObject]@{
            Name        = $envName
            Description = $manifest.description
            Success     = $ok
            Duration    = $duration
            SizeMB      = Get-EnvironmentSize -EnvName $envName
        }
    }

    New-Dashboard -Results $results

    Write-Section "Summary"
    $successCount = ($results | Where-Object { $_.Success }).Count
    Write-Log "Completed: $successCount / $($results.Count) environments installed successfully"
    Write-Log "Total elapsed: $(((Get-Date) - $CONFIG.StartTime).ToString('hh\:mm\:ss'))"
    Write-Log "Dashboard: $($CONFIG.DashboardFile)"
    Write-Log "Logs: $($CONFIG.LogFile)"
    Write-Log "Project folders: $($CONFIG.BaseDir)"

    Write-Host ""
    Write-Host "Done. Opening dashboard..." -ForegroundColor Green
    try {
        Start-Process $CONFIG.DashboardFile
    } catch {
        Write-Log "Could not auto-open dashboard: $_" "WARNING"
    }
}

# ============================================================================
# RUN
# ============================================================================

Start-Platform
