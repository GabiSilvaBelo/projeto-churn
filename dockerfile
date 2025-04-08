FROM python:3.10

# Instalar dependências
RUN pip install pandas numpy scikit-learn matplotlib seaborn jupyter openpyxl

# Criar pasta de trabalho
WORKDIR /app

# Copiar todos os arquivos da pasta local para o container
COPY . /app

# Expor a porta do Jupyter
EXPOSE 8888

# Comando para rodar o Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
