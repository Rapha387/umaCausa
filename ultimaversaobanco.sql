drop database if exists umacausa;
create database umacausa;
use umacausa;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--



--
-- Table structure for table `Campanha`
--

DROP TABLE IF EXISTS `Campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campanha` (
    `id_campanha` int(11) NOT NULL AUTO_INCREMENT,
    `nm_campanha` varchar(250) DEFAULT NULL,
    `ds_campanha` varchar(1000) DEFAULT NULL,
    `dt_inicioCampanha` datetime DEFAULT NULL,
    `dt_fimEsperado` datetime DEFAULT NULL,
    `dt_fimCampanha` datetime DEFAULT NULL,
    `qt_meta` double DEFAULT NULL,
    `qt_arrecadado` double DEFAULT NULL,
    `img_bannerCampanha` varchar(500) DEFAULT NULL,
    `qt_denuncias` int(11) DEFAULT NULL,
    `id_usuario` int(11) DEFAULT NULL,
    `id_categoriaCampanha` int(11) DEFAULT NULL,
    `id_tipoItem` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_campanha`),
    KEY `fk_Campanha_Usuario` (`id_usuario`),
    KEY `fk_Campanha_CategoriaCampanha` (`id_categoriaCampanha`),
    KEY `fk_Campanha_TipoItem` (`id_tipoItem`),
    CONSTRAINT `fk_Campanha_CategoriaCampanha` FOREIGN KEY (`id_categoriaCampanha`)
        REFERENCES `CategoriaCampanha` (`id_categoriaCampanha`),
    CONSTRAINT `fk_Campanha_TipoItem` FOREIGN KEY (`id_tipoItem`)
        REFERENCES `TipoItem` (`id_tipoItem`),
    CONSTRAINT `fk_Campanha_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanha`
--

LOCK TABLES `Campanha` WRITE;
/*!40000 ALTER TABLE `Campanha` DISABLE KEYS */;
INSERT INTO `Campanha` VALUES (31,'Luz da Leitura: Alfabetizando o Futuro','A campanha \"Luz da Leitura: Alfabetizando o Futuro\" é uma iniciativa dedicada a promover a alfabetização e a educação básica para crianças, jovens e adultos em nossa comunidade. Nosso objetivo é proporcionar a todos o poder transformador da leitura e da escrita, capacitando-os para um futuro melhor.\n\nPor meio de doações generosas e voluntariado, pretendemos angariar recursos para a criação de programas de alfabetização, distribuição de materiais educativos e aulas de reforço. Juntos, podemos iluminar os caminhos daqueles que buscam a oportunidade de aprender e crescer.','2023-09-20 00:00:00','2023-12-07 00:00:00',NULL,2000,0,'uploads/campanhas/banners/31.jpg',NULL,42,1,1),(46,'Doação de Livros Infantis','Nossa campanha \"Doação de Livros\" tem como objetivo promover o acesso à educação e à cultura por meio da doação de livros. Acreditamos que os livros são uma janela para o conhecimento, uma fonte de inspiração e uma ferramenta fundamental para o desenvolvimento pessoal e comunitário. Com esta campanha, estamos empenhados em reunir livros para distribuí-los a escolas, bibliotecas, instituições de caridade e indivíduos que precisam de acesso a material de leitura de qualidade.','2023-09-20 00:00:00','2023-11-11 00:00:00',NULL,1000,200,'uploads/campanhas/banners/46.jpg',0,42,2,9),(47,'Campanha de Arrecadação de Fundos','A campanha de arrecadação de fundos tem como objetivo mobilizar a comunidade e angariar recursos financeiros para apoiar uma causa nobre. Essa campanha visa conscientizar as pessoas sobre a importância da causa e incentivá-las a contribuir financeiramente para fazer a diferença.','2023-09-20 00:00:00','2023-12-08 00:00:00',NULL,500,400,'uploads/campanhas/banners/47.jpg',0,42,1,NULL),(48,'Campanha de Materiais Escolares','É uma iniciativa comunitária que visa mobilizar pessoas, empresas e organizações em prol da educação, garantindo que todos os estudantes tenham as ferramentas necessárias para o sucesso escolar. A campanha envolve a coleta de materiais escolares e sua distribuição para estudantes em necessidade.','2023-09-20 00:00:00','2024-01-01 00:00:00',NULL,2000,500,'uploads/campanhas/banners/48.jpg',1,42,2,6),(50,'A fome tem Solução','A campanha \"A Fome Tem Solução\" tem como objetivo conscientizar as pessoas sobre a gravidade da fome e mobilizar recursos para arrecadar alimentos e ajudar a combater a insegurança alimentar em comunidades vulneráveis.','2023-09-20 00:00:00','2023-10-02 00:00:00',NULL,2000,0,'uploads/campanhas/banners/50.jpg',0,43,2,2),(51,'G 10 Favelas','Nós, do G10 Favelas, estamos mobilizados em uma causa que é essencial para o bem-estar da nossa sociedade: combater a fome que assola nosso país. Infelizmente, o mapa da fome aumenta em nosso país, enquanto as doações têm diminuído drasticamente. Por isso, nossa luta é ainda mais urgente. O número de famílias vivendo em extrema pobreza na cidade de São Paulo cresceu 10,5%. São 760 mil pessoas na cidade mais rica. No Brasil são 33 milhões de pessoas passando dificuldades. A distribuição de marmitas e cestas e criação de hortas comunitárias não parou. Desde março de 2020, temos vivido em um cenário de incertezas, com desemprego e insegurança alimentar batendo à porta da maioria da população brasileira. Nossas famílias buscam desesperadamente esperança para se reconstruir em meio a essa crise gerada pela pandemia. E nós, continuamos na linha de frente, cuidando da nossa gente.','2023-09-20 00:00:00','2023-07-07 00:00:00',NULL,1000,10,'uploads/campanhas/banners/51.jpg',2,43,1,NULL),(52,'Campanha do Agasalho','A campanha tem como objetivo arrecadar agasalhos e cobertores para distribuir a indivíduos e famílias em situação de vulnerabilidade durante o inverno. Queremos proporcionar conforto e aquecimento para aqueles que enfrentam as adversidades do clima gelado.','2023-09-20 00:00:00','2023-11-02 00:00:00',NULL,3000,2800,'uploads/campanhas/banners/52.jpg',1,45,2,1),(53,'Ação Moradia','O objetivo principal da campanha é arrecadar fundos para garantir que a Ação Moradia continue a oferecer serviços essenciais, como moradia acessível, capacitação profissional, apoio psicossocial e alimentação para aqueles que mais necessitam.','2023-09-20 00:00:00','2024-02-01 00:00:00',NULL,1500,30,'uploads/campanhas/banners/53.jpg',1,45,1,NULL),(54,'Campanha de Associação Comunitária da Leitura','O objetivo principal de nossa campanha é arrecadar uma quantidade significativa de livros para escolas, bibliotecas, instituições de caridade e indivíduos que não têm fácil acesso à leitura. Queremos promover o amor pela leitura e ajudar a construir um ambiente mais educado e informado em nossa comunidade.','2023-09-20 00:00:00','2024-04-10 00:00:00',NULL,3000,450,'uploads/campanhas/banners/54.jpg',2,45,2,9),(55,'Campanha da Creche Escola Maria De Nazaré de Osasco','Sabemos que nossa comunidade é cheia de corações generosos desejando fazer a diferença na vida das crianças. É por isso que lançamos a campanha de doação \"Doe amor, faça um sorriso florescer!\" e convidamos todos a se juntarem a nós nesta missão. Faça a doação de materiais como : Aceitamos doações de materiais essenciais, como brinquedos, livros, material de arte, móveis infantis, material de higiene, roupas e fraldas. Tudo isso contribui para criar um ambiente enriquecedor e confortável para as crianças.','2023-01-20 00:00:00','2023-07-10 00:00:00','2023-07-10 00:00:00',300,27,'uploads/campanhas/banners/55.jpg',1,45,2,4),(56,'Campanha de Promoção da Arte Local','Nossa campanha é uma chamada aberta para a generosidade e a paixão pela arte. Estamos buscando doações de diversos tipos de itens de arte, desde materiais básicos, como tintas, pincéis e papel, até obras de arte originais e esculturas.','2023-09-20 00:00:00','2024-01-10 00:00:00',NULL,50,23,'uploads/campanhas/banners/56.jpg',1,47,2,6),(57,'Campanha de Alfabetização','A campanha de alfabetização tem como objetivo promover a importância da leitura e da escrita, bem como mobilizar recursos e voluntários para alfabetizar adultos e crianças que enfrentam dificuldades na leitura e escrita, visando aprimorar suas habilidades e oportunidades na vida.','2023-08-27 00:00:00','2023-11-02 00:00:00','2023-09-09 00:00:00',100,100,'uploads/campanhas/banners/57.jpg',1,42,1,NULL),(58,'Água Potavél - 2023','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2023-09-20 00:00:00','2023-12-31 00:00:00',NULL,400,300,'uploads/campanhas/banners/58.jpg',0,49,1,NULL),(60,'Campanha de arrecadação para equipamentos para Bicicleta','A campanha visa promover a doação de equipamentos e acessórios para bicicletas com o objetivo de apoiar a comunidade ciclística local. A bicicleta é um meio de transporte e lazer sustentável que desempenha um papel vital na mobilidade urbana e na promoção de um estilo de vida mais saudável. No entanto, muitos ciclistas enfrentam dificuldades para adquirir ou manter seus equipamentos. Nossa campanha busca fazer a diferença na vida dessas pessoas.','2023-09-20 00:00:00','2023-11-10 00:00:00',NULL,330,100,'uploads/campanhas/banners/60.jpg',0,48,2,10),(61,'Campanha de produtos de Higiene e Limpeza','Como Você Pode Contribuir: Doação de Produtos: Aceitamos doações de produtos de higiene pessoal, como sabonetes, xampus, escovas de dente, creme dental, papel higiênico, além de itens de limpeza doméstica, como detergente, desinfetante, água sanitária e produtos de limpeza em geral. Sua generosidade fará uma diferença significativa na vida de muitas pessoas. Através da doação de produtos de higiene e limpeza, você estará ajudando a garantir que as famílias em situação de vulnerabilidade tenham acesso a condições mais dignas e higiênicas, promovendo um ambiente mais saudável para todos.','2023-09-20 00:00:00','2024-10-31 00:00:00',NULL,100,17,'uploads/campanhas/banners/61.jpg',2,49,2,5),(62,'Campanha de Alimentos não Pereciveis','A Campanha Solidária tem como objetivo arrecadar alimentos não perecíveis para ajudar aqueles que estão passando por dificuldades e garantir que todos tenham acesso a uma alimentação digna e saudável. Queremos fazer a diferença na vida das pessoas e mostrar que juntos podemos criar um impacto positivo em nossa comunidade. Doações de alimentos não perecíveis: Contribua com alimentos como arroz, feijão, macarrão, enlatados, leite em pó, óleo, açúcar, farinha, entre outros. Qualquer quantidade é bem-vinda e fará a diferença.','2023-09-20 00:00:00','2024-10-31 00:00:00',NULL,200,20,'uploads/campanhas/banners/62.jpg',1,49,2,2),(63,'Campanha de Bicicletas para Comunidades Carentes','campanha é uma iniciativa dedicada a promover a doação de bicicletas para aqueles que mais necessitam. Nosso objetivo é fornecer meios de transporte econômicos, sustentáveis e saudáveis para pessoas que enfrentam dificuldades de locomoção, especialmente em comunidades carentes e áreas rurais. Aceitamos doações de bicicletas em boas condições de uso. Se você tem uma bicicleta que não utiliza mais, ela pode fazer a diferença na vida de alguém. Entre em contato conosco para organizar a entrega.','2023-09-20 00:00:00','2023-12-16 00:00:00',NULL,50,10,'uploads/campanhas/banners/63.jpg',0,48,2,10),(64,'Água Potavél - 2022','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2022-01-01 00:00:00','2022-12-31 00:00:00','2022-08-09 00:00:00',400,400,'uploads/campanhas/banners/64.jpg',1,49,1,NULL),(65,'Assistência a Comunidades Religiosas Vulneráveis','Em meio aos desafios que o mundo enfrenta, muitas comunidades religiosas vulneráveis estão lutando para manter suas portas abertas, apoiar suas congregações e continuar desempenhando papéis vitais na promoção do bem-estar espiritual e social. É nossa responsabilidade ajudar e apoiar essas comunidades.','2022-11-23 00:00:00','2022-12-23 00:00:00','2022-12-23 00:00:00',5000,4800,'uploads/campanhas/banners/65.jpg',1,69,1,NULL),(66,'Campanha de Reflorestamento e Arborização Urbana','Nossa cidade enfrenta desafios ambientais significativos, desde o aumento das temperaturas devido às mudanças climáticas até a perda de espaços verdes devido ao crescimento urbano desenfreado. No entanto, a esperança nunca deve ser perdida, e a mudança é possível. Estamos lançando a campanha \"Renove Nossa Cidade\" para solicitar sua ajuda monetária para um ambicioso projeto de reflorestamento e arborização urbana que transformará nossa comunidade em um lugar mais saudável e sustentável.','2023-09-20 00:00:00','2023-12-31 00:00:00',NULL,4000,700,'uploads/campanhas/banners/66.jpg',1,70,1,NULL),(67,'Arrecadação para ração de cachorros','Nossa campanha visa fazer a diferença na vida dos nossos amigos de quatro patas que dependem da nossa ajuda para terem uma vida feliz e saudável. Cães são verdadeiros companheiros, leais e carinhosos, mas muitos deles enfrentam dificuldades para encontrar o alimento que precisam para sobreviver. A sua doação pode ser a diferença entre a fome e a felicidade para muitos cãezinhos indefesos.','2023-09-20 00:00:00','2023-10-10 00:00:00',NULL,5000,4800,'uploads/campanhas/banners/67.jpg',1,51,1,NULL),(68,'Campanha de arrecadação de Máscaras','Nosso principal objetivo é arrecadar um grande número de máscaras para distribuir entre indivíduos e comunidades que não têm acesso fácil a esse equipamento de proteção essencial. Queremos promover a segurança de todos e demonstrar que, juntos, podemos superar essa crise de saúde global. Doação de Máscaras: Aceitamos doações de máscaras de tecido, cirúrgicas ou N95 em boas condições. Se você puder costurar máscaras caseiras, também serão muito bem-vindas.','2023-09-20 00:00:00','2024-07-29 00:00:00',NULL,800,650,'uploads/campanhas/banners/68.jpg',0,70,2,7),(69,'Arrecadação para brinquedos dos animais','Estamos empolgados em lançar nossa campanha \"Brinque de Coração\" para trazer diversão e alegria aos nossos amigos de quatro patas que precisam de estímulos mentais e físicos para uma vida saudável e feliz. Brinquedos são uma parte essencial do bem-estar dos animais, e sua doação pode proporcionar momentos de felicidade inestimáveis aos nossos companheiros de quatro patas.','2023-09-20 00:00:00','2023-11-30 00:00:00',NULL,5000,4800,'uploads/campanhas/banners/69.jpg',0,51,2,3),(70,'Campanha de Produtos de Higiene','Nosso principal objetivo é arrecadar uma variedade de produtos de higiene, como sabonetes, escovas de dentes, pastas de dentes, xampus, fraldas, papel higiênico, absorventes e outros itens essenciais. Essas doações serão distribuídas entre indivíduos e comunidades em situação de vulnerabilidade, garantindo que todos tenham acesso a produtos de higiene de qualidade. Como Você Pode Ajudar: Doação de Produtos de Higiene: Aceitamos doações de produtos novos e não utilizados. Você pode contribuir com itens individuais ou montar kits de higiene que serão distribuídos.','2023-09-20 00:00:00','2023-11-23 00:00:00',NULL,900,250,'uploads/campanhas/banners/70.jpg',1,71,2,5),(71,'Campanha de Roupas Femininas e Masculinas','Arrecadação de Roupas: Estamos pedindo a colaboração de todos para doar roupas em bom estado. Aceitamos roupas para todas as idades,\ntamanhos e estações do ano, desde roupas de crianças até peças de adultos.','2023-09-20 00:00:00','2023-12-23 00:00:00',NULL,1000,250,'uploads/campanhas/banners/71.jpg',2,71,2,1),(72,'Arrecadação para curativos dos animais','É com grande entusiasmo que lançamos a campanha \"Cure com Amor\". Nossa missão é fornecer curativos essenciais e cuidados médicos para os animais que sofreram ferimentos ou estão em tratamento. Cada curativo representa um passo em direção à recuperação e ao bem-estar de nossos amigos de quatro patas que dependem de nossa ajuda.','2023-09-20 00:00:00','2024-02-10 00:00:00',NULL,1000,800,'uploads/campanhas/banners/72.jpg',0,51,2,7),(73,'Campanha de Alimentos não Pereciveis','Os alimentos não perecíveis são itens essenciais para a segurança alimentar de muitas famílias. Eles têm uma longa vida útil e são fáceis de armazenar, o que os torna ideais para doações. Com esses alimentos, podemos ajudar a combater a fome e a insegurança alimentar em nossa comunidade, garantindo que todos tenham acesso a refeições nutritivas.','2022-09-09 00:00:00','2023-11-23 00:00:00','2023-05-05 00:00:00',250,250,'uploads/campanhas/banners/73.jpg',1,71,2,2),(74,'Vamos Ajudar Fabrice a Voltar a Caminhar','DECIDI FAZER ESSA CAMPANHA, POIS PARA ADQUIRIR A MINHA PRÓTESE A 4 ANOS ATRÁS, PUDE CONTAR COM A AJUDA DE AMIGOS E FAMILIARES, E COMO ESTOU AFASTADO DAS MINHAS ATIVIDADES E O GASTO EM TRATAMENTO E REMÉDIOS , SÓ SERÁ POSSÍVEL INICIAR A READAPTAÇÃO COM AJUDA FINANCEIRA DE TERCEIROS','2023-09-20 00:00:00','2023-11-23 00:00:00',NULL,2500,290,'uploads/campanhas/banners/74.jpg',2,72,1,NULL),(75,'Campanha de Água Potavél','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2023-09-20 00:00:00','2024-05-23 00:00:00',NULL,700,390,'uploads/campanhas/banners/75.jpg',2,74,1,NULL),(77,'Campanha para arrecadação de Fundos','Nossa campanha é uma chamada à ação para todos aqueles que desejam fazer a diferença na vida de pessoas necessitadas e contribuir para um mundo melhor. Estamos buscando doações de fundos para apoiar nossa missão de impactar positivamente as vidas de indivíduos e comunidades em situações de vulnerabilidade.','2023-09-20 00:00:00','2023-10-10 00:00:00',NULL,950,700,'uploads/campanhas/banners/77.jpg',0,51,1,NULL),(78,'Campanha de MenstRUa','Mulheres encarceradas, em situação de prostituição e de rua ou em extrema pobreza, pessoas ovariadas em vulnerabilidade enfrentam cotidianamente as angústias e perigos da falta de absorventes. A pandemia tem escancarado as desigualdades múltiplas existentes na sociedade brasileira. A pobreza menstrual é uma face da desigualdade profunda de gênero que enfrentamos e que se acentuou diante do crescimento da miséria e da escassez por conta da crise atual e da pandemia. Doações de alimentos não perecíveis: Contribua com alimentos como arroz, feijão, macarrão, enlatados, leite em pó, óleo, açúcar, farinha, entre outros. Qualquer quantidade é bem-vinda e fará a diferença.','2023-09-20 00:00:00','2023-12-23 00:00:00',NULL,1800,1390,'uploads/campanhas/banners/78.jpg',1,74,2,2),(79,'Campanha de Alimentos Não pereciveis','A Campanha Solidária tem como objetivo arrecadar alimentos não perecíveis para ajudar aqueles que estão passando por dificuldades e garantir que todos tenham acesso a uma alimentação digna e saudável. Queremos fazer a diferença na vida das pessoas e mostrar que juntos podemos criar um impacto positivo em nossa comunidade.','2023-09-20 00:00:00','2024-06-23 00:00:00',NULL,800,390,'uploads/campanhas/banners/79.jpg',0,74,2,2),(80,'Campanha Dentistas Sem Fronteira','Estamos solicitando doações de itens essenciais para dentistas, como: Escovas de Dentes: Doações de escovas de dentes de boa qualidade para distribuição aos pacientes.Creme Dental: Tubos de creme dental para ajudar a manter a higiene bucal.Fio Dental: Fio dental é fundamental para prevenir cáries e doenças periodontais.Materiais Descartáveis: Luvas, máscaras, aventais e outros materiais descartáveis para garantir a segurança durante os procedimentos.Instrumentos Odontológicos: Equipamentos odontológicos usados em clínicas de atendimento.','2022-09-09 00:00:00','2023-03-03 00:00:00','2023-02-06 00:00:00',500,500,'uploads/campanhas/banners/80.jpg',1,74,2,5),(81,'Campanha de Redução de Plástico','Nossa campanha visa arrecadar fundos para impulsionar a educação ambiental em comunidades locais e escolas. As doações serão usadas para: Programas de Educação Escolar: Desenvolver currículos e materiais educacionais que abordem tópicos ambientais, como conservação, reciclagem, eficiência energética e sustentabilidade. Workshops e Eventos Educativos: Realizar workshops, palestras e eventos educacionais para envolver crianças e adultos em questões ambientais.','2023-09-23 00:00:00','2023-11-20 00:00:00',NULL,5780,900,'uploads/campanhas/banners/81.jpg',1,75,1,NULL),(82,'Campanha de Limpeza de Praias e Rios','Nossa campanha tem como objetivo arrecadar fundos para a realização de operações de limpeza em praias e rios em todo o país. As doações serão usadas para financiar: Limpeza e Coleta de Resíduos: Organizar equipes de voluntários para remover lixo e resíduos dos locais afetados, garantindo a sua disposição adequada.','2023-09-23 00:00:00','2023-12-20 00:00:00',NULL,780,10,'uploads/campanhas/banners/82.jpg',2,75,1,NULL),(83,'Campanha de Roupas de Inverno Feminino','O inverno está se aproximando e, infelizmente, muitas mulheres em nossa comunidade não têm acesso às roupas quentes de que precisam para enfrentar o frio. É por isso que estamos lançando a campanha \"Aqueça um Coração, Vista Solidariedade\", para arrecadar roupas de inverno femininas e proporcionar conforto e calor às mulheres em situação de vulnerabilidade. Faça Doações Generosas: Revise seu armário e doe roupas de inverno femininas em boas condições que você não usa mais, como casacos, blusas de lã, cachecóis, luvas, meias e botas.','2023-09-23 00:00:00','2024-01-20 00:00:00',NULL,150,100,'uploads/campanhas/banners/83.jpg',2,76,2,1),(84,'Campanha de Roupas de Inverno para Bebes','O inverno está chegando, e sabemos como é importante manter nossos pequenos bem aquecidos e confortáveis. Muitos bebês e suas famílias enfrentam dificuldades para garantir roupas de inverno adequadas. É por isso que lançamos a campanha para arrecadar roupas de inverno para bebês e ajudar a proteger esses pequenos tesouros do frio. Doações de Roupas Novas ou Usadas: Revise seu estoque de roupas de bebê e doe itens em bom estado, como macacões, toucas, luvas, mantas, meias, e qualquer outra peça de inverno.','2023-09-23 00:00:00','2024-02-20 00:00:00',NULL,200,0,'uploads/campanhas/banners/84.jpg',0,76,2,1),(85,'Brotando Saúde','Hoje, estamos lançando uma campanha de solidariedade especial para ajudar aqueles que lutam diariamente para acessar medicamentos essenciais. Acreditamos que todos têm o direito à saúde e que juntos podemos fazer a diferença nas vidas das pessoas que precisam desesperadamente de medicamentos para enfrentar desafios de saúde.','2023-09-23 00:00:00','2023-12-20 00:00:00',NULL,200,20,'uploads/campanhas/banners/85.jpg',1,78,1,NULL),(86,'Campanha de Cobertores e Travisseiros','O inverno está se aproximando e com ele vêm temperaturas baixas e noites frias que podem ser extremamente desafiadoras para muitas pessoas em nossa comunidade. Muitos não têm a sorte de ter um lugar quente e aconchegante para dormir, e é por isso que lançamos a campanha \"Aqueça Corações - Doe Cobertores e Travesseiros\". Convidamos você a se juntar a nós nesta nobre missão de fornecer conforto e calor para aqueles que mais precisam.','2023-01-01 00:00:00','2023-12-31 00:00:00','2023-11-23 00:00:00',300,300,'uploads/campanhas/banners/86.jpg',1,78,2,10),(87,'Natal Sem Fome','O Natal é uma época de celebração, amor e partilha. No entanto, muitas famílias em nossa comunidade estão enfrentando a dura realidade da fome, tornando difícil para elas desfrutar do espírito natalino. Este ano, estamos lançando a campanha \"Natal Sem Fome\" e convidamos você a se juntar a nós nesta iniciativa de solidariedade e compaixão.','2023-09-23 00:00:00','2023-12-31 00:00:00',NULL,300,250,'uploads/campanhas/banners/87.jpg',1,80,2,2),(88,'Casa Própria','Estamos construindo a nossa tão sonhada casa própria, porem como nada é fácil encontramos vários percalços ao longo dessa jornada desafiadora onde acabei ficando desempregado, temos 2 filhos e tivemos que dar uma pausa no projeto. estamos com 50% da construção pronta. Com o dinheiro arrecadado será feito a compra de materiais para a continuidade da obra.','2023-09-23 00:00:00','2023-12-31 00:00:00',NULL,1400,600,'uploads/campanhas/banners/88.jpg',1,82,1,NULL),(89,'Projeto Sinal','Sonhávamos com um local maior. E no dia 01 de agosto de 2020 entramos em uma casa muito maior, com dois andares. Esse local funciona como centro de Treinamento (local de treinamento para pratica do Morganti Ju-jitsu, Capoeira, pilates, funcional e ballet. Também é um centro de educação, cultura e lazer. Precisamos sonhar. Mas desejamos sonhar com mais pessoas. Não podemos mudar o mundo. Mas podemos tentar mudar o nosso mundo. O nosso entorno. Quem mora ao nosso lado.','2023-09-23 00:00:00','2024-04-20 00:00:00',NULL,3000,1875,'uploads/campanhas/banners/89.jpg',1,82,1,NULL);
/*!40000 ALTER TABLE `Campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campanha_ODS`
--

DROP TABLE IF EXISTS `Campanha_ODS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campanha_ODS` (
    `id_campanha` int(11) NOT NULL,
    `id_ODS` int(11) NOT NULL,
    PRIMARY KEY (`id_campanha` , `id_ODS`),
    KEY `fk_Campanha_ODS_ODS` (`id_ODS`),
    CONSTRAINT `fk_Campanha_ODS_Campanha` FOREIGN KEY (`id_campanha`)
        REFERENCES `Campanha` (`id_campanha`),
    CONSTRAINT `fk_Campanha_ODS_ODS` FOREIGN KEY (`id_ODS`)
        REFERENCES `ODS` (`id_ods`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanha_ODS`
--

LOCK TABLES `Campanha_ODS` WRITE;
/*!40000 ALTER TABLE `Campanha_ODS` DISABLE KEYS */;
INSERT INTO `Campanha_ODS` VALUES (47,1),(51,1),(53,1),(70,1),(86,1),(87,1),(50,2),(51,2),(67,2),(73,2),(77,2),(79,2),(87,2),(52,3),(61,3),(63,3),(64,3),(68,3),(70,3),(72,3),(74,3),(80,3),(85,3),(31,4),(46,4),(48,4),(54,4),(55,4),(57,4),(77,4),(82,4),(58,6),(64,6),(70,6),(75,6),(56,8),(31,10),(48,10),(50,10),(51,10),(53,10),(57,10),(71,10),(73,10),(77,10),(79,10),(80,10),(83,10),(84,10),(86,10),(60,11),(66,13),(82,14),(66,15),(81,15),(82,15),(65,16);
/*!40000 ALTER TABLE `Campanha_ODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoriaCampanha`
--

DROP TABLE IF EXISTS `CategoriaCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CategoriaCampanha` (
    `id_categoriaCampanha` int(11) NOT NULL,
    `nm_categoriaCampanha` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id_categoriaCampanha`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoriaCampanha`
--

LOCK TABLES `CategoriaCampanha` WRITE;
/*!40000 ALTER TABLE `CategoriaCampanha` DISABLE KEYS */;
INSERT INTO `CategoriaCampanha` VALUES (1,'Monetária'),(2,'Item');
/*!40000 ALTER TABLE `CategoriaCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoriaOng`
--

DROP TABLE IF EXISTS `CategoriaOng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CategoriaOng` (
    `id_categoriaOng` int(11) NOT NULL,
    `nm_categoria` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id_categoriaOng`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoriaOng`
--

LOCK TABLES `CategoriaOng` WRITE;
/*!40000 ALTER TABLE `CategoriaOng` DISABLE KEYS */;
INSERT INTO `CategoriaOng` VALUES (1,'Direitos Humanos e Justiça Social'),(2,'Ajuda Humanitária e Socorro'),(3,'Saúde'),(4,'Meio Ambiente e Conservação'),(5,'Educação'),(6,'Desenvolvimento Comunitário'),(7,'Cultura e Arte'),(8,'Assistência a Crianças e Famílias'),(9,'Desenvolvimento Econômico'),(10,'Paz e Resolução de Conflitos'),(11,'Habitação e Sem-teto'),(12,'Alimentação e Segurança Alimentar'),(13,'Animais e Conservação da Vida Selvagem'),(14,'Tecnologia e Acesso à Informação');
/*!40000 ALTER TABLE `CategoriaOng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DenunciaCampanha`
--

DROP TABLE IF EXISTS `DenunciaCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DenunciaCampanha` (
    `id_campanha` int(11) NOT NULL,
    `dt_denuncia` datetime NOT NULL,
    `ds_denuncia` varchar(250) DEFAULT NULL,
    `id_usuario` int(11) NOT NULL,
    `id_motivoDenuncia` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_campanha` , `id_usuario` , `dt_denuncia`),
    KEY `fk_DenunciaCampanha_Usuario` (`id_usuario`),
    KEY `fk_DenunciasCampanha_MotivoDenunciaCampanha` (`id_motivoDenuncia`),
    CONSTRAINT `fk_DenunciaCampanha_Campanha` FOREIGN KEY (`id_campanha`)
        REFERENCES `Campanha` (`id_campanha`),
    CONSTRAINT `fk_DenunciaCampanha_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`),
    CONSTRAINT `fk_DenunciasCampanha_MotivoDenunciaCampanha` FOREIGN KEY (`id_motivoDenuncia`)
        REFERENCES `MotivoDenunciaCampanha` (`id_motivoDenuncia`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DenunciaCampanha`
--

LOCK TABLES `DenunciaCampanha` WRITE;
/*!40000 ALTER TABLE `DenunciaCampanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `DenunciaCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DenunciaUsuario`
--

DROP TABLE IF EXISTS `DenunciaUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DenunciaUsuario` (
    `id_usuarioDenunciado` int(11) NOT NULL,
    `id_usuarioDenunciante` int(11) NOT NULL,
    `dt_denuncia` datetime NOT NULL,
    `id_motivoDenuncia` int(11) DEFAULT NULL,
    `ds_denuncia` varchar(250) DEFAULT NULL,
    PRIMARY KEY (`id_usuarioDenunciado` , `id_usuarioDenunciante` , `dt_denuncia`),
    KEY `fk_DenunciaUsuario_Usuario2` (`id_usuarioDenunciante`),
    KEY `fk_DenunciaUsuario_MotivoDenunciaUsuario` (`id_motivoDenuncia`),
    CONSTRAINT `fk_DenunciaUsuario_MotivoDenunciaUsuario` FOREIGN KEY (`id_motivoDenuncia`)
        REFERENCES `MotivoDenunciaUsuario` (`id_motivoDenuncia`),
    CONSTRAINT `fk_DenunciaUsuario_Usuario1` FOREIGN KEY (`id_usuarioDenunciado`)
        REFERENCES `Usuario` (`id_usuario`),
    CONSTRAINT `fk_DenunciaUsuario_Usuario2` FOREIGN KEY (`id_usuarioDenunciante`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DenunciaUsuario`
--

LOCK TABLES `DenunciaUsuario` WRITE;
/*!40000 ALTER TABLE `DenunciaUsuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `DenunciaUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dia`
--

DROP TABLE IF EXISTS `Dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dia` (
    `id_dia` int(11) NOT NULL,
    `nm_dia` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`id_dia`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dia`
--

LOCK TABLES `Dia` WRITE;
/*!40000 ALTER TABLE `Dia` DISABLE KEYS */;
INSERT INTO `Dia` VALUES (1,'Domingo'),(2,'Segunda'),(3,'Terça'),(4,'Quarta'),(5,'Quinta'),(6,'Sexta'),(7,'Sábado');
/*!40000 ALTER TABLE `Dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dia_Usuario`
--

DROP TABLE IF EXISTS `Dia_Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dia_Usuario` (
    `id_usuario` int(11) NOT NULL,
    `id_dia` int(11) NOT NULL,
    `hr_inicio` time DEFAULT NULL,
    `hr_fim` time DEFAULT NULL,
    PRIMARY KEY (`id_usuario` , `id_dia`),
    KEY `fk_Dia_Usuario_Dia` (`id_dia`),
    CONSTRAINT `fk_Dia_Usuario_Dia` FOREIGN KEY (`id_dia`)
        REFERENCES `Dia` (`id_dia`),
    CONSTRAINT `fk_Dia_Usuario_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dia_Usuario`
--

LOCK TABLES `Dia_Usuario` WRITE;
/*!40000 ALTER TABLE `Dia_Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dia_Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DivulgacaoItem`
--

DROP TABLE IF EXISTS `DivulgacaoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DivulgacaoItem` (
    `id_divulgacao` int(11) NOT NULL AUTO_INCREMENT,
    `ds_item` varchar(250) DEFAULT NULL,
    `qt_item` int(11) DEFAULT NULL,
    `nm_item` varchar(250) DEFAULT NULL,
    `dt_divulgacao` datetime DEFAULT NULL,
    `dt_fimDivulgacao` datetime DEFAULT NULL,
    `img_divulgacaoItem` varchar(4250) DEFAULT NULL,
    `id_estadoItem` int(11) DEFAULT NULL,
    `id_tipoItem` int(11) DEFAULT NULL,
    `id_usuario` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_divulgacao`),
    KEY `fk_DivulgacaoItem_EstadoItem` (`id_estadoItem`),
    KEY `fk_DivulgacaoItem_TipoItem` (`id_tipoItem`),
    KEY `fk_DivulgacaoItem_Usuario` (`id_usuario`),
    CONSTRAINT `fk_DivulgacaoItem_EstadoItem` FOREIGN KEY (`id_estadoItem`)
        REFERENCES `EstadoItem` (`id_estadoItem`),
    CONSTRAINT `fk_DivulgacaoItem_TipoItem` FOREIGN KEY (`id_tipoItem`)
        REFERENCES `TipoItem` (`id_tipoItem`),
    CONSTRAINT `fk_DivulgacaoItem_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DivulgacaoItem`
--

LOCK TABLES `DivulgacaoItem` WRITE;
/*!40000 ALTER TABLE `DivulgacaoItem` DISABLE KEYS */;
INSERT INTO `DivulgacaoItem` VALUES (1,'iuhwqdwq',12,'Geladeira Eletrolux, 2 portas e maquina de gelo','2020-03-29 00:00:00',NULL,'fewfwef',2,3,2),(2,'aaaaaaaa',1,'Prato','2021-08-08 00:00:00',NULL,NULL,1,2,1),(3,'bbbbbbbbbb',4,'Colher','2023-09-09 00:00:00',NULL,NULL,3,4,3),(4,'ewfewfew',19,'Casaco','2023-08-08 00:00:00',NULL,NULL,3,2,4),(5,'aaaaaaaaaa',2,'Bola de Futebol','2022-04-04 00:00:00',NULL,NULL,1,1,1);
/*!40000 ALTER TABLE `DivulgacaoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoacaoCampanha`
--

DROP TABLE IF EXISTS `DoacaoCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DoacaoCampanha` (
    `id_campanha` int(11) NOT NULL,
    `id_usuario` int(11) NOT NULL,
    `dt_doacao` datetime NOT NULL,
    `qt_doado` int(11) DEFAULT NULL,
    `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`id_campanha` , `id_usuario` , `dt_doacao`),
    KEY `fk_DoacaoCampanha_Usuario` (`id_usuario`),
    CONSTRAINT `fk_DoacaoCampanha_Campanha` FOREIGN KEY (`id_campanha`)
        REFERENCES `Campanha` (`id_campanha`),
    CONSTRAINT `fk_DoacaoCampanha_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoCampanha`
--

LOCK TABLES `DoacaoCampanha` WRITE;
/*!40000 ALTER TABLE `DoacaoCampanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoacaoCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoacaoItem`
--

DROP TABLE IF EXISTS `DoacaoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DoacaoItem` (
    `id_usuarioDoador` int(11) NOT NULL,
    `id_usuarioOng` int(11) NOT NULL,
    `dt_doacaoItem` datetime NOT NULL,
    `nm_item` varchar(250) DEFAULT NULL,
    `qt_item` int(11) DEFAULT NULL,
    `dt_recebimentoItem` datetime DEFAULT NULL,
    `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
    `id_tipoItem` int(11) DEFAULT NULL,
    `id_tipoEntrega` int(11) DEFAULT NULL,
    `hr_doacao` time DEFAULT NULL,
    `dt_doacao` date DEFAULT NULL,
    PRIMARY KEY (`id_usuarioDoador` , `id_usuarioOng` , `dt_doacaoItem`),
    KEY `fk_DoacaoItem_Usuario2` (`id_usuarioOng`),
    KEY `fk_DoacaoItem_TipoItem` (`id_tipoItem`),
    KEY `fk_DoacaoItem_TipoEntrega` (`id_tipoEntrega`),
    CONSTRAINT `fk_DoacaoItem_TipoEntrega` FOREIGN KEY (`id_tipoEntrega`)
        REFERENCES `TipoEntrega` (`id_tipoEntrega`),
    CONSTRAINT `fk_DoacaoItem_TipoItem` FOREIGN KEY (`id_tipoItem`)
        REFERENCES `TipoItem` (`id_tipoItem`),
    CONSTRAINT `fk_DoacaoItem_Usuario` FOREIGN KEY (`id_usuarioDoador`)
        REFERENCES `Usuario` (`id_usuario`),
    CONSTRAINT `fk_DoacaoItem_Usuario2` FOREIGN KEY (`id_usuarioOng`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoItem`
--

LOCK TABLES `DoacaoItem` WRITE;
/*!40000 ALTER TABLE `DoacaoItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoacaoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoacaoMonetaria`
--

DROP TABLE IF EXISTS `DoacaoMonetaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DoacaoMonetaria` (
    `id_usuarioDoador` int(11) NOT NULL,
    `id_usuarioOng` int(11) NOT NULL,
    `dt_doacao` datetime NOT NULL,
    `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
    `vl_monetario` double DEFAULT NULL,
    `nm_comprovante` varchar(250) DEFAULT NULL,
    `id_doacao` int(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id_usuarioDoador` , `id_usuarioOng` , `dt_doacao`),
    UNIQUE KEY `id_doacao_UNIQUE` (`id_doacao`),
    KEY `fk__DoacaoMonetaria_Usuario2` (`id_usuarioOng`),
    CONSTRAINT `fk_DoacaoMonetaria_Usuario1` FOREIGN KEY (`id_usuarioDoador`)
        REFERENCES `Usuario` (`id_usuario`),
    CONSTRAINT `fk__DoacaoMonetaria_Usuario2` FOREIGN KEY (`id_usuarioOng`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoMonetaria`
--

LOCK TABLES `DoacaoMonetaria` WRITE;
/*!40000 ALTER TABLE `DoacaoMonetaria` DISABLE KEYS */;
INSERT INTO `DoacaoMonetaria` VALUES (24,45,'2023-09-18 00:00:00',0,10,'uploads/temp/comprovantes/1.jpg',1),(24,72,'2023-09-23 22:44:19',0,5,'uploads/comprovanetes/banner1.png',15),(81,42,'2023-09-18 00:00:00',0,54.4,'uploads/temp/comprovantes/2.jpg',2),(81,47,'2023-09-18 00:00:00',0,180,'uploads/temp/comrpovantes/3.jpg',3);
/*!40000 ALTER TABLE `DoacaoMonetaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstadoItem`
--

DROP TABLE IF EXISTS `EstadoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoItem` (
    `id_estadoItem` int(11) NOT NULL,
    `nm_estadoItem` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id_estadoItem`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoItem`
--

LOCK TABLES `EstadoItem` WRITE;
/*!40000 ALTER TABLE `EstadoItem` DISABLE KEYS */;
INSERT INTO `EstadoItem` VALUES (1,'Novo'),(2,'Semi-novo'),(3,'Usado');
/*!40000 ALTER TABLE `EstadoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FotosOng`
--

DROP TABLE IF EXISTS `FotosOng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FotosOng` (
    `id_fotoOng` int(11) NOT NULL,
    `nm_refFoto` varchar(250) DEFAULT NULL,
    `id_usuario` int(11) NOT NULL,
    PRIMARY KEY (`id_fotoOng` , `id_usuario`),
    KEY `fk_FotosOng_Usuario` (`id_usuario`),
    CONSTRAINT `fk_FotosOng_Usuario` FOREIGN KEY (`id_usuario`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FotosOng`
--

LOCK TABLES `FotosOng` WRITE;
/*!40000 ALTER TABLE `FotosOng` DISABLE KEYS */;
INSERT INTO `FotosOng` VALUES (1,'uploads/ongs/45/fotos/1.jpg',45),(1,'uploads/ongs/47/fotos/1.jpg',47),(1,'uploads/ongs/48/fotos/1.jpg',48),(1,'uploads/ongs/49/fotos/1.jpg',49),(1,'uploads/ongs/51/fotos/1.jpg',51),(1,'uploads/ongs/69/fotos/1.jpg',69),(1,'uploads/ongs/70/fotos/1.jpg',70),(1,'uploads/ongs/71/fotos/1.jpg',71),(1,'uploads/ongs/72/fotos/1.jpg',72),(1,'uploads/ongs/73/fotos/1.jpg',73),(1,'uploads/ongs/74/fotos/1.jpg',74),(1,'uploads/ongs/75/fotos/1.jpg',75),(1,'uploads/ongs/76/fotos/1.jpg',76),(1,'uploads/ongs/77/fotos/1.jpg',77),(1,'uploads/ongs/78/fotos/1.jpg',78),(1,'uploads/ongs/80/fotos/1.jpg',80),(2,'uploads/ongs/45/fotos/2.jpg',45),(2,'uploads/ongs/47/fotos/2.jpg',47),(2,'uploads/ongs/48/fotos/2.jpg',48),(2,'uploads/ongs/49/fotos/2.jpg',49),(2,'uploads/ongs/51/fotos/2.jpg',51),(2,'uploads/ongs/69/fotos/2.jpg',69),(2,'uploads/ongs/70/fotos/2.jpg',70),(2,'uploads/ongs/71/fotos/2.jpg',71),(2,'uploads/ongs/72/fotos/2.jpg',72),(2,'uploads/ongs/73/fotos/2.jpg',73),(2,'uploads/ongs/74/fotos/2.jpg',74),(2,'uploads/ongs/75/fotos/2.jpg',75),(2,'uploads/ongs/76/fotos/2.jpg',76),(2,'uploads/ongs/77/fotos/2.jpg',77),(2,'uploads/ongs/78/fotos/2.jpg',78),(2,'uploads/ongs/80/fotos/2.jpg',80),(3,'uploads/ongs/45/fotos/3.jpg',45),(3,'uploads/ongs/47/fotos/3.jpg',47),(3,'uploads/ongs/48/fotos/3.jpg',48),(3,'uploads/ongs/49/fotos/3.jpg',49),(3,'uploads/ongs/51/fotos/3.jpg',51),(3,'uploads/ongs/69/fotos/3.jpg',69),(3,'uploads/ongs/70/fotos/3.jpg',70),(3,'uploads/ongs/71/fotos/3.jpg',71),(3,'uploads/ongs/72/fotos/3.jpg',72),(3,'uploads/ongs/73/fotos/3.jpg',73),(3,'uploads/ongs/74/fotos/3.jpg',74),(3,'uploads/ongs/75/fotos/3.jpg',75),(3,'uploads/ongs/76/fotos/3.jpg',76),(3,'uploads/ongs/77/fotos/3.jpg',77),(3,'uploads/ongs/78/fotos/3.jpg',78),(3,'uploads/ongs/80/fotos/3.jpg',80),(4,'uploads/ongs/45/fotos/4.jpg',45),(4,'uploads/ongs/47/fotos/4.jpg',47),(4,'uploads/ongs/48/fotos/4.jpg',48),(4,'uploads/ongs/51/fotos/4.jpg',51),(4,'uploads/ongs/69/fotos/4.jpg',69),(4,'uploads/ongs/70/fotos/4.jpg',70),(4,'uploads/ongs/71/fotos/4.jpg',71),(4,'uploads/ongs/72/fotos/4.jpg',72),(4,'uploads/ongs/73/fotos/4.jpg',73),(4,'uploads/ongs/74/fotos/4.jpg',74),(4,'uploads/ongs/75/fotos/4.jpg',75),(4,'uploads/ongs/76/fotos/4.jpg',76),(4,'uploads/ongs/77/fotos/4.jpg',77),(4,'uploads/ongs/78/fotos/4.jpg',78),(4,'uploads/ongs/80/fotos/4.jpg',80),(5,'uploads/ongs/45/fotos/5.jpg',45),(5,'uploads/ongs/47/fotos/5.jpg',47),(5,'uploads/ongs/48/fotos/5.jpg',48),(5,'uploads/ongs/51/fotos/5.jpg',51),(5,'uploads/ongs/70/fotos/5.jpg',70),(5,'uploads/ongs/71/fotos/5.jpg',71),(5,'uploads/ongs/73/fotos/5.jpg',73),(5,'uploads/ongs/74/fotos/5.jpg',74),(5,'uploads/ongs/75/fotos/5.jpg',75),(5,'uploads/ongs/76/fotos/5.jpg',76),(5,'uploads/ongs/77/fotos/5.jpg',77),(5,'uploads/ongs/78/fotos/5.jpg',78),(5,'uploads/ongs/80/fotos/5.jpg',80),(6,'uploads/ongs/45/fotos/6.jpg',45),(6,'uploads/ongs/48/fotos/6.jpg',48),(6,'uploads/ongs/51/fotos/6.jpg',51),(6,'uploads/ongs/74/fotos/6.jpg',74),(6,'uploads/ongs/75/fotos/6.jpg',75),(6,'uploads/ongs/76/fotos/6.jpg',76),(6,'uploads/ongs/77/fotos/6.jpg',77),(6,'uploads/ongs/78/fotos/6.jpg',78),(6,'uploads/ongs/80/fotos/6.jpg',80),(7,'uploads/ongs/48/fotos/7.jpg',48),(7,'uploads/ongs/50/fotos/7.jpg',69),(7,'uploads/ongs/74/fotos/7.jpg',74),(7,'uploads/ongs/75/fotos/7.jpg',75),(7,'uploads/ongs/80/fotos/7.jpg',80),(8,'uploads/ongs/74/fotos/8.jpg',74),(8,'uploads/ongs/75/fotos/8.jpg',75);
/*!40000 ALTER TABLE `FotosOng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InteresseItem`
--

DROP TABLE IF EXISTS `InteresseItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InteresseItem` (
    `id_divulgacao` int(11) NOT NULL,
    `id_usuarioOng` int(11) NOT NULL,
    `dt_itemRecebido` datetime DEFAULT NULL,
    `dt_interesseItem` datetime DEFAULT NULL,
    `dt_buscaItem` datetime DEFAULT NULL,
    `ic_interesseConfirmado` tinyint(1) DEFAULT NULL,
    `id_tipoEntrega` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_divulgacao` , `id_usuarioOng`),
    KEY `fk_InteresseItem_Usuario` (`id_usuarioOng`),
    KEY `fk_InteresseItem_TipoEntrega` (`id_tipoEntrega`),
    CONSTRAINT `fk_InteresseItem_DivulgacaoItem` FOREIGN KEY (`id_divulgacao`)
        REFERENCES `DivulgacaoItem` (`id_divulgacao`),
    CONSTRAINT `fk_InteresseItem_TipoEntrega` FOREIGN KEY (`id_tipoEntrega`)
        REFERENCES `TipoEntrega` (`id_tipoEntrega`),
    CONSTRAINT `fk_InteresseItem_Usuario` FOREIGN KEY (`id_usuarioOng`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InteresseItem`
--

LOCK TABLES `InteresseItem` WRITE;
/*!40000 ALTER TABLE `InteresseItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `InteresseItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MotivoDenunciaCampanha`
--

DROP TABLE IF EXISTS `MotivoDenunciaCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MotivoDenunciaCampanha` (
    `id_motivoDenuncia` int(11) NOT NULL,
    `nm_motivoDenuncia` varchar(250) DEFAULT NULL,
    `id_motivoValorDenuncia` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_motivoDenuncia`),
    KEY `fk_MotivoDenunciaCampanha_ValorMotivoDenuncia` (`id_motivoValorDenuncia`),
    CONSTRAINT `fk_MotivoDenunciaCampanha_ValorMotivoDenuncia` FOREIGN KEY (`id_motivoValorDenuncia`)
        REFERENCES `ValorMotivoDenuncia` (`id_motivoValorDenuncia`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MotivoDenunciaCampanha`
--

LOCK TABLES `MotivoDenunciaCampanha` WRITE;
/*!40000 ALTER TABLE `MotivoDenunciaCampanha` DISABLE KEYS */;
INSERT INTO `MotivoDenunciaCampanha` VALUES (1,'Fraude',3),(2,'Informações falsas ou enganosas',2),(3,'Uso impróprio de fundos',3),(4,'Violações de direitos autorais ou plágio',1),(5,'Ameaças ou intimidação',3),(6,'Desrespeito aos termos da plataforma',1),(7,'Prejudicando a imagem de uma causa legítima',2),(8,'Assédio ou discriminação',3);
/*!40000 ALTER TABLE `MotivoDenunciaCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MotivoDenunciaUsuario`
--

DROP TABLE IF EXISTS `MotivoDenunciaUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MotivoDenunciaUsuario` (
    `id_motivoDenuncia` int(11) NOT NULL,
    `nm_motivoDenuncia` varchar(250) DEFAULT NULL,
    `id_motivoValorDenuncia` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_motivoDenuncia`),
    KEY `fk_MotivoDenunciaUsuario_ValorMotivoDenuncia` (`id_motivoValorDenuncia`),
    CONSTRAINT `fk_MotivoDenunciaUsuario_ValorMotivoDenuncia` FOREIGN KEY (`id_motivoValorDenuncia`)
        REFERENCES `ValorMotivoDenuncia` (`id_motivoValorDenuncia`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MotivoDenunciaUsuario`
--

LOCK TABLES `MotivoDenunciaUsuario` WRITE;
/*!40000 ALTER TABLE `MotivoDenunciaUsuario` DISABLE KEYS */;
INSERT INTO `MotivoDenunciaUsuario` VALUES (1,'Comportamento abusivo ou assédio',3),(2,'Discurso de ódio',2),(3,'Conteúdo inadequado ou ofensivo',1),(4,'Fraude ou atividade ilegal',3),(5,'Assumir identidade falsa',3),(6,'Violação de privacidade',2),(7,'Spam ou atividade de robô',1),(8,'Plágio',2),(9,'Ameaças ou incitação à violência',3),(10,'Comportamento prejudicial à comunidade',1);
/*!40000 ALTER TABLE `MotivoDenunciaUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ODS`
--

DROP TABLE IF EXISTS `ODS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ODS` (
    `id_ods` int(11) NOT NULL,
    `nm_ods` varchar(45) DEFAULT NULL,
    `nm_hrefOds` varchar(250) DEFAULT NULL,
    PRIMARY KEY (`id_ods`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ODS`
--

LOCK TABLES `ODS` WRITE;
/*!40000 ALTER TABLE `ODS` DISABLE KEYS */;
INSERT INTO `ODS` VALUES (1,'Erradicação da pobreza','uploads/ods/1.jpg'),(2,'Fome zero','uploads/ods/2.jpg'),(3,'Boa saúde e bem-estar','uploads/ods/3.jpg'),(4,'Educação de qualidade','uploads/ods/4.jpg'),(5,'Igualdade de Gênero','uploads/ods/5.jpg'),(6,'Água limpa e saneamento','uploads/ods/6.jpg'),(7,'Energia acessível e limpa','uploads/ods/7.jpg'),(8,'Emprego digno e crescimento econômico','uploads/ods/8.jpg'),(9,'Indústria, inovação e infraestrutura','uploads/ods/9.jpg'),(10,'Redução das desigualdades','uploads/ods/10.jpg'),(11,'Cidades e comunidades sustentáveis','uploads/ods/11.jpg'),(12,'Consumo e produção responsáveis','uploads/ods/12.jpg'),(13,'Combate ás alterações climáticas','uploads/ods/13.jpg'),(14,'Vida debaixo da água','uploads/ods/14.jpg'),(15,'Vida sobre a terra','uploads/ods/15.jpg'),(16,'Paz, justiça e instituições fortes','uploads/ods/16.jpg'),(17,'Parcerias em prol das metas','uploads/ods/17.jpg'),(68,NULL,NULL);
/*!40000 ALTER TABLE `ODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoEntrega`
--

DROP TABLE IF EXISTS `TipoEntrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoEntrega` (
    `id_tipoEntrega` int(11) NOT NULL,
    `nm_tipoEntrega` varchar(250) DEFAULT NULL,
    PRIMARY KEY (`id_tipoEntrega`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoEntrega`
--

LOCK TABLES `TipoEntrega` WRITE;
/*!40000 ALTER TABLE `TipoEntrega` DISABLE KEYS */;
INSERT INTO `TipoEntrega` VALUES (1,'Ong busca doação'),(2,'Ong recebe doação');
/*!40000 ALTER TABLE `TipoEntrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoItem`
--

DROP TABLE IF EXISTS `TipoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoItem` (
    `id_tipoItem` int(11) NOT NULL,
    `nm_tipoItem` varchar(250) DEFAULT NULL,
    `img_tipoItem` varchar(250) DEFAULT NULL,
    PRIMARY KEY (`id_tipoItem`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoItem`
--

LOCK TABLES `TipoItem` WRITE;
/*!40000 ALTER TABLE `TipoItem` DISABLE KEYS */;
INSERT INTO `TipoItem` VALUES (1,'Roupas','uploads/tipoitem/icones/1.jpg'),(2,'Alimentos','uploads/tipoitem/icones/2.jpg'),(3,'Brinquedos','uploads/tipoitem/icones/3.jpg'),(4,'Móveis','uploads/tipoitem/icones/4.jpg'),(5,'Produtos de Higiene','uploads/tipoitem/icones/5.jpg'),(6,'Materiais Escolares','uploads/tipoitem/icones/6.jpg'),(7,'Equipamentos Médicos','uploads/tipoitem/icones/7.jpg'),(8,'Eletrônicos','uploads/tipoitem/icones/8.jpg'),(9,'Livros','uploads/tipoitem/icones/9.jpg'),(10,'Outros','uploads/tipoitem/icones/10.jpg');
/*!40000 ALTER TABLE `TipoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoItem_Ong`
--

DROP TABLE IF EXISTS `TipoItem_Ong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoItem_Ong` (
    `id_tipoItem` int(11) NOT NULL,
    `id_usuarioOng` int(11) NOT NULL,
    PRIMARY KEY (`id_tipoItem` , `id_usuarioOng`),
    KEY `fk_TipoItem_Ong_Usuario` (`id_usuarioOng`),
    CONSTRAINT `fk_TipoItem_Ong_TipoItem` FOREIGN KEY (`id_tipoItem`)
        REFERENCES `TipoItem` (`id_tipoItem`),
    CONSTRAINT `fk_TipoItem_Ong_Usuario` FOREIGN KEY (`id_usuarioOng`)
        REFERENCES `Usuario` (`id_usuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoItem_Ong`
--

LOCK TABLES `TipoItem_Ong` WRITE;
/*!40000 ALTER TABLE `TipoItem_Ong` DISABLE KEYS */;
INSERT INTO `TipoItem_Ong` VALUES (6,42),(6,43),(9,43),(1,45),(2,45),(3,45),(6,45),(5,47),(6,47),(3,48),(2,49),(5,49),(2,51),(5,51),(7,51),(4,69),(9,69),(2,70),(8,70),(7,73),(2,74),(6,74),(1,76),(6,77),(8,77),(9,77),(1,78),(4,78),(6,79),(2,80);
/*!40000 ALTER TABLE `TipoItem_Ong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoUsuario`
--

DROP TABLE IF EXISTS `TipoUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoUsuario` (
    `id_tipoUsuario` int(11) NOT NULL,
    `nm_tipoUsuario` varchar(30) DEFAULT NULL,
    PRIMARY KEY (`id_tipoUsuario`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoUsuario`
--

LOCK TABLES `TipoUsuario` WRITE;
/*!40000 ALTER TABLE `TipoUsuario` DISABLE KEYS */;
INSERT INTO `TipoUsuario` VALUES (0,'Doador'),(1,'Ong'),(2,'Administrador');
/*!40000 ALTER TABLE `TipoUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
    `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
    `nm_email` varchar(250) DEFAULT NULL,
    `nm_emailContato` varchar(250) DEFAULT NULL,
    `nm_usuario` varchar(100) DEFAULT NULL,
    `nm_senha` varchar(45) DEFAULT NULL,
    `nm_telefone` varchar(20) DEFAULT NULL,
    `nm_indentificacao` varchar(45) DEFAULT NULL,
    `ds_usuario` varchar(1000) DEFAULT NULL,
    `nm_cep` varchar(10) DEFAULT NULL,
    `nm_estado` varchar(45) DEFAULT NULL,
    `nm_cidade` varchar(100) DEFAULT NULL,
    `nm_rua` varchar(250) DEFAULT NULL,
    `nm_numero` varchar(5) DEFAULT NULL,
    `nm_bairro` varchar(45) DEFAULT NULL,
    `nm_complemento` varchar(45) DEFAULT NULL,
    `nm_log` varchar(45) DEFAULT NULL,
    `nm_lat` varchar(45) DEFAULT NULL,
    `img_fotoPerfil` varchar(400) DEFAULT NULL,
    `nm_website` varchar(250) DEFAULT NULL,
    `img_banner` varchar(400) DEFAULT NULL,
    `nm_pix` varchar(250) DEFAULT NULL,
    `ic_banido` tinyint(1) DEFAULT NULL,
    `dt_desboloqueio` datetime DEFAULT NULL,
    `ic_podeBuscar` tinyint(1) DEFAULT NULL,
    `id_tipoUsuario` int(11) DEFAULT NULL,
    `id_categoriaOng` int(11) DEFAULT NULL,
    PRIMARY KEY (`id_usuario`),
    UNIQUE KEY `nm_email_UNIQUE` (`nm_email`),
    KEY `fk_Usuario_TipoUsuario` (`id_tipoUsuario`),
    KEY `fk_Usuario_CategoriaOng_idx` (`id_categoriaOng`),
    CONSTRAINT `fk_Usuario_CategoriaOng` FOREIGN KEY (`id_categoriaOng`)
        REFERENCES `CategoriaOng` (`id_categoriaOng`)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Usuario_TipoUsuario` FOREIGN KEY (`id_tipoUsuario`)
        REFERENCES `TipoUsuario` (`id_tipoUsuario`)
)  ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'guilhermenegrao@gmail.com',NULL,'Guilherme','67a1643e2da537ce44960b0f15e3695e','13996573546','1111111111111','legal','11070101','Sao Paulo','Santos','Ana costa','37','Vila Bellmiro','Apto10','989097976868','863298764239862983',NULL,NULL,NULL,NULL,0,NULL,0,0,NULL),(2,'gustavonegrao@gmail.com',NULL,'Gustavo','55e1c1fff41bc6d2914b6a3cd9849966','134556789003','222222222222','top','11070102','Sao Paulo','Sao Vicente','Carvalho','38','Vila Belmiro','Apto45','222222222222222222','4344444444444444',NULL,NULL,NULL,NULL,1,NULL,0,0,NULL),(3,'Rapha@gmail.com',NULL,'Rapha','2bc5ca34f7d326c046c1fef6e98660e2','23233333333333','77777777777777','nerd','83643764','Minas Gerais','Belo Horizonte','Eurico Mursa','67','Mariana','Apto13','333333333333333333','666666666666666666',NULL,NULL,NULL,NULL,0,NULL,0,0,NULL),(4,'Alisson@email.com','Alisson@email.com','Alisson','686762b82fde1e304914651b082e46c8','(11) 1234-5678','ID001','inteligente','12345-678','Estado 1','Cidade 1','Rua 1','123','Bairro 1','Complemento 1','Log 1','Lat 1',NULL,NULL,NULL,NULL,1,'2023-07-31 12:34:56',0,0,NULL),(5,'Laura@email.com','Laura@email.com','Laura','4ebdf84368f46ae784253f97d10fe1af','(11) 1234-5679','ID901','loira','12345-6987','Estado 2','Cidade 2','Rua 2','456','Bairro 2','Complemento 2','Log 2','Lat 3',NULL,NULL,NULL,NULL,0,NULL,0,0,NULL),(6,'Marcella@email.com','Marcella@email.com','Marcella','ae999c4a74ac9274c9def8130a905a6c','(11) 2346-5679','2763','morena','8635378','Estado 3','Cidade 3','Rua 3','354','Bairro 3','Complemento 3','Log 3','Lat 4',NULL,NULL,NULL,NULL,0,NULL,0,0,NULL),(7,'Freddy@email.com','Freddy@email.com','Freddy','21fd2ca996189d2d06837c0040e4ab4f','(13) 7346-5679','789','professor','97368976','Estado 4','Cidade 5','Rua 5','4345','Bairro 4','Complemento 4','Log 4','Lat 4',NULL,NULL,NULL,NULL,1,NULL,0,0,NULL),(24,'raphalima337@gmail.com',NULL,'raphael','827ccb0eea8a706c4c34a16891f84e7b','13991217101','9999999999',NULL,'11075200','SP','Santos','Rua Lucas Fortunato','101','Vila Mathias','até 119/120','-46.329006','-23.945305',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),(25,'macela@gmail.com',NULL,'marcella','6531401f9a6807306651b87e44c05751','1383129381','8888888888',NULL,'11538105','SP','Cubatão','Rua Julio Amaro Ribeiro','71','Vila Natal','22','-46.433317','-23.9013672',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),(42,'oscebem@oscebem.org','contato@oscebem.org','Oscebem','202cb962ac59075b964b07152d234b70','+55 (47) 9.9600.0572','03.517.135/0001-17','A Oscebem – Obras Sociais da Casa Espírita Bezerra de Menezes foi fundada por um grupo de voluntários em 16/09/2009. Tem sua sede no Bairro Costa e Silva e extensão no Bom Retiro, Joinville-SC.\n\nÉ uma organização civil, beneficente, de assistência social, cuja missão é a formação integral da criança, adolescentes, jovens, adultos e da terceira idade.\n\nA organização é dirigida por um Conselho de Administração e uma Diretoria Executiva e tem por objetivos ofertar ações gratuitas, continuadas e planejadas, com centralidade na família e organizadas dentro dos níveis de Proteção Social Básica, Proteção Social Especial de Média Complexidade e de Garantia e Defesa de Direitos, com vistas ao desenvolvimento de capacidades e potencialidades dos usuários bem como na defesa e afirmação de seus direitos, sem distinção de raça, gênero, etnia, credo religioso ou outra forma de discriminação.','89218585','SC','Joinville','João Koneski','2413 ','América','Empresa','-48.8729952','-26.2797092','uploads/ongs/42/icone/42.jpg','https://oscebem.org/','uploads/ongs/42/banner/42.jpg','+5547996000572',0,NULL,1,1,1),(43,'glocal @org.br','contato.glocal @org.br','Glocal','e1d5be1c7f2f456670de3d53c7b54f4a','03022880671','40.215.438/0001-01','Somos um grupo de jovens, que trabalham de forma voluntária para atingir pessoas através da arte, tirando-as do comodismo, refletindo uma espiritualidade contemporânea baseada nos ensinamentos de Jesus, de forma não religiosa porém relevante para nosso dia a dia.\n\nTodos os nossos encontros são realizados com o objetivo de encurtar a distância entre você, no seu contexto cultural dentro dessa cidade maluca, e a pessoa de Jesus Cristo!','05423010','SP','São Paulo','Diogo Moreira','132  ','Pinheiros','Empresa','-46.6956896','-23.5698306','uploads/ongs/43/icone/43.jpg','https://glocal.org.br/','uploads/ongs/43/banner/43.jpg','+5513991217101',0,NULL,1,1,1),(45,'comunidadeimpacto @org.br','contato.comunidadeimpacto @org.br','Comunidade Impacto','a717f41c203cb970f96f706e4b12617b','+55 (11) 3599-7437','15.416.010/0001-80','Fundada em 2012 por um grupo de cristãos Batistas que, inconformados com o grande número de famílias desestruturadas com crianças e adolescentes na rua sem atividade construtiva para ocupar seu tempo, a evasão escolar e o envolvimento precoce com o mundo das drogas, decidiram constituir a Comunidade Impacto. Considerando esse contexto a Instituição oferta Serviço de Convivência e Fortalecimento de Vínculos para 114 crianças e adolescentes, complementando as ações familiares, fortalecendo vínculos e contribuindo na redução de danos causado pelo convívio na rua através das oficinas de judô, hip hop, grafite, artesanato, música e roda de conversa. Distribuímos kit alimento e leite semanalmente para famílias cadastradas e realizamos encontros bimestrais (aos sábados a tarde) com essas famílias para garantir o direito ao acesso à informação.','06263100','SP','Osasco','Av. João Ventura dos Santos','3031','Munhoz Júnior','Casa','-46.8056191','-23.4940141','uploads/ongs/45/icone/45.jpg','https://comunidadeimpacto.wixsite.com/ongsp','uploads/ongs/45/banner/45.jpg','15416010000180',0,NULL,1,1,1),(47,'projetosocial.blacks@gmail.com','projetosocial.blacks@gmail.com','Black\'s Urbano','17c3433fecc21b57000debdf7ad5c930','+55 (11) 97853-7462','39.935.047/0001-82','O projeto dos Black\'s Urbanos é uma iniciativa poderosa que ocorre na zona leste de São Paulo, nas regiões de A e Carvalho. Nossa organização concentra seus esforços em três áreas vitais: recreação, educação e qualificação profissional. No entanto, nossa visão é ainda mais abrangente e inspiradora. Almejamos incorporar programas culturais, visando um objetivo grandioso: impactar positivamente o maior número possível de crianças, jovens e adolescentes que vivem nas favelas. Queremos oferecer a eles novas perspectivas, oportunidades e, acima de tudo, um futuro mais promissor. Estamos comprometidos em trazer mudanças significativas para essas comunidades, capacitando e transformando vidas por meio de nossos projetos abrangentes e visionários.','08223180','SP','São Paulo','Cidade Antônio Estêvão de Carvalho','3031','Itaquera','Casa','-46.4788712','-23.5382948','uploads/ongs/47/icone/47.jpg','https://www.01centavo.com.br/blacks-urbano.html','uploads/ongs/47/banner/47.jpg','39935047000182',0,NULL,1,1,1),(48,'bikeanjo@org.br','contato.bikeanjo@org.br','Bike Anjo Porto Alegre','801f9802e6e29af83e0f62bf1de96b10','+55 (65) 9999-9999','19.515.100/0001-89 ','A Bike Anjo é uma rede de pessoas que acreditam na bicicleta como uma ferramenta para a transformação das pessoas e das nossas cidades. Para nós, quanto mais gente pedalando, melhores serão as nossas cidades','90040400','RS','Porto Alegre','Rua Prof. Freitas e Castro','191','Azenha','Casa','-51.2154741','-30.0495343','uploads/ongs/48/icone/48.jpg','https://www.bikeanjo.org/','uploads/ongs/48/banner/48.jpg','19515100000189',0,NULL,1,1,1),(49,'movimento-zona-leste-somos-nos@org.br','contato.movimento-zona-leste-somos-nos@org.br','Movimento Zona Leste Somos Nós','b303d9f742b2c92ecca9f80e6284dc33','+55 (11) 9999-9999','19.515.100/0001-89 ','A ONG Zona Leste Somos Nós é uma organização que atua na região leste da cidade de São Paulo, buscando promover o desenvolvimento social e econômico da comunidade local. Nós seguimos em diversas frentes, em parceria com entidades parceiras, tais como a promoção da educação, ações de saúde, cultura, esporte e lazer, além do apoio ao empreendedorismo local.','08032250','SP','São Paulo','Rua Dr. Zacarias Colaço Filho','45','Jardim Santo Antonio','Casa','-46.4316122','-23.5151183','uploads/ongs/49/icone/49.jpg','https://zonalestesomosnos.com.br/','uploads/ongs/49/banner/49.jpg','+5511996372742',0,NULL,1,1,1),(51,'resgatando-amor@org.br','contato.resgatando-amor@org.br','Resgatando Amor','f5b897e6b564cd6fc8654076078bab8b','+55 (13) 9999-9999','35.826.454/0001-09','Resgatando Amor é formado por protetoras independentes e sem fins lucrativos, com o objetivo de ajudar animais em situação de vulnerabilidade.\n\nNossa Misão é ajudar animais em situação de abandono ou maus tratos a terem uma segunda chance e uma vida digna, conectando e envolvendo pessoas em favor da causa animal, para que juntos possamos dar uma nova chance aos animais abandonados, seja por meio da adoção responsável ou voluntariado.','90040400','RS','Porto Alegre','Rua Prof. Freitas e Castro','191','Azenha','Casa','-51.2154741','-30.0495343','uploads/ongs/51/icone/51.jpg','https://www.resgatandoamor.com/','uploads/ongs/51/banner/51.jpg','35826454000109',0,NULL,1,1,1),(69,'nyingmasp@nyingma.com.br','nyingmasp@nyingma.com.br','Centro Nyingma do Brasil','146cb63c0dbebb06ba572bdc1942479b','+55 (11) 3021-9376','00.704.538/0001-87','Desde 1984, o Nyingma centro de São Paulo (CNB) vem transmitindo os ensinamentos da linhagem Nyingma do Budismo Tibetano, com a realização de cursos, práticas, cerimônias, projetos de arte sagrada e divulgação da cultura do Tibet.\n\nO termo ”Linhagem Nyingma” designa a escola mais antiga do Budismo tibetano, que teve origem no Guru Padmasambhava, o Mestre nascido do Lótus, que levou e consolidou os ensinamento de Buddha no Tibet, no século VIII.','05461010','SP','São Páulo','Av. Prof Fonseca Rodrigues','224','Alto de Pinheiros','Casa','-46.7135449','-23.5513232','uploads/ongs/69/icone/69.jpg','https://www.centronyingmabrasil.org/','uploads/ongs/imgbanner.svg','+5511950441076',0,NULL,1,1,1),(70,'fas@fas-amazonia.org','fas@fas-amazonia.org','FAS (Fundação Amazônia Sustentável)','f8519eb5377c7e1b867129ce08d37089','+55 (92) 4009-8900','09.351.359/0001-88','A Fundação Amazônia Sustentável (FAS) é uma organização da sociedade civil sem fins lucrativos que atua pelo desenvolvimento sustentável da Amazônia por meio de programas e projetos nas áreas de educação e cidadania, saúde, empoderamento, pesquisa e inovação, conservação ambiental, infraestrutura comunitária, empreendedorismo e geração de renda. A FAS tem como missão contribuir para a conservação do bioma pela valorização da floresta em pé e de sua biodiversidade e pela melhoria da qualidade de vida das populações da Amazônia. Em 2023, a instituição completa 15 anos de atuação com números de destaque, como o aumento de 202% na renda média de milhares famílias beneficiadas e a queda de 40% no desmatamento em áreas atendidas entre 2008 e 2021.','69055660','AM','Manaus','Rua Alvaro Braga','351','Parque Dez de Novembro','Apt 23','-60.008802','-3.0752154','uploads/ongs/70/icone/70.jpg','https://www.centronyingmabrasil.org/','uploads/ongs/70/banner/70.jpg','09351359000188',0,NULL,1,1,1),(71,'betania@novosertao.org.br','betania@novosertao.org.br','Instituto Novo Sertão','c98693aeed2a8a20552e0f9a1577e08f','+55 (86) 99498-6598','22.985.281/0001-11','Nossa caminhada no sertão teve início em 2012 quando José Carlos que ficou conhecido como Zé da Água conheceu Betânia do Piauí e seus muitos vilarejos carentes ao redor. Ele vinha da capital de Teresina que é aproximadamente 500 km até a pequena cidade sertaneja. As primeiras ações tiveram como foco a entrega de insumos emergenciais como água, comida e roupas para pessoas que viviam em extrema pobreza.\n\nNesse período o sertão passava por um período prolongado de seca, o pior dos últimos 50 anos, por isso esses insumos emergenciais eram muito importantes naquele momento.\n\nPorém, depois de pouco tempo nessas ações emergenciais José e os demais amigos que apoiavam as ações perceberam que essas atividades não tinham o poder de mudar por completo a realidade de miséria e falta de esperança que vivenciamos no sertão, foi então que em 2015 juntamos amigos e parceiros que compartilham dos meus sonhos e ideias para uma transformação verdadeira no sertão.','64753000','PI','Betânia Do Piaui','Av. José Inocéncio','451','Centro','Empresa','-40.7960634','-8.1458947','uploads/ongs/71/icone/71.jpg','https://www.novosertao.org.br/','uploads/ongs/71/banner/71.jpg','22985281000111',0,NULL,1,1,1),(72,'centrocidadania@org.br','centrocidadania@org.br','Centro Cidadania','638b45f276e50c63b1d0e4a057444dd7','+55 (83) 99820-2046','07.086.359/0001-72','Nossa caminhada no sertão teve início em 2012 quando José Carlos que ficou conhecido como Zé da Água conheceu Betânia do Piauí e seus muitos vilarejos carentes ao redor. Ele vinha da capital de Teresina que é aproximadamente 500 km até a pequena cidade sertaneja. As primeiras ações tiveram como foco a entrega de insumos emergenciais como água, comida e roupas para pessoas que viviam em extrema pobreza.\n\nNesse período o sertão passava por um período prolongado de seca, o pior dos últimos 50 anos, por isso esses insumos emergenciais eram muito importantes naquele momento.\n\nPorém, depois de pouco tempo nessas ações emergenciais José e os demais amigos que apoiavam as ações perceberam que essas atividades não tinham o poder de mudar por completo a realidade de miséria e falta de esperança que vivenciamos no sertão, foi então que em 2015 juntamos amigos e parceiros que compartilham dos meus sonhos e ideias para uma transformação verdadeira no sertão.\n\nA partir dessa premissa de transformaçã','58737000','PB','Maturéia','Sítio Otávio','01','Zona Rural','Casa','-37.3517553','-7.2661879','uploads/ongs/72/icone/72.jpg','https://centrocidadania.org/','uploads/ongs/72/banner/72.jpg','+5513991217101',0,NULL,1,1,1),(73,'unidospelavida@org.br','unidospelavida@org.br','Unidos Pela Vida','f67d8f98158130619a8fd8c951a55bf6','+55 (41) 99630-0022','14.850.355/0001-84','Fundado em 2011, o Unidos pela Vida – Instituto Brasileiro de Atenção à Fibrose Cística é uma organização social sem fins lucrativos com sede em Curitiba (PR) e atuação nacional que tem como missão defender que pessoas com fibrose cística no Brasil tenham conhecimento sobre sua saúde e direitos, equidade no acesso ao diagnóstico precoce e aos melhores tratamentos, contribuindo para melhora na qualidade de vida.','80420130','PR','Curitiba','Rua Francisco Rocha','198','Batel','Casa','-49.2881931','-25.4437664','uploads/ongs/73/icone/73.jpg','https://unidospelavida.org.br/','uploads/ongs/73/banner/73.jpg','28229013000156',0,NULL,1,1,1),(74,'amigosdobem@org','contato.amigosdobem@org','Amigos do Bem','f67d8f98158130619a8fd8c951a55bf6','+55 (11) 3019 0107','22.134.358/0001-40','O nosso trabalho começou em 1993, com um pequeno grupo de amigos, liderado por Alcione Albanesi. Hoje, somos um dos maiores projetos sociais do país e atendemos, regularmente, a mais de 150 mil pessoas no sertão de Alagoas, de Pernambuco e do Ceará.\n\nPromovemos a transformação de milhares de vidas por meio de projetos contínuos de educação, geração de renda e acesso à água, moradia e saúde. Estamos rompendo um ciclo secular de miséria no sertão. Com oportunidades, mais de 10 mil crianças e jovens já enxergam um futuro diferente.','03350005','SP','São Paulo','R. Dr Gabriel de Resende','122','Vila Invernada','Prédio','-46.5680622','-23.5715807','uploads/ongs/74/icone/74.jpg','https://amigosdobem.org/','uploads/ongs/74/banner/74.jpg','b0bb5add-d81d-441c-9fb6-ac55cf7cd8c6',0,NULL,1,1,1),(75,'lixozerobs@lixozerobs.org','contato@santoslixozero.org','Lixo Zero Baixada Santista','baf4bdba77403255caca22f8954ef1bd','+55 (13) 98123-4195','33.978.003/0001-53','O Instituto Lixo Zero - Baixada Santista (ILZ-BS) é uma Organização da Sociedade Civil, sem fins lucrativos, cujo objetivo é despertar a consciência ambiental, a mudança de atitude e transformar a cultura do “lixo” na cultura do recurso, do cuidado com o uso dos recursos naturais e seus impactos para as presentes e futuras gerações..\n\nSeguindo os passos do movimento Zero Waste e do Instituto Lixo Zero Brasil, o ILZ-BS vem, desde 2017, realizando ações como: palestras, oficinas, cine-debates, rodas de conversa, fóruns, semanas lixo zero, projetos como o Escola Lixo Zero, o Festival Oceano, entre outras.','03350005','SP','São Paulo','R. Dr Gabriel de Resende','122','Vila Invernada','Prédio','-46.5680622','-23.5715807','uploads/ongs/75/icone/75.jpg','https://lixozerobs.org.br/','uploads/ongs/75/banner/75.jpg','+5513991217101',0,NULL,1,1,1),(76,'maternizar@maternizar.com.br','maternizar@maternizar.com.br','Maternizar','e1c5c5ab66be6f65625da6ce2f4fbfc2','+55 (13) 98860-9345','33.978.003/0001-53','O Maternizar - Grupo de apoio à adoção de São Vicente é uma Organização não Governamental, criada em 2007, filiada à Associação Nacional dos Grupos de Apoio à Adoção (ANGAAD).\n\nTem como objetivo esclarecer, divulgar, estimular a adoção legal, segura e para sempre. Atua na promoção do direito à convivência familiar e comunitária de crianças e adolescentes.','11310200','SP','São Vincente','Av. Capitão-Mor Aguiar','697','Centro','Sala 1','-46.3944555','-23.9651407','uploads/ongs/76/icone/76.jpg','https://www.instagram.com/maternizar_gaa/','uploads/ongs/76/banner/76.jpg','17238267000114',0,NULL,1,1,1),(77,'comunicacao@icrescer.org.br','comunicacao@icrescer.org.br','Instituto Crescer','8539a3055a66b43466a761f67798cd3b','+55 (11) 4550-3910','05.763.528/0001-36','Estabelecemos parcerias duradouras que vão ao encontro dos valores e necessidades estratégicas de cada organização, auxiliando no desenvolvimento de projetos que ajudam a atingir os Objetivos de Desenvolvimento Sustentáveis (ODSs) da Agenda 2030 da ONU, bem como potencializam o ESG das corporações.','04013043','SP','São Paulo','R. Cubatão','929','Vila Mariana','Conjunto 101','-46.723989','-23.5799228','uploads/ongs/77/icone/77.jpg','https://institutocrescer.org.br/','uploads/ongs/77/banner/77.jpg','+5513991217101',0,NULL,1,1,1),(78,'semearecrescer@gmail.com','semearecrescer@gmail.com','Semear e Crescer','ebf510a0d42f925a0609b44ef27da9b5','+55 (13) 3034-2719','24.742.906/0001-40','Em 2016 a Talita, como psicopedagoga e mãe do Eros, garoto 11 anos diagnosticado com autismo, teve a ideia de montar uma clínica popular em Praia Grande -SP (litoral sul de São Paulo), porém depois optou por fazer uma ONG.\n\nNo mesmo ano (2016) a Carol (que é advogada e também é mãe de uma criança autista) chegou no litoral de São Paulo e logo procurou por uma instituição de referência para o tratamento do filho e assim encontrou a SEMEAR.\n\nNo dia da matrícula a Talita chamou Carol para fazer parte da equipe. Em 2017 a Talita passou em um concurso e deixou a cidade, e então a Carol passou a assumir a presidência da ONG.\n\nSemear e Crescer, uma Associação que está fazendo a diferença em Praia Grande. Profissionais de diversas áreas realizam trabalhos voluntários com crianças autistas em Praia Grande.','11700470','SP','Praia Grande','R. Brg. José Ferreira','000','Canto do Forte','Casa','-46.3993967','-24.0079271','uploads/ongs/78/icone/78.jpg','https://semear-e-crescer.ueniweb.com/','uploads/ongs/78/banner/78.jpg','+5513991217101',0,NULL,1,1,1),(79,'sinproepdf@sinproepdf.org.br','contato.sinproepdf@sinproepdf.org.br','Sinproepdf','4854d82e6e08f9a62323c3e20f57f63c','+55 (61) 3321-0042','50.270.172/0001-53','No dia 22 de outubro de 2005, a Comissão Pró-Fundação do Sindicato dos Professores em Estabelecimento Particulares de Ensino do Distrito Federal (Sinproep), composta pelos professores Rodrigo Pereira de Paula, Izac Antonio de Oliveira, Antonio de Lisboa Amâncio Vale, e pelo presidente da Federação Interestadual dos Trabalhadores em Estabelecimentos de Ensino (Fitee), Edson de Paula Lima, deu início à assembléia geral extraordinária de fundação do Sinproep.','70610971','DF','Brasilia','Setor de Indústrias Gráficas Sul Quadra 03','03','St. Sudoeste','Bloco C, S/n - 50','-46.723989','-23.5799228','uploads/ongs/79/icone/79.jpg','https://www.sinproepdf.org.br/','uploads/ongs/79/banner/79.jpg','+5513991217101',0,NULL,1,1,1),(80,'acaodacidadania@acaodacidadania.org.br','contato@acaodacidadania.org.br','Ação e Cidadania','c4d42537cbeefd09527cf71628c1fcaa','+55 (21) 2233-7460','50.270.172/0001-53','Fundada pelo sociólogo Herbert de Souza, o Betinho, a Ação da Cidadania nasceu em 1993, formando uma imensa rede de mobilização de alcance nacional para ajudar 32 milhões de brasileiros que, segundo dados do Ipea, estavam abaixo da linha da pobreza. Criada no auge do Movimento pela Ética na Política, a Ação da Cidadania contra a Fome, a Miséria e pela Vida se transformou no movimento social mais reconhecido do Brasil. Seu principal eixo de atuação é uma extensa rede de mobilização formada por comitês locais da sociedade civil organizada, em sua maioria compostos por lideranças comunitárias, mas com participação de todos os setores sociais.','20220325','RJ','Rio de Janeiro','R. da Gamboa','246','Santo Cristo','','-43.1982423','-22.897638','uploads/ongs/80/icone/80.jpg','https://www.acaodacidadania.org.br','uploads/ongs/80/banner/80.jpg','+5513991217101',0,NULL,1,1,1),(81,'alisson.r.santos92@gmail.com',NULL,'Alisson Ramos Aquino dos Santos','202cb962ac59075b964b07152d234b70','+55(13)997532875','478.971.706-07',NULL,'11538030','SP','Cubatão','Dos Girassóis','340','Vila Natal','Casa','-43.198242,3038','-22.897638',NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL),(82,'onggenerosidade@gmail.com','generosidade@gmail.com','Generosidade','generosidade123','(13) 99765-4763','12.890.123/0001-00','O projeto nasceu com um grupo de amigos que tinham como objetivo auxiliar no combate à fome, a desigualdade e na luta pelas vidas, sem qualquer pré-conceito de idade e gêneros. Nossos principais valores são: amor, igualdade, respeito, caridade, empatia e generosidade.','11075550','São Paulo','Santos','Rua Dom Pedro I','32','Vila Belmiro',NULL,'-23.951891423521257','-46.33907711349242','uploads/ongs/82/icone/82.jpg','generosidade.com','uploads/ongs/82/banner/82.jpg',NULL,0,NULL,0,1,12);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ValorMotivoDenuncia`
--

DROP TABLE IF EXISTS `ValorMotivoDenuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ValorMotivoDenuncia` (
    `id_motivoValorDenuncia` int(11) NOT NULL,
    `nm_valorMotivoDenuncia` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id_motivoValorDenuncia`)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ValorMotivoDenuncia`
--

LOCK TABLES `ValorMotivoDenuncia` WRITE;
/*!40000 ALTER TABLE `ValorMotivoDenuncia` DISABLE KEYS */;
INSERT INTO `ValorMotivoDenuncia` VALUES (1,'Leve'),(2,'Médio'),(3,'Grave');
/*!40000 ALTER TABLE `ValorMotivoDenuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'umacausa'
--

--
-- Dumping routines for database 'umacausa'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularPorcentagemCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   FUNCTION `CalcularPorcentagemCampanha`(pCodigo int) RETURNS int(11)
begin
DECLARE perc int;
	Select 
	if ( qt_arrecadado is null OR qt_meta is null, 0,((qt_arrecadado / qt_meta) * 100)) into perc
from
    Campanha
where
    id_campanha = pCodigo;

return perc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarDadosCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarDadosCampanha`(pIdCampanha int, pDsCampanha varchar(250), pDtFimEsperada datetime)
begin
Update Campanha set ds_campanha= pDsCampanha, dt_fimEsperado = pDtFimEsperada where id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarDadosDivulgacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarDadosDivulgacaoItem`(pIdDivulgacao int, pDsItem varchar(250), pQtItem int, pNmItem varchar(250), pImgDivulgacaoItem varchar(4250), pIdEstadoItem int, pIdTipoItem int)
begin
	Update DivulgacaoItem set ds_item = pDsItem, qt_item = pQtItem, nm_item = pNmItem, img_divulgacaoItem = pImgDivulgacaoItem, id_estadoItem = pIdEstadoItem, id_tipoItem = pIdTipoItem where id_divulgacao = pIdDivulgacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarDadosDoador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarDadosDoador`( pIdUsuario int,pEmail VARCHAR(250), pNomeUsuario VARCHAR(100), pTelefone VARCHAR(20), pDescricao VARCHAR(45), pCep VARCHAR(10), pEstado VARCHAR(45), pCidade VARCHAR(100), pRua VARCHAR(250), pNumero VARCHAR(5), pBairro VARCHAR(45), pComplemento VARCHAR(45), pLongitude VARCHAR(45), pLatitude VARCHAR(45))
begin
Update Usuario set nm_email = pEmail, nm_usuario= pNomeUsuario, nm_telefone = pTelefone, ds_usuario = pDescricao, nm_cep = pCep, nm_estado = pEstado, nm_cidade = pCidade, nm_rua = pRua, nm_numero = pNumero, nm_bairro = pBairro, nm_Complemento = pComplemento, nm_log = pLongitude, nm_lat = pLatitude where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarDadosOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarDadosOng`( pIdUsuario int,pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pTelefone varchar(20), pDescricao varchar(45), pCep varchar(10), pEstado varchar(45), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLongitude varchar(45), pLatitude varchar(45), pImagemFotoPerfil longblob, pWebSite varchar(250), pImagemBanner longblob, pPix varchar(250), pPodeBuscar bool)
begin
Update Usuario set nm_email = pEmail, nm_emailContato= pEmailContato, nm_usuario= pNomeUsuario, nm_telefone = pTelefone, ds_usuario = pDescricao, nm_cep = pCep, nm_estado = pEstado, nm_cidade = pCidade, nm_rua = pRua, nm_numero = pNumero, nm_bairro = pBairro, nm_Complemento = pComplemento, nm_log = pLongitude, nm_lat = pLatitude, img_fotoPerfil = pImagemFotoPerfil, nm_website = pWebSite, img_banner = pImagemBanner, nm_pix = pPix, ic_podeBuscar = pPodeBuscar where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarDiaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarDiaUsuario`(pIdUsuario int, PIdDia int, pHrInicio time, pHrFim time)
begin
Update dia_usuario set hr_inicio = pHrInicio, hr_fim = pHrFim where id_usuario = pIdUsuario and id_dia = pIdDia;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlterarSenhaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AlterarSenhaUsuario`(pIdUsuario int,pSenhaDigitada varchar(45), pNovaSenha varchar(45))
begin
    if VerificarSenha(pSenhaDigitada, pIdUsuario) = 0 Then
        Signal sqlstate '45000' set message_text = 'Senha incorreta';
    else
        Update Usuario set nm_senha = md5(pNovaSenha) where id_usuario = pIdUsuario;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AtualizarQtdArrecadadaCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `AtualizarQtdArrecadadaCampanha`(pIdCampanha int, pIdUsuario int, pQtdArrecadada double)
begin
Declare antigo double;
Declare total double;
Select qt_arrecadado into antigo from Campanha where id_campanha = pIdCampanha;
Select antigo + pQtdArrecadada into total;
Update Campanha set qt_arrecadado = total where id_usuario = pIdUsuario and id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarCampanha`(pIdCampanha int)
begin
Select id_usuario, img_bannerCampanha, nm_campanha, ds_campanha, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(pIdCampanha) as perc from Campanha where id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosCampanhas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosCampanhas`(pIdUsuario int)
begin
Select nm_campanha, dt_inicioCampanha, dt_fimCampanha, qt_arrecadado from Campanha where id_usuario = pIdUsuario;
-- lista de campanhas, na parte de cadastro da ong
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosCampanhasProximas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosCampanhasProximas`()
begin
Select c.nm_campanha, c.id_campanha, c.img_bannerCampanha, c.qt_arrecadado, c.qt_meta,u.nm_log, u.nm_lat  from Campanha c join Usuario u ON (c.id_usuario = u.id_usuario)where dt_fimCampanha is null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosCampanhasQuaseFinalizando` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosCampanhasQuaseFinalizando`()
begin
Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta from Campanha where dt_fimCampanha is null order by dt_fimEsperado ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosCampanhasQuaseProximas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosCampanhasQuaseProximas`(vIdUsuarioDoador int)
begin
Select nm_log, nm_lat from Usuario where id_usuario = vIdUsuarioDoador;
Select c.nm_campanha, c.id_campanha, c.img_bannerCampanha, c.qt_arrecadado, c.qt_meta,u.nm_log, u.nm_lat  from Campanha c join Usuario u ON (c.id_usuario = u.id_usuario)where dt_fimCampanha is null order by dt_fimEsperado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesDoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosColaboracoesDoUsuario`(pIdUsuario int)
begin
Select c.nm_campanha, dc.qt_doado, dc.dt_doacao, c.id_categoriaCampanha, dc.ic_doacaoConfirmada from DoacaoCampanha dc join Campanha c ON(c.id_campanha = dc.id_campanha) where dc.id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosDivulgacoesItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosDivulgacoesItem`(pIdUsuario int)
begin
-- lista de itens, na parte de cadastro do usuario
 Select nm_item, dt_divulgacao, qt_item from DivulgacaoItem where id_usuario = pIdUsuario order by nm_item;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosOng`(pIdUsuario int)
begin
	Select nm_usuario, img_fotoPerfil, ds_usuario from Usuario where id_tipoUsuario = 1 and id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosOngs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosMinimosOngs`()
begin
Select img_fotoPerfil, nm_usuario, id_usuario from Usuario where id_tipoUsuario = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosOng`(pIdUsuario int)
begin
	Select nm_usuario, img_banner, img_fotoPerfil, ds_usuario, nm_emailContato,nm_telefone, nm_indentificacao, nm_website, nm_cep, nm_estado, nm_cidade, nm_rua, nm_numero, nm_bairro, nm_complemento, CategoriaOng.nm_categoria, CategoriaOng.id_categoriaOng
	from Usuario join CategoriaOng on (Usuario.id_categoriaOng = CategoriaOng.id_categoriaOng)
	where id_tipoUsuario = 1 and id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosQrCodePixOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDadosQrCodePixOng`(pIdUsuario int)
begin
	select id_usuario, nm_usuario, nm_pix, nm_cidade from Usuario 
		where id_usuario = pIdUsuario and id_tipoUsuario = 1; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDivulgacoesItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDivulgacoesItem`(pIdDivulgacao int)
begin
 Select di.qt_item, di.ds_item, di.nm_item, di.img_divulgacaoItem, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null and di.id_divulgacao = pIdDivulgacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesCampanhaItensNaoConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDoacoesCampanhaItensNaoConfirmadas`(pIdUsuarioOng int)
begin
Select 
    dc.id_usuario,
    dc.dt_doacao,
    dc.qt_doado,
	ti.nm_tipoItem,
    c.nm_campanha
from
    Campanha c
        join
	TipoItem ti ON(c.id_tipoitem = ti.id_tipoitem)
		join
    Usuario u ON (u.id_usuario = c.id_usuario)
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
where
     dc.ic_doacaoConfirmada = false
		and c.id_usuario = pIdusuarioOng
       and c.id_categoriaCampanha = 2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesCampanhaMonetariaNaoConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDoacoesCampanhaMonetariaNaoConfirmadas`(pIdUsuarioOng int)
begin
Select 
    dc.id_usuario,
    dc.dt_doacao,
    dc.qt_doado,
    c.nm_campanha
from
    Campanha c
        join
    Usuario u ON (u.id_usuario = c.id_usuario)
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
where
     dc.ic_doacaoConfirmada = false
		and c.id_usuario = pIdusuarioOng
       and c.id_categoriaCampanha = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesItensNaoConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDoacoesItensNaoConfirmadas`(pIdUsuario int)
begin
Select u.nm_usuario, di.dt_doacao, di.hr_doacao, di.nm_item, di.qt_item from DoacaoItem di join Usuario u ON(di.id_usuarioDoador = id_usuario) where ic_doacaoConfirmada = false and id_usuarioOng = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesMonetariasNaoConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarDoacoesMonetariasNaoConfirmadas`(pIdUsuario int)
begin
Select u.nm_usuario, dm.dt_doacao, dm.vl_monetario from DoacaoMonetaria dm join Usuario u ON(dm.id_usuarioDoador = id_usuario) where ic_doacaoConfirmada = false and id_usuarioOng = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarImagemCampanhaODS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarImagemCampanhaODS`(pIdCampanha int)
begin
select nm_hrefOds, c.id_ODS from ODS join Campanha_ODS c on (ODS.id_ods = c.id_ods) where id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarLocalizacaoDoador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarLocalizacaoDoador`(vIdUsuarioDoador int)
begin 
Select nm_log, nm_lat from Usuario where id_usuario = vIdUsuarioDoador;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarLocalizacaoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarLocalizacaoUsuario`(pIdUsuario int)
begin
	select nm_log, nm_lat from Usuario where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarUsuarioPeloEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `BuscarUsuarioPeloEmail`(pEmail varchar(250))
begin
	select id_usuario, id_tipoUsuario from Usuario where nm_email = pEmail;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDiasUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDiasUsuario`(pIdUsuario int, pIdDia int, pHrInicio time, pHrFim time)
begin
Insert into dia_usuario values (pIdUsuario, pIdDia, pHrInicio, pHrFim);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDivulgacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDivulgacaoItem`(pDsItem varchar(250), pQtItem int, pNmItem varchar(250), pDtDivulgacao datetime, pImgDivulgacaoItem varchar(4250), pIdEstadoItem int, pIdTipoItem int, pIdUsuario int)
begin
	Insert into DivulgacaoItem values(default, pDsItem, pQtItem, pNmItem, pDtDivulgacao, null, pImgDivulgacaoItem, pIdEstadoItem, pIdTipoItem, pIdUsuario);	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoacaoCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDoacaoCampanha`(pIdCampanha int, pIdUsuario int, pQtDoado int)
begin
	Insert into DoacaoCampanha values (pIdCampanha, pIdUsuario, now(), pQtDoado, null);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDoacaoItem`(pIdUsuarioDoador int, pIdUsuarioOng int, pNmItem varchar(250), pQtItem int, pIdTipoItem int, pIdTipoEntrega int, pDataDoacao date, pHoraDoacao time)
begin
	Insert into DoacaoItem values(pIdUsuarioDoador, pIdUsuarioOng, now(), pNmItem, pQtItem, null, false, pIdTipoItem, pIdTipoEntrega,pHoraDoacao,pDataDoacao);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoacaoMonetaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDoacaoMonetaria`(pIdUsuarioDoador int, pIdUsuarioOng int, pVlMonetario double, pNmComprovante varchar(250))
begin
	Insert into DoacaoMonetaria values(pIdUsuarioDoador, pIdUsuarioOng, now(), false, pVlMonetario, pNmComprovante, default);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarDoador`(pEmail VARCHAR(250), pNomeUsuario VARCHAR(100), pSenha VARCHAR(45), pTelefone VARCHAR(20), pNomeIdentificacao VARCHAR(45), pCep VARCHAR(10), pEstado VARCHAR(45), pCidade VARCHAR(100), pRua VARCHAR(250), pNumero VARCHAR(5), pBairro VARCHAR(45), pComplemento VARCHAR(45), pLongitude VARCHAR(45), pLatitude VARCHAR(45))
begin
    Insert into Usuario values (default, pEmail, null, pNomeUsuario, md5(pSenha), pTelefone, pNomeIdentificacao, null, pCep, pEstado, pCidade, pRua, pNumero, pBairro, pComplemento, pLongitude, pLatitude, null, null, null, null, false, null, null, 0, null);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarInteresseItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarInteresseItem`(pIdDivulgacao int, pIdUsuarioOng int, pDtInteresseItem datetime, pDtBuscaItem datetime, pIdTipoentrega int)
begin
Insert into InteresseItem values(pIdDivulgacao, pIdUsuarioOng, null, pDtInteresseItem, pdtBuscaItem, false, pIdTipoEntrega);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CadastrarOng`(pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pSenha varchar(45), pTelefone varchar(20), pNomeIdentificacao varchar(45), pDescricao varchar(1000), pCep varchar(10), pEstado varchar(45), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLongitude varchar(45), pLatitude varchar(45), pImagemFotoPerfil varchar(400), pWebSite varchar(250), pImagemBanner varchar(400), pPix varchar(250), pPodeBuscar bool, pCategoria int)
begin
Insert into Usuario values (default, pEmail, pEmailContato, pNomeUsuario, md5(pSenha), pTelefone, pNomeIdentificacao, pDescricao, pCep, pEstado, pCidade, pRua, pNumero, pBairro, pComplemento, pLongitude, pLatitude, pImagemFotoPerfil, pWebSite, pImagemBanner, pPix, false, null, pPodeBuscar, 1, pCategoria);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRecebimentoDoacaoCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ConfirmarRecebimentoDoacaoCampanha`(pIdCampanha int, pIdUsuario int, pDtDoacao datetime)
begin
Update DoacaoCampanha set  ic_doacaoConfirmada = true where id_campanha = pIdCampanha and id_usuario = pIdUsuario and dt_doacao = pDtDoacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRecebimentoDoacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ConfirmarRecebimentoDoacaoItem`(pDtRecebimentoItem datetime, pIdUsuarioDoador int, pIdUsuarioOng int, pDataDoacaoItem datetime)
begin
	Update DoacaoItem set dt_recebimentoItem = pDtRecebimentoItem, ic_doacaoConfirmada = true where id_usuarioDoador = pIdUsuarioDoador and id_usuarioOng = pIdUsuarioOng and dt_doacaoItem = pDataDoacaoItem;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRecebimentoDoacaoMonetaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ConfirmarRecebimentoDoacaoMonetaria`(pIdUsuarioDoador int, pIdUsuarioOng int, pDataDoacao datetime)
begin
	Update DoacaoMonetaria set ic_doacaoConfirmada = true where id_usuarioDoador = pIdUsuarioDoador and id_usuarioOng = pIdUsuarioOng and dt_doacao = pDataDoacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CriarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `CriarCampanha`(pNmCampanha varchar(250), pDsCampanha varchar(1000), pDtFimEsperada datetime, pQtMeta double, pImgBannerCampanha VARCHAR(500), pIdUsuario int, pIdCategoriaCampanha int, pIdTipoItem int)
begin
	Insert into Campanha values (default, pNmCampanha, pDsCampanha, curdate(), pDtFimEsperada, null, pQtMeta, null, pImgBannerCampanha, null, pIdUsuario, pIdCategoriaCampanha, pIdTipoItem);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DenunciarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `DenunciarCampanha`(pIdCampanha int, pDtDenuncia datetime, pDsDenuncia varchar(250), pIdUsuario int, pIdMotivoDenuncia int)
begin
	Insert into DenunciaCampanha values (pIdCampanha, pDtDenuncia, pDsDenuncia, pIdUsuario, pIdMotivoDenuncia);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DenunciarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `DenunciarUsuario`(pUsuarioDenunciado INT, pUsuarioDenunciante INT, pDataDenuncia DATETIME, pIdMotivo int, pDescricao VARCHAR(250))
begin
     Insert into denunciasusuario values (pUsuarioDenunciado, pUsuarioDenunciante, pDataDenuncia, pIdMotivo, pDescricao);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EncerrarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `EncerrarCampanha`(pIdCampanha int, pIdUsuario int, pDtFimCampanha datetime)
begin
	Update Campanha set dt_fimCampanha = pDtFimCampanha where id_usuario = pIdUsuario and id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EncerrarDivulgacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `EncerrarDivulgacaoItem`(pDtFimDivulgacao datetime, pIdDivulgacao int)
begin
	Update DivulgacaoItem set dt_fimDivulgacao = pDtFimDivulgacao where id_divulgacao = pIdDivulgacao;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ExcluirCampanha`(pIdCampanha int)
begin
	Delete from Campanha_ODS where id_campanha = pIdCampanha;
	Delete from Campanha where id_campanha = pIdCampanha;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirDivulgacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ExcluirDivulgacaoItem`(pIdDivulgacaoItem int)
begin
	Delete from DivulgacaoItem where id_divulgacao = pIdDivulgacaoItem;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ExcluirUsuario`(pSenhaDigitada varchar(45), pIdUsuario int)
begin
if VerificarSenha(pSenhaDigitada, pIdUsuario) = 0 Then
        Signal sqlstate '45000' set message_text = 'Senha incorreta';
    else
        Delete from FotosOng where id_usuario = pIdUsuario;
	    Delete from DoacaoMonetaria where id_usuarioDoador = pIdUsuario or id_usuarioOng = pIdUsuario;
        Delete from DoacaoItem where id_usuarioDoador = pIdUsuario or id_usuarioOng = pIdUsuario;
		Delete from DoacaoCampanha where id_usuario = pIdUsuario;
	    Delete from DivulgacaoItem where id_usuario = pIdUsuario;
		Delete from Dia_Usuario where id_usuario = pIdUsuario;
		Delete from DenunciaUsuario where id_usuarioDenunciado = pIdUsuario or id_usuarioDenunciante = pIdUsuario;
		Delete from DenunciaCampanha where id_usuario = pIdUsuario;
		Delete from Campanha where id_usuario = pIdUsuario;
		Delete from Usuario where id_usuario = pIdUsuario;
    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhaPorCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCampanhaPorCategoria`(vIdCategoriaCampanha int,vTipoItem int)
begin
if vIdCategoriaCampanha = 1 then
 Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta from Campanha where dt_fimCampanha is null and id_categoriaCampanha = 1 order by nm_campanha ;
else
	if vTipoItem is null then
		Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta from Campanha where dt_fimCampanha is null and id_categoriaCampanha = 2 order by nm_campanha ;
	else
		Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta from Campanha where dt_fimCampanha is null and id_categoriaCampanha = 2 and id_tipoItem = vTipoItem order by nm_campanha ;
	end if;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCampanhas`(pValor INT)
begin
DECLARE limite INT;
select (8 * pValor) into limite;
Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(id_campanha) as perc from Campanha where dt_fimCampanha is null order by nm_campanha limit 8 OFFSET limite;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasAcabando` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCampanhasAcabando`()
begin
	select id_campanha, nm_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(id_campanha) as perc from Campanha
		where dt_fimEsperado between curdate() and date_add(curdate(), interval 1 month);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasAleatorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCampanhasAleatorias`()
begin
	select id_campanha, nm_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(id_campanha) as perc 
		from Campanha
	order by RAND() limit 15;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasPorData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCampanhasPorData`(vIcData int)
begin
if vIcData = 0 then
Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(id_campanha) as perc from Campanha where dt_fimCampanha is null order by dt_inicioCampanha ASC;
else
Select nm_campanha, id_campanha, img_bannerCampanha, dt_fimEsperado, qt_arrecadado, qt_meta, CalcularPorcentagemCampanha(id_campanha) as perc from Campanha where dt_fimCampanha is null order by dt_inicioCampanha ;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCategoriasOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarCategoriasOng`()
begin
	select * from CategoriaOng;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDadosMinimosCampanhasDaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDadosMinimosCampanhasDaOng`(pIdUsuario int)
begin
	select 
	id_campanha,
    img_bannerCampanha,
    nm_campanha,
	if ( qt_arrecadado is null OR qt_meta is null, 0,((qt_arrecadado / qt_meta) * 100)) as perc
from
    Campanha
where
    id_usuario = pIdUsuario and dt_fimCampanha is null order by dt_inicioCampanha;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDadosMinimosCampanhasFinalizadasDaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDadosMinimosCampanhasFinalizadasDaOng`(pIdUsuario int)
begin
	select 
	id_campanha,
    img_bannerCampanha,
    nm_campanha,
    if ( qt_arrecadado is null OR qt_meta is null, 0,((qt_arrecadado / qt_meta) * 100)) as perc
from
    Campanha
where
    id_usuario = pIdUsuario and dt_fimCampanha is not null order by dt_inicioCampanha;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDivulgacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDivulgacoes`()
begin
Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null order by nm_item;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDivulgacoesItens` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDivulgacoesItens`()
begin
Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null order by nm_item;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDivulgacoesItensPorCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDivulgacoesItensPorCategoria`(pIdCategoria int)
begin 
Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where di.id_tipoItem = pIdCategoria and di.dt_fimDivulgacao is null order by nm_item;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDivulgacoesItensPorData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDivulgacoesItensPorData`(pIdData int)
begin
if pIdData = 0 then
 Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null order by dt_divulgacao desc;
else
 Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null order by dt_divulgacao;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDivulgacoesItensPorEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarDivulgacoesItensPorEstado`(pIdEstado int)
begin 
 Select di.id_divulgacao, di.ds_item, di.nm_item, di.img_divulgacaoItem, di.dt_divulgacao, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null and ei.id_estadoItem = pIdEstado order by nm_item;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarFotosOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarFotosOng`(pCodigo int)
begin
	select id_fotoOng, nm_refFoto from FotosOng where id_usuario = pCodigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarItensAceitosOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarItensAceitosOng`(pIdUsuario int)
begin
	select tpo.id_tipoItem, tp.nm_tipoItem from TipoItem_Ong tpo
		Join TipoItem tp Join Usuario o
		ON (tpo.id_tipoItem = tp.id_tipoItem) and (tpo.id_usuarioOng = o.id_usuario)
	where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngProximas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarOngProximas`(latitudeUsuario varchar(45), longitudeUsuario varchar(45))
begin
	SELECT 
	id_usuario,
	nm_usuario,
	img_FotoPerfil,
	(6371 * acos(cos(radians(latitudeUsuario)) * 
	cos(radians(nm_lat)) * cos(radians(nm_log) - 
	radians(longitudeUsuario)) + sin(radians(latitudeUsuario)) * 
	sin(radians(nm_lat)))) 
	AS distancia
FROM
	Usuario
where nm_lat <> latitudeUsuario and nm_log <> longitudeUsuario and id_tipoUsuario = 1
HAVING distancia <= 20 
ORDER BY distancia;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarOngs`(pValor int)
begin
DECLARE limite INT;
select (8 * pValor) into limite;
Select u.id_usuario, u.nm_usuario, u.ds_usuario, u.img_fotoPerfil, co.nm_categoria, co.id_categoriaOng from Usuario u join CategoriaOng co ON (u.id_categoriaOng = co.id_categoriaOng) where id_tipoUsuario = 1 group by nm_usuario order by nm_usuario limit 8 OFFSET limite; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsAleatorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarOngsAleatorias`()
begin
	select id_usuario, nm_usuario, img_fotoPerfil from Usuario 
		where id_tipoUsuario = 1
	order by RAND() limit 15; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsPorCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarOngsPorCategoria`(pCategoria int, pValor int)
begin
DECLARE limite INT;
select (8 * pValor) into limite;
Select u.id_usuario, u.nm_usuario, u.ds_usuario, u.img_fotoPerfil, co.nm_categoria from Usuario u join CategoriaOng co ON(u.id_categoriaOng = co.id_categoriaOng) where u.id_categoriaOng = pCategoria and u.id_tipoUsuario = 1 order by nm_usuario limit 8 OFFSET limite; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsPorTipoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarOngsPorTipoItem`(vTipoItem int)
begin
Select 
	u.id_usuario
from
    Usuario u
        join
    CategoriaOng co ON (u.id_categoriaOng = co.id_categoriaOng)
        join
    TipoItem_Ong tio ON (u.id_usuario = tio.id_usuarioOng)
        join
    TipoItem ti ON (tio.id_TipoItem = ti.id_tipoItem)
where
    id_tipoUsuario = 1
        and ti.id_tipoItem = vTipoItem
group by nm_usuario
order by nm_usuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarTiposEntrega` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarTiposEntrega`()
begin
	select * from TipoEntrega;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarTiposItens` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `ListarTiposItens`()
begin
	select * from TipoItem;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `teste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `teste`(pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pSenha varchar(45), pTelefone varchar(20), pNomeIdentificacao varchar(45), pDescricao varchar(1000), pCep varchar(10), pEstado varchar(45), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLongitude varchar(45), pLatitude varchar(45), pImagemFotoPerfil varchar(400), pWebSite varchar(250), pImagemBanner varchar(400), pPix varchar(250), pPodeBuscar bool, pCategoria int)
begin
DECLARE codigo INT;
select (id_usuario + 1)  into codigo from Usuario where id_usuario <=id_usuario
ORDER BY id_usuario DESC limit 1;
Insert into Usuario values (codigo , pEmail, pEmailContato, pNomeUsuario, md5(pSenha), pTelefone, pNomeIdentificacao, pDescricao, pCep, pEstado, pCidade, pRua, pNumero, pBairro, pComplemento, pLongitude, pLatitude, concat('uploads/ongs/', codigo, '/icone/', codigo ,'.jpg'), pWebSite, concat('uploads/ongs/', codigo, '/banner/', codigo ,'.jpg'), pPix, false, null, pPodeBuscar, 1, pCategoria);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarSenha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `VerificarSenha`(pSenhaDigitada varchar(45), pEmail varchar(250))
begin
Declare senha varchar(45);
    Select nm_senha into senha from Usuario where nm_email = pEmail;
if senha = md5(pSenhaDigitada) then
		select true;
    else
        select false;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VincularCampanhaOds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE   PROCEDURE `VincularCampanhaOds`(pIdCampanha int, idOds int)
begin
	Insert into Campanha_ODS values (pIdCampanha, idOds);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

delimiter ;;
Drop procedure if exists CadastrarDoacaoMonetaria;;
CREATE PROCEDURE CadastrarDoacaoMonetaria(pIdUsuarioDoador int, pIdUsuarioOng int, pVlMonetario double)
begin
	declare comprovante int;

	Insert into DoacaoMonetaria values(pIdUsuarioDoador, pIdUsuarioOng, now(), false, pVlMonetario, '', default);

	select max(id_doacao) into comprovante from DoacaoMonetaria;

	update DoacaoMonetaria set nm_comprovante = CONCAT('/uploads/temp/comprovantes/', comprovante, '.jpg') where id_doacao = comprovante;
end;;
delimiter ;

delimiter $$

drop procedure if exists GerarCodigoComprovante$$
create procedure GerarCodigoComprovante()
begin
	select max(id_doacao) + 1 as comprovante from DoacaoMonetaria;
end$$


delimiter ;

-- Dump completed on 2023-09-25  3:08:14

use umacausa;
select 
    *
from
    Usuario
where
    id_tipoUsuario = 1;