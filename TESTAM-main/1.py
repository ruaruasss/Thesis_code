import numpy as np

# 加载 .npz 文件
data = np.load('/home/p_tf_zy/p_tf_01/TESTAM-main/experiment/METR-LA_TESTAM_prediction.npz')

# 获取预测值和真实值
predictions = data['prediction']  # 模型的预测值
ground_truth = data['ground_truth']  # 真实值

# 打印形状
print("Predictions shape:", predictions.shape)
print("Ground truth shape:", ground_truth.shape)

# 计算性能指标（例如 MAE）
mae = np.mean(np.abs(predictions - ground_truth))
print("Mean Absolute Error (MAE):", mae)