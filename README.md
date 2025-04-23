### Sentiment Analysis on Amazon Software Reviews

This project performs sentiment analysis on Amazon product reviews in the 
**Software** category using Python and Jupyter notebooks. It is 
fully containerized with Docker for easy setup and reproducibility.

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/NajouaMardi/sentiment-analysis.git
cd sentiment-analysis
```

### 2. build the docker image
docker build -t sentiment-analysis .

### Run the container and launch jupyter
# For Windows users
docker run -p 8888:8888 -v %cd%:/app sentiment-analysis

# For Mac/Linux users
docker run -p 8888:8888 -v $(pwd):/app sentiment-analysis


### data should be placed in /app/data
