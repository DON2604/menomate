import numpy as np
import pandas as pd
import tensorboard as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, LabelEncoder
from sklearn.metrics import accuracy_score

df = pd.read_csv('./tips.csv')
print(df)

x=df[['days_passed','cycle_day','flow','mood','sleep_hours','hormonal_phase']]
print(x)