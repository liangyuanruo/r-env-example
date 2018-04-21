# Read file from disk
data(iris)

MODEL_PATH = Sys.getenv("MODEL_PATH")

# Build awesome model
model = lm(Sepal.Length~Sepal.Width, data=iris)

# Save the model
filename = paste0("model-", Sys.time(), ".rda")
filepath = paste0(MODEL_PATH, "/", filename)
print(paste0("Saving file to: ", filepath))
save(model, file=filepath)
