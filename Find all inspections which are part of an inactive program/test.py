# Import your libraries
import pandas as pd

# Start writing code
inactive_part = los_angeles_restaurant_health_inspections[
       los_angeles_restaurant_health_inspections["program_status"] == "INACTIVE"
]