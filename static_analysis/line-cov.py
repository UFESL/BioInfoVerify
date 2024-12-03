import numpy as np
import matplotlib.pyplot as plt

# Correcting the code by importing NumPy for the log10 function

# Given data from the table in the prompt
data = {
    'Number of Test': [10, 100, 1000, 10000, 100000],
    'bntseq': [15.78, 30.67, 40.89, 50.9, 60.78],
    'bwa': [19.78, 20.89, 43.87, 67.9, 75.89],
    'bwt': [20.89, 38.67, 50.67, 64.9, 78.35]
}

# Convert 'Number of Test' to logarithmic scale to better display the large range
log_test_numbers = [np.log10(num) for num in data['Number of Test']]

# Plotting the line graph
plt.figure(figsize=(10, 5))
plt.plot(log_test_numbers, data['bntseq'], marker='o', label='bntseq')
plt.plot(log_test_numbers, data['bwa'], marker='s', label='bwa')
plt.plot(log_test_numbers, data['bwt'], marker='^', label='bwt')

# Adjusting the x-axis to show the actual number of tests
plt.xticks(log_test_numbers, data['Number of Test'])

# Adding title and labels
# plt.title('Line Coverage Comparison')
plt.xlabel('Number of Tests (Log Scale)')
plt.ylabel('Line Coverage (%)')

# Adding a legend
plt.legend()

# Showing grid
plt.grid(True)

# Display the plot
plt.show()
