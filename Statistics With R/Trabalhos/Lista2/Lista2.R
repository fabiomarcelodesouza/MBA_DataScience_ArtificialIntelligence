install.packages("rpart.plot")
install.packages("caret")
install.packages("pROC")
install.packages("PRROC")
library(dplyr)
library(ggplot2)
#library(Metrics)
library(rpart)
library(rpart.plot)
library(caret)
library(pROC)
library(PRROC)


baseBruta <- read.csv2("C:\\5dts\\canc3.csv")


###Inicio EDA
head(baseBruta)

str(baseBruta)

summary(baseBruta)


# Verificar quais colunas têm valores nulos
colunas_nulas <- colSums(is.na(baseBruta)) > 0

# Exibir as colunas que têm valores nulos
print(colunas_nulas)
# Nenhuma coluna com valores faltantes


# histograma sobre o atributo Idade
hist(baseBruta$idade)


#Conseguimos saber que quanto mais velho maior a chance do tumor sem maligno.
plot(baseBruta$idade , baseBruta$tipo,
     xlab = "Eixo X", ylab = "Eixo Y",
     main = "Scatter Plot de idade vs. tipo")


#Conseguimos saber que os níveis 2 e 3 são os mais comuns dentro das amostras.
plot(baseBruta$idade , baseBruta$hl,
     xlab = "Eixo X", ylab = "Eixo Y",
     main = "Scatter Plot de idade vs. hl")

###criação da base de treino e teste


# Definir uma semente aleatória para garantir a reprodutibilidade
set.seed(123)

# Proporção para a separação (70% para treinamento e 30% para teste)
proporcao_treinamento <- 0.7

# Número de linhas para o conjunto de treinamento
num_linhas_treinamento <- round(proporcao_treinamento * nrow(baseBruta))

# Gerar um vetor de índices aleatórios para selecionar as linhas de treinamento
indices_amostra <- sample(1:nrow(baseBruta), num_linhas_treinamento)

# Criar o conjunto de treinamento e teste com base nos índices
conjunto_treinamento <- baseBruta[indices_amostra, ]
conjunto_teste <- baseBruta[-indices_amostra, ]




# Ajuste o modelo de regressão logística com a coluna 'tipo' como variável de resposta
modelo_logistico <- glm(tipo ~ hl + sexo + ff , data = conjunto_treinamento, family = binomial)




# Resumo do modelo
summary(modelo_logistico)


###Realizando analise de performance do modelo

# Fazer previsões no conjunto de teste
previsoes <- predict(modelo_logistico, newdata = conjunto_teste, type = "response")


# Converter as probabilidades em classes (usando um limite de decisão de 0,5, por exemplo)
classes_previstas <- ifelse(previsoes >= 0.5, 1, 0)

# Criar a matriz de confusão
matriz_confusao <- table(classes_previstas, conjunto_teste$tipo)

# Exibir a matriz de confusão
print(matriz_confusao)


# Calcular precisão, recall e F1-score
TP <- sum(conjunto_teste$tipo == 1 & classes_previstas == 1) #Verdadeiro POsitivo
TN <- sum(conjunto_teste$tipo == 0 & classes_previstas == 0) #Verdadeiro Negativo
FP <- sum(conjunto_teste$tipo == 0 & classes_previstas == 1) #Falso Positivo
FN <- sum(conjunto_teste$tipo == 1 & classes_previstas == 0) #Falso Negativo



precision <- TP / (TP + FP)
recall <- TP / (TP + FN)
f1_score <- 2 * (precision * recall) / (precision + recall)


print(cat("Precisão: ",precision))#0.7 # proporção de verdadeiros positivos em relação ao total de positivos previstos pelo modelo
print(cat("Recall: ",recall))#0.6666667    # proporção de verdadeiros positivos em relação ao total de casos positivos verdadeiros
print(cat("F1 Score:",f1_score))#0.6829268  # métrica que combina precisão e sensibilidade em um único número



# Calcular AUC-ROC
roc_obj <- roc(conjunto_teste$tipo, previsoes)
auc_roc <- auc(roc_obj)

# Calcular a curva de precisão-recall
pr_obj <- pr.curve(conjunto_teste$tipo, previsoes)
auc_pr <- pr_obj$auc.integral

print(auc_roc)### area dentro da curva:0.7783    #área sob a curva (AUC) medem a capacidade do modelo de distinguir entre as classes
print(auc_pr)  ### 0.640626    #avaliação de desempenho usada para medir a qualidade de modelos de classificação binária



####Criar modelo de arvore classficatoria

# Criar a árvore de decisão
modelo_arvore <- rpart(tipo ~ hl + sexo + ff, data = conjunto_treinamento, method = "class")

# Visualizar a árvore
plot(modelo_arvore)
text(modelo_arvore)


# Fazer previsões no conjunto de teste
previsoes_arvore <- predict(modelo_arvore, newdata = conjunto_teste, type = "class")


# Converter as probabilidades em classes 
previsoes_arvore <- predict(modelo_arvore, newdata = conjunto_teste, type = "class")
 # Converter as probabilidades em classes 
classes_previstas_arvore <- previsoes_arvore


# Criar a matriz de confusão
matriz_confusao_arvore <- table(classes_previstas_arvore, conjunto_teste$tipo)


# Exibir a matriz de confusão
print(matriz_confusao_arvore)


# Calcular precisão, recall e F1-score
TP <- sum(conjunto_teste$tipo == 1 & classes_previstas == 1) #Verdadeiro POsitivo
TN <- sum(conjunto_teste$tipo == 0 & classes_previstas == 0) #Verdadeiro Negativo
FP <- sum(conjunto_teste$tipo == 0 & classes_previstas == 1) #Falso Positivo
FN <- sum(conjunto_teste$tipo == 1 & classes_previstas == 0) #Falso Negativo

precision <- TP / (TP + FP)
recall <- TP / (TP + FN)
f1_score <- 2 * (precision * recall) / (precision + recall)

print(cat("Precisão: ",precision, '\n'))#0.7 # proporção de verdadeiros positivos em relação ao total de positivos previstos pelo modelo
print(cat("Recall: ",recall, '\n'))  # 0.6666667   # proporção de verdadeiros positivos em relação ao total de casos positivos verdadeiros
print(cat("F1 Score:",f1_score, '\n')) #0.6829268 # métrica que combina precisão e sensibilidade em um único número



###ambos os modelos possuem uma acertividade muito similar olhando pelas metricas e pelo mapa de confusao de cada modelo
####nota se que isso é mais evidente pela arvore que está bem simples com poucos galhos e abrangendo todo o problema em ambos os modelos