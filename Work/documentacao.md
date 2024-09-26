## Semana 5: Cutover

### Descrição do Projeto e Importância do Plano de Cutover

<p align = “justify”>
&emsp;&emsp; O projeto descrito refere-se à implementação de sistemas ERP (Enterprise Resource Planning) no Brasil, com base em uma pesquisa realizada em 43 empresas que estavam em processo de implementação ou que já haviam implementado um sistema ERP. O plano de cutover é um dos elementos críticos dessa implementação, especialmente quando se utiliza a estratégia de “big bang”, que envolve a transição total para o novo sistema em um único evento ou janela de tempo. A importância do plano de cutover reside em sua capacidade de garantir uma transição suave entre o sistema antigo e o novo, minimizando interrupções nas operações diárias da empresa e reduzindo o risco de falhas durante a troca. Esse plano também envolve a sincronização de diferentes áreas funcionais, para garantir que todas as partes da empresa estejam alinhadas e prontas para a nova tecnologia no mesmo período. 
</p> 

### Principais Elementos do Plano de Cutover

<p align = “justify”>
&emsp;&emsp; Os principais elementos do plano de cutover incluem:
</p>

- *Planejamento detalhado:* O cutover requer um planejamento meticuloso, identificando todos os processos e sistemas que serão afetados pela transição.
- *Testes intensivos:* Antes da transição final, é necessário realizar uma série de testes para assegurar que o sistema ERP esteja funcionando conforme o esperado.
- *Cronograma preciso:* O cutover envolve a definição de um cronograma rigoroso, com tempos determinados para a desativação do sistema antigo e a ativação do novo.
- *Gestão de riscos:* Devem ser previstas possíveis falhas e contingências para lidar com imprevistos durante a transição.
- *Treinamento dos usuários:* Garantir que todos os colaboradores que utilizarão o novo sistema ERP estejam devidamente treinados para operar o novo ambiente de trabalho.
- *Backup e recuperação de dados:* Implementar mecanismos robustos de backup para garantir que dados críticos não sejam perdidos durante a transição.

### Pontos Positivos e Negativos 

<p align = “justify”>
&emsp;&emsp;Pontos Positivos:
</p>

- *Integração completa e imediata:* O cutover na estratégia de "big bang" permite que todas as áreas da empresa comecem a operar no novo sistema ao mesmo tempo, facilitando a integração entre diferentes departamentos.
- *Redução do tempo de transição:* Como todo o sistema antigo é substituído de uma só vez, a fase de transição é mais curta, evitando o prolongamento do processo e diminuindo ineficiências.
- *Aproveitamento máximo dos recursos:* Com o cutover, a empresa pode começar a utilizar todas as funcionalidades do sistema ERP imediatamente, maximizando os benefícios esperados da nova tecnologia.

<p align = “justify”>
&emsp;&emsp;Pontos Negativos:
</p>

- *Alto risco de falhas:* A abordagem de "big bang" torna o processo muito arriscado, já que qualquer erro na implementação pode afetar toda a empresa de uma vez.
- *Interrupções operacionais:* Durante a transição, pode haver interrupções nas operações, especialmente se ocorrerem problemas técnicos inesperados ou se o sistema não funcionar corretamente após o cutover.
- *Dependência do planejamento:* A falta de um planejamento detalhado e a ausência de estratégias de mitigação de riscos podem resultar em grandes prejuízos, tanto operacionais quanto financeiros.


### Conclusão

<p align = “justify”>
&emsp;&emsp;O plano de cutover é uma etapa crítica na implementação de sistemas ERP, especialmente quando se adota a estratégia de "big bang". Ele oferece a vantagem de uma transição rápida e integração total entre as áreas da empresa, mas também acarreta grandes riscos que precisam ser geridos com cuidado. A gestão eficaz desse processo depende de um planejamento minucioso, preparação adequada, testes exaustivos e mecanismos de contingência. A empresa deve pesar os benefícios da rápida implementação contra os riscos associados e considerar se o cutover em uma única fase é a melhor estratégia ou se uma transição gradual seria mais adequada para reduzir riscos e garantir a continuidade dos negócios.
</p>

### Referência

1. REINHARD, N. et al. Association for Information Systems AIS Electronic Library (AISeL) Management of ERP Systems Implementation in Brazil Recommended Citation. [s.l: s.n.]. Disponível em: <https://aisel.aisnet.org/cgi/viewcontent.cgi?article=1652&context=amcis2001>.

‌
## Semana 6: Diagrama Entidade-Relacionamento

### Introdução

<p align = “justify”>
&emsp;&emsp;Um Diagrama Entidade-Relacionamento (DER) é uma representação visual que mostra como diferentes entidades de um banco de dados se interconectam. Cada entidade, que geralmente corresponde a uma tabela no banco de dados, é representada por um retângulo que contém seus atributos, como chaves primárias e outros campos relevantes. Se a conexão é de um para um (1:1), um para muitos (1:N) ou de muitos para muitos (N:N), ela estará detalhada, o que evidência que há ligações entre essas entidades que estão simbolizadas por losangos ou linhas.</p> 


<p align = “justify”>
&emsp;&emsp;Para a ponderada, foi solicitado montar um DER para as 4 tabelas enviadas pela G2 Tecnologia no início do módulo. As tabelas são:</p> 

- OCRB -- Dados bancários dos PNs
- OCRD -- Informações sobre os PNs
- CRD1 -- Endereços dos PNs
- CRD7 -- Informações fiscais dos PNs


<p align = “justify”>
&emsp;&emsp;O DER de cada tabela, juntamente com suas conexões, foi criado utilizando os programas: *draw.io* e *SQL Designer*. Em SQL Designer o formato é .xml, localizada na pasta *Work* deste repositório, com o nome *PonderadaS6.xml*. A versão no draw.io, que é idêntica à do SQL Designer, pode ser visualizada na imagem "Diagrams.png" em assets.  



<p align = “justify”>
&emsp;&emsp;A tabela OCRB é o ponto central do DER, pois todas as demais tabelas se conectam a ela por meio de chaves estrangeiras (Foreign Keys). Cada tabela que armazena informações complementares sobre os parceiros de negócios (PNs), como endereços, dados fiscais e detalhes dos PNs, está diretamente relacionada à OCRB. A chave primária da tabela OCRB é o campo CardCode, que também atua como chave estrangeira nas outras tabelas, estabelecendo as relações entre as contas bancárias e os dados adicionais dos parceiros.</p> 

<p align = “justify”>
&emsp;&emsp;A tabela OCRD está conectada à OCRB por meio de CardCode, seguindo uma relação (1:N), onde um parceiro pode possuir várias contas bancárias.</p> 

<p align = “justify”>
&emsp;&emsp;A tabela CRD1 também se liga à OCRB por meio de CardCode, seguindo uma relação (1:N), permitindo que uma conta bancária esteja associada a vários endereços. Isso possibilita que uma única conta bancária tenha múltiplos locais de correspondência ou operação, como escritórios ou filiais de um parceiro de negócios.</p> 

<p align = “justify”>
&emsp;&emsp;A tabela CRD7 (informações fiscais dos PNs) também se relaciona com a OCRB através de CardCode, em uma relação (1:N), onde uma conta bancária pode ter várias informações fiscais associadas. Isso é útil para armazenar diferentes números de identificação fiscal ou dados regulamentares vinculados a uma única conta bancária.</p> 

<p align = “justify”>
&emsp;&emsp;É importante destacar que, nas tabelas CRD1 e CRD7, foi necessário adicionar novas colunas: Id_CDR1 para a primeira e Id_CDR7 para a segunda. Isso se deve ao fato de que, sem essas colunas, não seria possível criar uma chave primária, já que uma chave primária deve garantir a unicidade de cada registro na tabela. Cada valor na chave primária precisa ser único, sem permitir duplicidades. No caso das tabelas CRD1 e CRD7, nenhum campo existente possuía essa característica, tornando essencial a criação das colunas Id_CRD1 e Id_CRD7 como chaves primárias artificiais, assegurando que cada linha tivesse um identificador único.</p> 

<p align = “justify”>
&emsp;&emsp;Além de desenvolver o DER, foi necessário definir corretamente as Relações de Cardinalidade entre as tabelas. A cardinalidade descreve como uma entidade (ou tabela) se relaciona com outra em termos de quantidade de registros, e essas relações podem ser visualizadas na imagem "Cardinalidade.png" em assets. 

<p align = “justify”>
&emsp;&emsp;A relação entre OCRD e OCRB foi definida como 1 obrigatória para N opcional (1:N), o que significa que cada parceiro deve ter, no mínimo, uma conta bancária associada, enquanto uma conta bancária pode ou não estar vinculada a um parceiro.</p>

<p align = “justify”>
&emsp;&emsp;A relação entre OCRB e CRD1 segue o mesmo padrão de 1 obrigatória para N opcional (1:N)
), indicando que uma conta bancária deve necessariamente ter um endereço associado, porém, um endereço pode existir sem estar vinculado a uma conta bancária.</p>

<p align = “justify”>
&emsp;&emsp;Por outro lado, a relação entre OCRB e CRD7 foi estabelecida como 1 opcional para N obrigatória (também 1:N, mas não igual às anteriores). Isso significa que uma conta bancária pode ou não ter informações fiscais associadas, entretanto, as informações fiscais precisam estar obrigatoriamente ligadas a várias contas bancárias.</p>