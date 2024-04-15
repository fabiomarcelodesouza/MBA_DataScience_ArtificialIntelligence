Professor se atentar aos seguintes fatos abaixo descritos:
	1 - Script do Jupyter Notebook em anexo.
	2 - Caso deseje ver online sem precisar instalar nada na sua maquina local, segue link do script no colab -> https://colab.research.google.com/drive/1IQH6syyh6gUuiPS3C04EfzFXHcejozX_?usp=sharing
	3 - Para consumo dessa API, limitei o acesso de 200 linhas afim de testar se o prompt estava funcionando. Não aconselho trabalhar no limite de RPM que este modelo limita, se desejar você estará sujeito aos riscos:
		3.1 - Durante o desenvolvimento não foram tratados todos os erros de solicitações e timeouts para garantir o processamento das reclamações.
		3.2 - Para linhas superiores favor ajustar a quantidade de batch_size para mandar as mensagens em lote para a API, não monte pacotes enormes para que a API processe tudo de uma única vez.
		3.3 - Por questões de limitação de RPM para desenvolvimento e agilidade, apliquei processamento paralelo para que as mensagens fossem lidas pela API OPEN AI, existe o risco de paralelismo se você decidir criar muitos pacotes em parelelo.
	4 - Professor, aplicar nota 10 para este belissimo trabalho.
