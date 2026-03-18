# Import your libraries
import pyspark
from pyspark.sql.functions import col, max, when, abs

# Join tables
df = db_employee.join(db_dept, db_employee.department_id == db_dept.id)

# Calculate absolute difference
result = df.groupBy().agg(
    abs(
        max(when(col("department") == "marketing", col("salary"))) -
        max(when(col("department") == "engineering", col("salary")))
    ).alias("salary_difference")
)

# Return result
result.toPandas()