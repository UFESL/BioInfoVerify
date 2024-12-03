import pandas as pd
import matplotlib.pyplot as plt

# Creating a DataFrame from the given data
data = {
    "Number of test": [10, 100, 1000, 10000, 100000],
    "bntseq": [25.8, 26.9, 30.87, 31.8, 31.8],
    "bwa": [30.1, 35.1, 37.6, 40.1, 40.4],
    "bwt": [32.3, 33.4, 35.1, 36.9, 37]
}
df = pd.DataFrame(data)

# Setting the 'Number of test' as the index
df.set_index('Number of test', inplace=True)

# Plotting
plt.figure(figsize=(10, 6))
for column in df.columns:
    plt.plot(df.index, df[column], marker='o', label=column)

# plt.title('Branch Coverage Comparison')
plt.xlabel('Number of Tests (Log Scale)')
plt.ylabel('Branch Coverage (%)')
plt.xscale('log') # the number of tests varies exponentially
plt.grid(True)
plt.legend()
plt.tight_layout()

# Adding a legend
plt.legend()

# Showing grid
plt.grid(True)

# Display the plot
plt.show()
