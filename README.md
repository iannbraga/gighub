### README

#### Ruby Version
- **3.2.2**

#### System Dependencies
- **Rails 7.0.8**

#### Configuration

#### Database Creation
```bash
docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5434:5432 -d postgres
rails db:create db:migrate
```

#### Database Initialization
```bash
rails db:seed
```

#### How to Run the Test Suite

#### Services (Job Queues, Cache Servers, Search Engines, etc.)

#### Deployment Instructions

---

## Aplicação

A aplicação deve permitir que os usuários gerenciem eventos, locais, contatos e informações financeiras de maneira eficiente.

### Contexto da Aplicação

#### Objetivo
A aplicação tem como objetivo principal fornecer uma plataforma para DJs e outros perfis de usuários (como administradores e desenvolvedores) gerenciarem eventos musicais, locais onde os eventos ocorrem, contatos importantes e informações financeiras associadas a esses eventos. Visa proporcionar uma plataforma robusta e eficiente para DJs gerenciarem todos os aspectos relacionados aos seus eventos, desde a criação e gestão dos eventos até o controle financeiro detalhado, além de facilitar a gestão de locais e contatos associados.

#### Usuários
1. **DJs**: Gerenciam seus eventos, acompanham os ganhos (cache e covert) e mantêm informações de locais e contatos.
2. **Administradores**: Têm acesso a todas as funcionalidades para gerenciar usuários, eventos e locais.
3. **Desenvolvedores**: Podem acessar funcionalidades específicas de desenvolvimento e manutenção da plataforma.

### Funcionalidades Principais

#### Gestão de Usuários
- **Cadastro de Usuários**: Registro de novos usuários com informações básicas como email, senha, nome, sobrenome, ativo (status do usuário) e perfil (administrador, desenvolvedor, DJ).
- **Autenticação**: Login e logout dos usuários, utilizando email e senha.
- **Registro e Autenticação**: Utilização de autenticação segura e possivelmente integração com serviços como OAuth para facilitar o login.
- **Perfis de Usuário**: Considerar permissões granulares para diferentes funcionalidades da aplicação.

#### Gestão de Eventos
- **Criação de Eventos**: DJs podem criar e gerenciar eventos, especificando nome, descrição, data e hora de início e término, horas tocadas, cache (valor recebido do contratante) e covert (valor recebido dos clientes como bonificação).
- **Atribuição de Locais**: Associar cada evento a um local específico onde o evento será realizado.
- **Associação a Usuários**: Registrar qual DJ ou usuário está associado ao evento.
- **Calendário de Eventos**: Visualização de eventos em um calendário com opção de filtragem por data, localização, DJ responsável, etc.
- **Reservas de Eventos**: Capacidade de pré-reservar eventos com confirmação posterior.

#### Gestão Financeira
- **Detalhamento de Ganhos**: Além dos campos de cache e covert, incluir detalhes adicionais como despesas associadas ao evento (por exemplo, custos de transporte, equipamentos).
- **Relatórios Financeiros Avançados**: Gerar relatórios detalhados com análise de lucros por evento, comparação de desempenho ao longo do tempo, previsões financeiras baseadas em eventos futuros, entre outros.

#### Gestão de Locais
- **Cadastro de Locais**: Adicionar novos locais, especificando nome, descrição, localização e endereço.
- **Endereços e Contatos**: Gerenciar endereços completos e contatos associados aos locais.
- **Integração de Mapas**: Visualização dos locais em um mapa interativo para facilitar a seleção e geolocalização.
- **Avaliação de Locais**: Capacidade de deixar avaliações e comentários sobre locais utilizados anteriormente.

#### Gestão de Endereços
- **Cadastro de Endereços**: Adicionar endereços completos para locais, incluindo logradouro, número, bairro, cidade, estado e CEP.
- **Associação a Cidades**: Cada endereço deve ser associado a uma cidade específica.

#### Gestão de Contatos
- **Cadastro de Contatos**: Adicionar contatos importantes para cada local, incluindo nome do contato e telefone.
- **Gestão de Telefones**: Registrar e associar números de telefone aos contatos.
- **Importação de Contatos**: Permitir a importação de contatos de outras plataformas (por exemplo, CSV, Google Contacts).
- **Notificações de Contato**: Configuração de notificações para lembrar de contatos importantes antes de eventos específicos.

#### Gestão de Cidades e Estados
- **Cadastro de Cidades**: Adicionar novas cidades com nome e sigla, associando cada cidade a um estado.
- **Cadastro de Estados**: Adicionar novos estados com nome e sigla.
- **Dados Geográficos**: Utilização de API de geolocalização para preencher automaticamente informações de cidades e estados com base em um banco de dados geográfico.

#### Adicionais
- **Eventos e Contratos**: Inclusão de funcionalidades para assinatura digital de contratos diretamente na plataforma e armazenamento seguro de documentos relacionados aos eventos.
- **Avaliação de Desempenho**: Implementação de métricas de desempenho para avaliar a satisfação do cliente e o sucesso dos eventos.
- **Automatização de Tarefas**: Integração de sistemas de automação para envio de lembretes de eventos, confirmações de participação e solicitação de feedback pós-evento.
- **Planejamento Pré-Evento**: Criação de checklist automatizado para garantir que todos os detalhes do evento sejam considerados.
- **Gestão de Mídias Sociais**: Integração com APIs de redes sociais para programação de postagens automáticas sobre os eventos planejados.
- **Análise Pós-Evento**: Coleta de feedback dos clientes e participantes do evento para melhoria contínua dos serviços oferecidos.

### Experiência do Usuário
1. **Interface Intuitiva e Responsiva**: Desenvolvimento de uma interface de usuário (UI) intuitiva e responsiva, garantindo uma experiência agradável em dispositivos móveis e desktops.
2. **Personalização do Dashboard**: Opções para personalização do dashboard de cada usuário, exibindo métricas e informações relevantes de acordo com suas preferências e necessidades.

### Segurança e Privacidade
1. **Segurança de Dados**: Implementação de criptografia robusta para proteger informações sensíveis dos usuários e dados financeiros.
2. **Política de Privacidade Transparente**: Disponibilização de uma política de privacidade clara e acessível aos usuários, explicando como os dados são coletados, usados e protegidos.

---

### Modelagem

#### Perfil
- **id**
- **nome**
- **sobrenome**
- ...

#### Usuarios
- **id**
- **email**
- **senha**
- **ativo**
- **papel_id**
- **perfil_id**

#### Eventos
- **id**
- **nome**
- **descricao**
- **data_hora_inicio**
- **data_hora_termino**
- **horas_tocadas**
- **cache**
- **covert**
- **local_id**
- **usuario_id**

#### Locais
- **id**
- **nome**
- **descricao**
- **localizacao**
- **endereco_id**

#### Cidades
- **id**
- **nome**
- **sigla**
- **estado_id**

#### Estados
- **id**
- **nome**
- **sigla**

#### Enderecos
- **id**
- **logradouro**
- **numero**
- **bairro**
- **cidade_id**
- **cep**

#### Contatos
- **id**
- **perfil_id**
- **telefone_id**
- **local_id**

#### Telefones
- **id**
- **ddd**
- **numero**

#### Papel
- **id**
- **nome**
- **descricao**

### Diagrama ER Detalhado
```plaintext
Usuarios (id, email, senha, ativo, perfil_id, papel_id)
   |
   |---< Eventos (id, nome, descricao, data_hora_inicio, data_hora_termino, horas_tocadas, cache, covert, local_id, usuario_id)
         |
         |---< Locais (id, nome, descricao, localizacao, endereco_id)
               |
               |--- Enderecos (id, logradouro, numero, bairro, cidade_id, cep)
                     |
                     |--- Cidades (id, nome, sigla, estado_id)
                           |
                           |--- Estados (id, nome, sigla)

Perfil (id, nome, sobrenome, ...)
   |
   |---< Contatos (id, perfil_id, telefone_id, local_id)
         |
         |--- Telefones (id, ddd, numero)

Papel (id, nome, descricao)
```

### Explicação da Modelagem
1. **Entidades Principais**: `Usuarios`, `Eventos`, `Locais`, `Enderecos`, `Contatos`, `Telefones`, `Perfil` e `Papel` são essenciais para gerenciar todos os aspectos dos eventos e locais associados.
2. **Relacionamentos**: Os relacionamentos entre as entidades estão bem definidos, permitindo uma representação clara das interações entre usuários, eventos, locais, endereços e contatos.
3. **Funcionalidades Suportadas**: A modelagem suporta todas as funcionalidades principais mencionadas, como criação e gestão de eventos, controle financeiro detalhado, gerenciamento de locais e contatos, além da gestão de usuários com diferentes perfis e permissões.
4. **Escopo Ampliado**: A inclusão de entidades como `Cidades` e `Estados` demonstra uma consideração para dados geográficos que podem ser úteis para visualizações e filtragens adicionais na aplicação.
5. **Diagrama ER**: O di

agrama entidade-relacionamento detalhado fornece uma representação visual clara dos relacionamentos entre as entidades, facilitando o entendimento da estrutura da base de dados.
6. **Extensibilidade**: A estrutura permite futuras melhorias e adições de funcionalidades, como integração com APIs de mapas para visualização de locais, análise de desempenho pós-evento e automatização de tarefas.