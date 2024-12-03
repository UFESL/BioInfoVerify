import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.lines as mlines



# Creating a DataFrame from the given data
data = {
    "Number of test": [10, 100, 1000, 10000, 100000],
    "bntseq_line": [15.78, 30.67, 45.89, 59.9, 62.78],
    "bwa_line": [19.78, 20.89, 43.87, 70.3, 75.89],
    "bwt_line": [20.89, 40.67, 55.67, 74.9, 78.35],
    "bntseq_branch": [25.8, 26.9, 30.87, 31.8, 31.8],
    "bwa_branch": [30.1, 35.1, 37.6, 40.1, 40.4],
    "bwt_branch": [32.3, 33.4, 35.1, 36.9, 37]
}

df = pd.DataFrame(data)
df.set_index('Number of test', inplace=True)
# Re-creating the plot with correct legends as specified
plt.figure(figsize=(12, 6))

# Define colors for each module for consistency
colors = {'bntseq': 'blue', 'bwa': 'green', 'bwt': 'red'}



# Plot Line Coverage with solid lines and Branch Coverage with dotted lines
for module, color in colors.items():
    plt.plot(df.index, df[f'{module}_line'], label=f'{module} (Line Coverage)', marker='o', linestyle='-', color=color)
    plt.plot(df.index, df[f'{module}_branch'], label=f'{module} (Branch Coverage)', marker='o', linestyle=':', color=color)

# Labeling and Style
# plt.title('Line and Branch Coverage Over Different Number of Tests', fontsize=16)
plt.xlabel('Number of Tests', fontsize=18)
plt.ylabel('Coverage (%)', fontsize=18)
plt.xscale('log') # Log scale due to wide range of values
plt.xticks(fontsize=18)
plt.yticks(fontsize=18)
plt.grid(True)

# Create custom legends
legend_elements = [
    mlines.Line2D([], [], color='black', linestyle='-', marker='o', label='Line Coverage'),
    mlines.Line2D([], [], color='black', linestyle=':', marker='o', label='Branch Coverage')
]

# Module legends
module_legends = [mlines.Line2D([], [], color=color, marker='o', linestyle='-', label=module) for module, color in colors.items()]

# Legend for Line Types
legend_line_types = plt.legend(handles=legend_elements, loc='upper center', fontsize=18,  title_fontsize=14)
plt.gca().add_artist(legend_line_types)

# Legend for Modules
legend_modules = plt.legend(handles=module_legends, loc='upper left', fontsize=18, title_fontsize=14)

# Saving the figure
output_filepath = '/Users/hasini-local/Documents/Research/bioinfomatics/bwa/random-cov.png'
plt.savefig(output_filepath)

# Show the plot
plt.show()

output_filepath
