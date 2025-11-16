# Principal Component Analysis (ACP/PCA) Lab

## 🎯 Learning Objectives

- Understand Principal Component Analysis (Analyse en Composantes Principales)
- Perform dimensionality reduction
- Interpret principal components and variance explained
- Visualize high-dimensional data in 2D/3D
- Apply PCA for preprocessing and feature extraction

## 📚 Prerequisites

- Linear algebra basics (eigenvectors, eigenvalues, covariance)
- Understanding of variance and correlation
- Python programming
- NumPy, pandas, and scikit-learn

## 📊 About PCA/ACP

**PCA (Principal Component Analysis)** / **ACP (Analyse en Composantes Principales)** is an unsupervised learning technique for:
- Reducing dimensionality while preserving variance
- Visualizing high-dimensional data
- Removing correlated features
- Noise reduction
- Feature extraction

## 📝 Lab Structure

- `code.ipynb` - Main lab notebook with PCA implementation

## 🚀 Getting Started

1. Open `code.ipynb` in Jupyter Notebook
2. Load your high-dimensional dataset
3. Standardize the features (crucial for PCA!)
4. Apply PCA transformation
5. Analyze variance explained
6. Visualize results in reduced dimensions

## 🔍 Key Concepts

### Mathematical Foundation
- **Covariance Matrix**: Measures feature correlations
- **Eigenvalues**: Variance captured by each component
- **Eigenvectors**: Directions of principal components
- **Explained Variance**: Proportion of variance retained

### PCA Process
1. Standardize the data (mean=0, std=1)
2. Compute covariance matrix
3. Calculate eigenvalues and eigenvectors
4. Sort components by explained variance
5. Select top k components
6. Transform data to new space

### Choosing Number of Components
- **Cumulative variance plot**: 80-95% threshold
- **Scree plot**: Look for "elbow"
- **Domain knowledge**: Practical considerations
- **Cross-validation**: Impact on downstream tasks

## 📈 Expected Outcomes

After completing this lab, you should be able to:
- Implement PCA using scikit-learn
- Interpret principal components
- Create scree plots and variance plots
- Reduce dimensionality effectively
- Visualize high-dimensional data
- Understand when PCA is appropriate

## 💡 Tips

### Before PCA
- **Always standardize features** - PCA is sensitive to scale
- Check correlation matrix first
- Remove constant or near-constant features
- Handle missing values appropriately

### During PCA
- Use `explained_variance_ratio_` to see variance captured
- Plot cumulative variance to choose components
- Examine loadings to interpret components
- Check for outliers (can affect PCA)

### After PCA
- Validate that variance preserved is sufficient
- Compare performance with/without PCA
- Visualize both original and transformed data
- Document component interpretation

## 🎨 Visualizations to Create

### Essential Plots
1. **Scree Plot**: Eigenvalues vs component number
2. **Cumulative Variance**: Total variance explained
3. **2D Scatter**: First two principal components
4. **3D Scatter**: First three principal components
5. **Biplot**: Components with original features
6. **Heatmap**: Component loadings

### Example Code
```python
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA

# Fit PCA
pca = PCA()
pca.fit(X_scaled)

# Scree plot
plt.figure(figsize=(10, 6))
plt.plot(range(1, len(pca.explained_variance_)+1), 
         pca.explained_variance_, 'o-')
plt.xlabel('Principal Component')
plt.ylabel('Eigenvalue')
plt.title('Scree Plot')
plt.show()

# Cumulative variance
plt.figure(figsize=(10, 6))
plt.plot(range(1, len(pca.explained_variance_ratio_)+1),
         np.cumsum(pca.explained_variance_ratio_), 'o-')
plt.axhline(y=0.95, color='r', linestyle='--')
plt.xlabel('Number of Components')
plt.ylabel('Cumulative Explained Variance')
plt.title('Cumulative Variance Explained')
plt.show()
```

## 🔬 Applications of PCA

### Data Visualization
- Visualize high-dimensional datasets
- Exploratory data analysis
- Pattern discovery

### Preprocessing
- Remove correlated features
- Reduce feature space for faster training
- Handle multicollinearity

### Feature Engineering
- Create composite features
- Extract latent factors
- Data compression

### Noise Reduction
- Filter out minor components
- Signal processing
- Image denoising

## ⚠️ Limitations of PCA

### When PCA Works Well
- Linear relationships between features
- Continuous numerical data
- High correlation among features
- Variance captures important information

### When PCA May Not Work
- Non-linear relationships (use kernel PCA)
- Categorical data (requires encoding)
- Outliers present (consider robust PCA)
- Variance doesn't correlate with importance

## 📊 Interpreting Results

### Component Interpretation
Look at loadings to understand what each component represents:
- High positive loading: Feature increases with component
- High negative loading: Feature decreases with component
- Near-zero loading: Feature doesn't contribute

### Example Interpretation
```
PC1: "Size factor" (height, weight, dimensions all positive)
PC2: "Age factor" (age positive, vitality negative)
PC3: "Geographic factor" (latitude, longitude)
```

## 🧪 Experiments to Try

1. **Different numbers of components**: Compare 2, 3, 5, 10 components
2. **With/without standardization**: See the impact
3. **Before/after outlier removal**: Check sensitivity
4. **Compare with other methods**: t-SNE, UMAP for visualization
5. **Reconstruction error**: Transform and inverse transform

## 📚 Additional Resources

- [scikit-learn PCA Documentation](https://scikit-learn.org/stable/modules/decomposition.html#pca)
- [PCA Step-by-Step Tutorial](https://builtin.com/data-science/step-step-explanation-principal-component-analysis)
- [StatQuest: PCA](https://www.youtube.com/watch?v=FgakZw6K1QQ) - Excellent video explanation
- [PCA Wikipedia](https://en.wikipedia.org/wiki/Principal_component_analysis)

## 🎓 Mathematical Notes

### Standardization Formula
```
z = (x - μ) / σ
```
Where μ is mean and σ is standard deviation

### Covariance Matrix
```
Σ = (1/n) X^T X
```
After centering the data

### Explained Variance Ratio
```
variance_ratio_i = λ_i / Σλ_j
```
Where λ are eigenvalues

## ⏱️ Estimated Time

3-4 hours

---

**Good luck exploring high-dimensional spaces! 📊🔬**
