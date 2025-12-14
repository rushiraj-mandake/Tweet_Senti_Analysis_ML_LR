import streamlit as st
import pickle

# Load your pipeline
with open("pipe.pkl", "rb") as f:
    pipe = pickle.load(f)

st.title("Sentiment Prediction App")

# Example input field — replace with your actual input
text = st.text_area("Enter text to analyze")

# Label mapping
label_map = {
    0: "negative",
    1: "neutral",
    2: "positive"
}

if st.button("Predict"):
    pred = pipe.predict([text])[0]
    label = label_map.get(pred, "Unknown")
    st.success(f"Prediction: {label}")