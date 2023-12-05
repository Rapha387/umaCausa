-- MySQL dump 10.13  Distrib 5.6.40, for Linux (x86_64)
--
-- Host: mysql32-farm10.kinghost.net    Database: umacausa
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.14-MariaDB-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Campanha`
--

DROP TABLE IF EXISTS `Campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `id_usuario` int(11) DEFAULT NULL,
  `id_tipoItem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_campanha`),
  KEY `fk_Campanha_Usuario` (`id_usuario`),
  KEY `fk_Campanha_TipoItem` (`id_tipoItem`),
  CONSTRAINT `fk_Campanha_TipoItem` FOREIGN KEY (`id_tipoItem`) REFERENCES `TipoItem` (`id_tipoItem`),
  CONSTRAINT `fk_Campanha_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanha`
--

LOCK TABLES `Campanha` WRITE;
/*!40000 ALTER TABLE `Campanha` DISABLE KEYS */;
INSERT INTO `Campanha` VALUES (31,'Luz da Leitura: Alfabetizando o Futuro','A campanha \"Luz da Leitura: Alfabetizando o Futuro\" é uma iniciativa dedicada a promover a alfabetização e a educação básica para crianças, jovens e adultos em nossa comunidade. Nosso objetivo é proporcionar a todos o poder transformador da leitura e da escrita, capacitando-os para um futuro melhor.\r\n\r\nPor meio de doações generosas e voluntariado, pretendemos angariar recursos para a criação de programas de alfabetização, distribuição de materiais educativos e aulas de reforço. Juntos, podemos iluminar os caminhos daqueles que buscam a oportunidade de aprender e crescer.','2023-09-20 00:00:00','2023-12-07 00:00:00',NULL,2000,0,'uploads/campanhas/banners/31.jpg',42,1),(46,'Doação de Livros Infantis','Nossa campanha \"Doação de Livros\" tem como objetivo promover o acesso à educação e à cultura por meio da doação de livros. Acreditamos que os livros são uma janela para o conhecimento, uma fonte de inspiração e uma ferramenta fundamental para o desenvolvimento pessoal e comunitário. Com esta campanha, estamos empenhados em reunir livros para distribuí-los a escolas, bibliotecas, instituições de caridade e indivíduos que precisam de acesso a material de leitura de qualidade.','2023-09-20 00:00:00','2023-11-11 00:00:00',NULL,1000,200,'uploads/campanhas/banners/46.jpg',42,9),(47,'Campanha de Arrecadação de Fundos','A campanha de arrecadação de fundos tem como objetivo mobilizar a comunidade e angariar recursos financeiros para apoiar uma causa nobre. Essa campanha visa conscientizar as pessoas sobre a importância da causa e incentivá-las a contribuir financeiramente para fazer a diferença.','2023-09-20 00:00:00','2023-12-08 00:00:00',NULL,500,400,'uploads/campanhas/banners/47.jpg',42,0),(48,'Campanha de Materiais Escolares','É uma iniciativa comunitária que visa mobilizar pessoas, empresas e organizações em prol da educação, garantindo que todos os estudantes tenham as ferramentas necessárias para o sucesso escolar. A campanha envolve a coleta de materiais escolares e sua distribuição para estudantes em necessidade.','2023-09-20 00:00:00','2024-01-01 00:00:00',NULL,2000,500,'uploads/campanhas/banners/48.jpg',42,6),(50,'A fome tem Solução','A campanha \"A Fome Tem Solução\" tem como objetivo conscientizar as pessoas sobre a gravidade da fome e mobilizar recursos para arrecadar alimentos e ajudar a combater a insegurança alimentar em comunidades vulneráveis.','2023-09-20 00:00:00','2023-10-02 00:00:00',NULL,2000,0,'uploads/campanhas/banners/50.jpg',43,2),(51,'G 10 Favelas','Nós, do G10 Favelas, estamos mobilizados em uma causa que é essencial para o bem-estar da nossa sociedade: combater a fome que assola nosso país. Infelizmente, o mapa da fome aumenta em nosso país, enquanto as doações têm diminuído drasticamente. Por isso, nossa luta é ainda mais urgente. O número de famílias vivendo em extrema pobreza na cidade de São Paulo cresceu 10,5%. São 760 mil pessoas na cidade mais rica. No Brasil são 33 milhões de pessoas passando dificuldades. A distribuição de marmitas e cestas e criação de hortas comunitárias não parou. Desde março de 2020, temos vivido em um cenário de incertezas, com desemprego e insegurança alimentar batendo à porta da maioria da população brasileira. Nossas famílias buscam desesperadamente esperança para se reconstruir em meio a essa crise gerada pela pandemia. E nós, continuamos na linha de frente, cuidando da nossa gente.','2023-09-20 00:00:00','2023-07-07 00:00:00',NULL,1000,10,'uploads/campanhas/banners/51.jpg',43,0),(52,'Campanha do Agasalho','A campanha tem como objetivo arrecadar agasalhos e cobertores para distribuir a indivíduos e famílias em situação de vulnerabilidade durante o inverno. Queremos proporcionar conforto e aquecimento para aqueles que enfrentam as adversidades do clima gelado.','2023-09-20 00:00:00','2023-11-02 00:00:00',NULL,3000,2800,'uploads/campanhas/banners/52.jpg',45,1),(53,'Ação Moradia','O objetivo principal da campanha é arrecadar fundos para garantir que a Ação Moradia continue a oferecer serviços essenciais, como moradia acessível, capacitação profissional, apoio psicossocial e alimentação para aqueles que mais necessitam.','2023-09-20 00:00:00','2024-02-01 00:00:00',NULL,1500,30,'uploads/campanhas/banners/53.jpg',45,0),(54,'Campanha de Associação Comunitária da Leitura','O objetivo principal de nossa campanha é arrecadar uma quantidade significativa de livros para escolas, bibliotecas, instituições de caridade e indivíduos que não têm fácil acesso à leitura. Queremos promover o amor pela leitura e ajudar a construir um ambiente mais educado e informado em nossa comunidade.','2023-09-20 00:00:00','2024-04-10 00:00:00',NULL,3000,450,'uploads/campanhas/banners/54.jpg',45,9),(55,'Campanha da Creche Escola Maria De Nazaré de Osasco','Sabemos que nossa comunidade é cheia de corações generosos desejando fazer a diferença na vida das crianças. É por isso que lançamos a campanha de doação \"Doe amor, faça um sorriso florescer!\" e convidamos todos a se juntarem a nós nesta missão. Faça a doação de materiais como : Aceitamos doações de materiais essenciais, como brinquedos, livros, material de arte, móveis infantis, material de higiene, roupas e fraldas. Tudo isso contribui para criar um ambiente enriquecedor e confortável para as crianças.','2023-01-20 00:00:00','2023-07-10 00:00:00','2023-07-10 00:00:00',300,27,'uploads/campanhas/banners/55.jpg',45,4),(56,'Campanha de Promoção da Arte Local','Nossa campanha é uma chamada aberta para a generosidade e a paixão pela arte. Estamos buscando doações de diversos tipos de itens de arte, desde materiais básicos, como tintas, pincéis e papel, até obras de arte originais e esculturas.','2023-09-20 00:00:00','2024-01-10 00:00:00',NULL,50,23,'uploads/campanhas/banners/56.jpg',47,6),(57,'Campanha de Alfabetização','A campanha de alfabetização tem como objetivo promover a importância da leitura e da escrita, bem como mobilizar recursos e voluntários para alfabetizar adultos e crianças que enfrentam dificuldades na leitura e escrita, visando aprimorar suas habilidades e oportunidades na vida.','2023-08-27 00:00:00','2023-11-02 00:00:00','2023-09-09 00:00:00',100,100,'uploads/campanhas/banners/57.jpg',42,0),(58,'Água Potavél - 2023','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2023-09-20 00:00:00','2023-12-31 00:00:00',NULL,400,300,'uploads/campanhas/banners/58.jpg',49,0),(60,'Campanha de arrecadação para equipamentos para Bicicleta','A campanha visa promover a doação de equipamentos e acessórios para bicicletas com o objetivo de apoiar a comunidade ciclística local. A bicicleta é um meio de transporte e lazer sustentável que desempenha um papel vital na mobilidade urbana e na promoção de um estilo de vida mais saudável. No entanto, muitos ciclistas enfrentam dificuldades para adquirir ou manter seus equipamentos. Nossa campanha busca fazer a diferença na vida dessas pessoas.','2023-09-20 00:00:00','2023-11-10 00:00:00',NULL,330,100,'uploads/campanhas/banners/60.jpg',48,10),(61,'Campanha de produtos de Higiene e Limpeza','Como Você Pode Contribuir: Doação de Produtos: Aceitamos doações de produtos de higiene pessoal, como sabonetes, xampus, escovas de dente, creme dental, papel higiênico, além de itens de limpeza doméstica, como detergente, desinfetante, água sanitária e produtos de limpeza em geral. Sua generosidade fará uma diferença significativa na vida de muitas pessoas. Através da doação de produtos de higiene e limpeza, você estará ajudando a garantir que as famílias em situação de vulnerabilidade tenham acesso a condições mais dignas e higiênicas, promovendo um ambiente mais saudável para todos.','2023-09-20 00:00:00','2024-10-31 00:00:00',NULL,100,17,'uploads/campanhas/banners/61.jpg',49,5),(62,'Campanha de Alimentos não Pereciveis','A Campanha Solidária tem como objetivo arrecadar alimentos não perecíveis para ajudar aqueles que estão passando por dificuldades e garantir que todos tenham acesso a uma alimentação digna e saudável. Queremos fazer a diferença na vida das pessoas e mostrar que juntos podemos criar um impacto positivo em nossa comunidade. Doações de alimentos não perecíveis: Contribua com alimentos como arroz, feijão, macarrão, enlatados, leite em pó, óleo, açúcar, farinha, entre outros. Qualquer quantidade é bem-vinda e fará a diferença.','2023-09-20 00:00:00','2024-10-31 00:00:00',NULL,200,20,'uploads/campanhas/banners/62.jpg',49,2),(63,'Campanha de Bicicletas para Comunidades Carentes','campanha é uma iniciativa dedicada a promover a doação de bicicletas para aqueles que mais necessitam. Nosso objetivo é fornecer meios de transporte econômicos, sustentáveis e saudáveis para pessoas que enfrentam dificuldades de locomoção, especialmente em comunidades carentes e áreas rurais. Aceitamos doações de bicicletas em boas condições de uso. Se você tem uma bicicleta que não utiliza mais, ela pode fazer a diferença na vida de alguém. Entre em contato conosco para organizar a entrega.','2023-09-20 00:00:00','2023-12-16 00:00:00',NULL,50,10,'uploads/campanhas/banners/63.jpg',48,10),(64,'Água Potavél - 2022','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2022-01-01 00:00:00','2022-12-31 00:00:00','2022-08-09 00:00:00',400,400,'uploads/campanhas/banners/64.jpg',49,0),(65,'Assistência a Comunidades Religiosas Vulneráveis','Em meio aos desafios que o mundo enfrenta, muitas comunidades religiosas vulneráveis estão lutando para manter suas portas abertas, apoiar suas congregações e continuar desempenhando papéis vitais na promoção do bem-estar espiritual e social. É nossa responsabilidade ajudar e apoiar essas comunidades.','2022-11-23 00:00:00','2022-12-23 00:00:00','2022-12-23 00:00:00',5000,4800,'uploads/campanhas/banners/65.jpg',69,0),(66,'Campanha de Reflorestamento e Arborização Urbana','Nossa cidade enfrenta desafios ambientais significativos, desde o aumento das temperaturas devido às mudanças climáticas até a perda de espaços verdes devido ao crescimento urbano desenfreado. No entanto, a esperança nunca deve ser perdida, e a mudança é possível. Estamos lançando a campanha \"Renove Nossa Cidade\" para solicitar sua ajuda monetária para um ambicioso projeto de reflorestamento e arborização urbana que transformará nossa comunidade em um lugar mais saudável e sustentável.','2023-09-20 00:00:00','2023-12-31 00:00:00',NULL,4000,700,'uploads/campanhas/banners/66.jpg',70,0),(67,'Arrecadação para ração de cachorros','Nossa campanha visa fazer a diferença na vida dos nossos amigos de quatro patas que dependem da nossa ajuda para terem uma vida feliz e saudável. Cães são verdadeiros companheiros, leais e carinhosos, mas muitos deles enfrentam dificuldades para encontrar o alimento que precisam para sobreviver. A sua doação pode ser a diferença entre a fome e a felicidade para muitos cãezinhos indefesos.','2023-09-20 00:00:00','2023-10-10 00:00:00',NULL,5000,4800,'uploads/campanhas/banners/67.jpg',51,0),(68,'Campanha de arrecadação de Máscaras','Nosso principal objetivo é arrecadar um grande número de máscaras para distribuir entre indivíduos e comunidades que não têm acesso fácil a esse equipamento de proteção essencial. Queremos promover a segurança de todos e demonstrar que, juntos, podemos superar essa crise de saúde global. Doação de Máscaras: Aceitamos doações de máscaras de tecido, cirúrgicas ou N95 em boas condições. Se você puder costurar máscaras caseiras, também serão muito bem-vindas.','2023-09-20 00:00:00','2024-07-29 00:00:00',NULL,800,650,'uploads/campanhas/banners/68.jpg',70,7),(69,'Arrecadação para brinquedos dos animais','Estamos empolgados em lançar nossa campanha \"Brinque de Coração\" para trazer diversão e alegria aos nossos amigos de quatro patas que precisam de estímulos mentais e físicos para uma vida saudável e feliz. Brinquedos são uma parte essencial do bem-estar dos animais, e sua doação pode proporcionar momentos de felicidade inestimáveis aos nossos companheiros de quatro patas.','2023-09-20 00:00:00','2023-11-30 00:00:00',NULL,5000,4800,'uploads/campanhas/banners/69.jpg',51,3),(70,'Campanha de Produtos de Higiene','Nosso principal objetivo é arrecadar uma variedade de produtos de higiene, como sabonetes, escovas de dentes, pastas de dentes, xampus, fraldas, papel higiênico, absorventes e outros itens essenciais. Essas doações serão distribuídas entre indivíduos e comunidades em situação de vulnerabilidade, garantindo que todos tenham acesso a produtos de higiene de qualidade. Como Você Pode Ajudar: Doação de Produtos de Higiene: Aceitamos doações de produtos novos e não utilizados. Você pode contribuir com itens individuais ou montar kits de higiene que serão distribuídos.','2023-09-20 00:00:00','2023-11-23 00:00:00',NULL,900,250,'uploads/campanhas/banners/70.jpg',71,5),(71,'Campanha de Roupas Femininas e Masculinas','Arrecadação de Roupas: Estamos pedindo a colaboração de todos para doar roupas em bom estado. Aceitamos roupas para todas as idades,\ntamanhos e estações do ano, desde roupas de crianças até peças de adultos.','2023-09-20 00:00:00','2023-12-23 00:00:00',NULL,1000,250,'uploads/campanhas/banners/71.jpg',71,1),(72,'Arrecadação para curativos dos animais','É com grande entusiasmo que lançamos a campanha \"Cure com Amor\". Nossa missão é fornecer curativos essenciais e cuidados médicos para os animais que sofreram ferimentos ou estão em tratamento. Cada curativo representa um passo em direção à recuperação e ao bem-estar de nossos amigos de quatro patas que dependem de nossa ajuda.','2023-09-20 00:00:00','2024-02-10 00:00:00',NULL,1000,800,'uploads/campanhas/banners/72.jpg',51,7),(73,'Campanha de Alimentos não Pereciveis','Os alimentos não perecíveis são itens essenciais para a segurança alimentar de muitas famílias. Eles têm uma longa vida útil e são fáceis de armazenar, o que os torna ideais para doações. Com esses alimentos, podemos ajudar a combater a fome e a insegurança alimentar em nossa comunidade, garantindo que todos tenham acesso a refeições nutritivas.','2022-09-09 00:00:00','2023-11-23 00:00:00','2023-05-05 00:00:00',250,250,'uploads/campanhas/banners/73.jpg',71,2),(74,'Vamos Ajudar Fabrice a Voltar a Caminhar','DECIDI FAZER ESSA CAMPANHA, POIS PARA ADQUIRIR A MINHA PRÓTESE A 4 ANOS ATRÁS, PUDE CONTAR COM A AJUDA DE AMIGOS E FAMILIARES, E COMO ESTOU AFASTADO DAS MINHAS ATIVIDADES E O GASTO EM TRATAMENTO E REMÉDIOS , SÓ SERÁ POSSÍVEL INICIAR A READAPTAÇÃO COM AJUDA FINANCEIRA DE TERCEIROS','2023-09-20 00:00:00','2023-11-23 00:00:00',NULL,2500,290,'uploads/campanhas/banners/74.jpg',72,0),(75,'Campanha de Água Potavél','O objetivo principal da nossa campanha é arrecadar fundos para fornecer água potável a comunidades carentes que atualmente não têm acesso a essa necessidade vital. Queremos garantir que ninguém tenha que passar sede e sofrer as consequências da falta de água limpa.','2023-09-20 00:00:00','2024-05-23 00:00:00',NULL,700,390,'uploads/campanhas/banners/75.jpg',74,0),(77,'Campanha para arrecadação de Fundos','Nossa campanha é uma chamada à ação para todos aqueles que desejam fazer a diferença na vida de pessoas necessitadas e contribuir para um mundo melhor. Estamos buscando doações de fundos para apoiar nossa missão de impactar positivamente as vidas de indivíduos e comunidades em situações de vulnerabilidade.','2023-09-20 00:00:00','2023-10-10 00:00:00',NULL,950,700,'uploads/campanhas/banners/77.jpg',51,0),(78,'Campanha de MenstRUa','Mulheres encarceradas, em situação de prostituição e de rua ou em extrema pobreza, pessoas ovariadas em vulnerabilidade enfrentam cotidianamente as angústias e perigos da falta de absorventes. A pandemia tem escancarado as desigualdades múltiplas existentes na sociedade brasileira. A pobreza menstrual é uma face da desigualdade profunda de gênero que enfrentamos e que se acentuou diante do crescimento da miséria e da escassez por conta da crise atual e da pandemia. Doações de alimentos não perecíveis: Contribua com alimentos como arroz, feijão, macarrão, enlatados, leite em pó, óleo, açúcar, farinha, entre outros. Qualquer quantidade é bem-vinda e fará a diferença.','2023-09-20 00:00:00','2023-12-23 00:00:00',NULL,1800,1390,'uploads/campanhas/banners/78.jpg',74,2),(79,'Campanha de Alimentos Não pereciveis','A Campanha Solidária tem como objetivo arrecadar alimentos não perecíveis para ajudar aqueles que estão passando por dificuldades e garantir que todos tenham acesso a uma alimentação digna e saudável. Queremos fazer a diferença na vida das pessoas e mostrar que juntos podemos criar um impacto positivo em nossa comunidade.','2023-09-20 00:00:00','2024-06-23 00:00:00',NULL,800,390,'uploads/campanhas/banners/79.jpg',74,2),(80,'Campanha Dentistas Sem Fronteira','Estamos solicitando doações de itens essenciais para dentistas, como: Escovas de Dentes: Doações de escovas de dentes de boa qualidade para distribuição aos pacientes.Creme Dental: Tubos de creme dental para ajudar a manter a higiene bucal.Fio Dental: Fio dental é fundamental para prevenir cáries e doenças periodontais.Materiais Descartáveis: Luvas, máscaras, aventais e outros materiais descartáveis para garantir a segurança durante os procedimentos.Instrumentos Odontológicos: Equipamentos odontológicos usados em clínicas de atendimento.','2022-09-09 00:00:00','2023-03-03 00:00:00','2023-02-06 00:00:00',500,500,'uploads/campanhas/banners/80.jpg',74,5),(81,'Campanha de Redução de Plástico','Nossa campanha visa arrecadar fundos para impulsionar a educação ambiental em comunidades locais e escolas. As doações serão usadas para: Programas de Educação Escolar: Desenvolver currículos e materiais educacionais que abordem tópicos ambientais, como conservação, reciclagem, eficiência energética e sustentabilidade. Workshops e Eventos Educativos: Realizar workshops, palestras e eventos educacionais para envolver crianças e adultos em questões ambientais.','2023-09-23 00:00:00','2023-11-20 00:00:00',NULL,5780,900,'uploads/campanhas/banners/81.jpg',75,0),(82,'Campanha de Limpeza de Praias e Rios','Nossa campanha tem como objetivo arrecadar fundos para a realização de operações de limpeza em praias e rios em todo o país. As doações serão usadas para financiar: Limpeza e Coleta de Resíduos: Organizar equipes de voluntários para remover lixo e resíduos dos locais afetados, garantindo a sua disposição adequada.','2023-09-23 00:00:00','2023-12-20 00:00:00',NULL,780,10,'uploads/campanhas/banners/82.jpg',75,0),(83,'Campanha de Roupas de Inverno Feminino','O inverno está se aproximando e, infelizmente, muitas mulheres em nossa comunidade não têm acesso às roupas quentes de que precisam para enfrentar o frio. É por isso que estamos lançando a campanha \"Aqueça um Coração, Vista Solidariedade\", para arrecadar roupas de inverno femininas e proporcionar conforto e calor às mulheres em situação de vulnerabilidade. Faça Doações Generosas: Revise seu armário e doe roupas de inverno femininas em boas condições que você não usa mais, como casacos, blusas de lã, cachecóis, luvas, meias e botas.','2023-09-23 00:00:00','2024-01-20 00:00:00',NULL,150,100,'uploads/campanhas/banners/83.jpg',76,1),(84,'Campanha de Roupas de Inverno para Bebes','O inverno está chegando, e sabemos como é importante manter nossos pequenos bem aquecidos e confortáveis. Muitos bebês e suas famílias enfrentam dificuldades para garantir roupas de inverno adequadas. É por isso que lançamos a campanha para arrecadar roupas de inverno para bebês e ajudar a proteger esses pequenos tesouros do frio. Doações de Roupas Novas ou Usadas: Revise seu estoque de roupas de bebê e doe itens em bom estado, como macacões, toucas, luvas, mantas, meias, e qualquer outra peça de inverno.','2023-09-23 00:00:00','2024-02-20 00:00:00',NULL,200,0,'uploads/campanhas/banners/84.jpg',76,1),(85,'Brotando Saúde','Hoje, estamos lançando uma campanha de solidariedade especial para ajudar aqueles que lutam diariamente para acessar medicamentos essenciais. Acreditamos que todos têm o direito à saúde e que juntos podemos fazer a diferença nas vidas das pessoas que precisam desesperadamente de medicamentos para enfrentar desafios de saúde.','2023-09-23 00:00:00','2023-12-20 00:00:00',NULL,200,20,'uploads/campanhas/banners/85.jpg',78,0),(86,'Campanha de Cobertores e Travisseiros','O inverno está se aproximando e com ele vêm temperaturas baixas e noites frias que podem ser extremamente desafiadoras para muitas pessoas em nossa comunidade. Muitos não têm a sorte de ter um lugar quente e aconchegante para dormir, e é por isso que lançamos a campanha \"Aqueça Corações - Doe Cobertores e Travesseiros\". Convidamos você a se juntar a nós nesta nobre missão de fornecer conforto e calor para aqueles que mais precisam.','2023-01-01 00:00:00','2023-12-31 00:00:00','2023-11-23 00:00:00',300,300,'uploads/campanhas/banners/86.jpg',78,10),(87,'Natal Sem Fome','O Natal é uma época de celebração, amor e partilha. No entanto, muitas famílias em nossa comunidade estão enfrentando a dura realidade da fome, tornando difícil para elas desfrutar do espírito natalino. Este ano, estamos lançando a campanha \"Natal Sem Fome\" e convidamos você a se juntar a nós nesta iniciativa de solidariedade e compaixão.','2023-09-23 00:00:00','2023-12-31 00:00:00',NULL,300,250,'uploads/campanhas/banners/87.jpg',80,2),(88,'Casa Própria','Estamos construindo a nossa tão sonhada casa própria, porem como nada é fácil encontramos vários percalços ao longo dessa jornada desafiadora onde acabei ficando desempregado, temos 2 filhos e tivemos que dar uma pausa no projeto. estamos com 50% da construção pronta. Com o dinheiro arrecadado será feito a compra de materiais para a continuidade da obra.','2023-09-23 00:00:00','2023-12-31 00:00:00','2023-11-13 11:14:24',1400,600,'uploads/campanhas/banners/88.jpg',82,0),(89,'Projeto Sinal','Sonhávamos com um local maior. E no dia 01 de agosto de 2020 entramos em uma casa muito maior, com dois andares. Esse local funciona como centro de Treinamento (local de treinamento para pratica do Morganti Ju-jitsu, Capoeira, pilates, funcional e ballet. Também é um centro de educação, cultura e lazer. Precisamos sonhar. Mas desejamos sonhar com mais pessoas. Não podemos mudar o mundo. Mas podemos tentar mudar o nosso mundo. O nosso entorno. Quem mora ao nosso lado.','2023-09-23 00:00:00','2024-04-20 00:00:00',NULL,3000,1875,'uploads/campanhas/banners/89.jpg',82,0),(90,'Arrecadação para Animais','Nossa campanha visa fazer a diferença na vida dos nossos amigos de quatro patas que dependem da nossa ajuda para terem uma vida feliz e saudável. Cães são verdadeiros companheiros, leais e carinhosos, mas muitos deles enfrentam dificuldades para encontrar o alimento que precisam para sobreviver. A sua doação pode ser a diferença entre a fome e a felicidade para muitos cãezinhos indefesos','2023-10-01 00:00:00','2026-01-30 00:00:00','2023-11-09 13:59:48',350,37,'uploads/campanhas/banners/90.jpg',83,0),(91,'Resgate de Animais em Desastres','Em momentos de desastres naturais, nossos amigos peludos enfrentam desafios enormes. Muitos animais de estimação e animais silvestres ficam em perigo, perdidos ou feridos quando desastres como incêndios florestais, enchentes, terremotos e tempestades atingem nossas comunidades. Sua doação monetária é vital para sustentar nossos esforços de resgate. Qualquer quantia ajuda e faz a diferença. Com sua contribuição, podemos continuar a salvar vidas de animais em situações de desastre.','2023-10-01 00:00:00','2023-12-30 00:00:00',NULL,10000,4575,'uploads/campanhas/banners/91.jpg',85,0),(92,'Arrecadação de ração','Nossa campanha visa fazer a diferença na vida dos nossos amigos de quatro patas que dependem da nossa ajuda para terem uma vida feliz e saudável. Cães são verdadeiros companheiros, leais e carinhosos, mas muitos deles enfrentam dificuldades para encontrar o alimento que precisam para sobreviver. A sua doação pode ser a diferença entre a fome e a felicidade para muitos cãezinhos indefesos','2022-05-10 00:00:00','2022-09-30 00:00:00',NULL,900,2800,'uploads/campanhas/banners/92.jpg',85,0),(93,'Casa das anas','Ofertar o serviço de acolhimento institucional-abrigo às pessoas que se encontram em situação de rua, em situação de abandono ou sem referência familiar e moradia convencional; Oferecer proteção social para mulheres que necessitam o apoio para o fortalecimento de vínculos, da autoestima e reconstrução de seu projeto de vida.','2023-10-01 00:00:00','2024-12-20 00:00:00',NULL,1000,200,'uploads/campanhas/banners/93.jpg',92,0),(110,'Doe para Chiquito','Doe para Chiquito. Com a sua ajuda  nós poderemos comprar mantimentos e brinquedos para o Chico','2023-10-30 00:00:00','2023-10-30 00:00:00','2023-10-30 00:00:00',300,0,'uploads/campanhas/banners/110.jpg',83,0),(114,'Doe para um animal','Doe para um animal','2023-11-06 00:00:00','2023-11-22 00:00:00','2023-11-13 11:12:03',350,0,'uploads/campanhas/banners/114.jpg',83,0),(115,'Ajude cachorros de rua','ajude com rações animais de rua que precisam de ajuda','2023-11-13 00:00:00','2023-12-07 00:00:00',NULL,100,0,'uploads/campanhas/banners/115.jpg',83,2);
/*!40000 ALTER TABLE `Campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campanha_ODS`
--

DROP TABLE IF EXISTS `Campanha_ODS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campanha_ODS` (
  `id_campanha` int(11) NOT NULL,
  `id_ODS` int(11) NOT NULL,
  PRIMARY KEY (`id_campanha`,`id_ODS`),
  KEY `fk_Campanha_ODS_ODS` (`id_ODS`),
  CONSTRAINT `fk_Campanha_ODS_Campanha` FOREIGN KEY (`id_campanha`) REFERENCES `Campanha` (`id_campanha`),
  CONSTRAINT `fk_Campanha_ODS_ODS` FOREIGN KEY (`id_ODS`) REFERENCES `ODS` (`id_ods`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanha_ODS`
--

LOCK TABLES `Campanha_ODS` WRITE;
/*!40000 ALTER TABLE `Campanha_ODS` DISABLE KEYS */;
INSERT INTO `Campanha_ODS` VALUES (31,4),(31,10),(46,4),(47,1),(48,4),(48,10),(50,2),(50,10),(51,1),(51,2),(51,10),(52,3),(53,1),(53,10),(54,4),(55,4),(56,8),(57,4),(57,10),(58,6),(60,11),(61,3),(63,3),(64,3),(64,6),(65,16),(66,13),(66,15),(67,2),(68,3),(70,1),(70,3),(70,6),(71,10),(72,3),(73,2),(73,10),(74,3),(75,6),(77,2),(77,4),(77,10),(79,2),(79,10),(80,3),(80,10),(81,15),(82,4),(82,14),(82,15),(83,10),(84,10),(85,3),(86,1),(86,10),(87,1),(87,2),(89,4),(91,13),(92,2),(92,10),(93,2),(93,10),(110,15),(114,15),(114,16),(115,2);
/*!40000 ALTER TABLE `Campanha_ODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoriaOng`
--

DROP TABLE IF EXISTS `CategoriaOng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoriaOng` (
  `id_categoriaOng` int(11) NOT NULL,
  `nm_categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_categoriaOng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoriaOng`
--

LOCK TABLES `CategoriaOng` WRITE;
/*!40000 ALTER TABLE `CategoriaOng` DISABLE KEYS */;
INSERT INTO `CategoriaOng` VALUES (1,'Direitos Humanos e Justiça Social'),(2,'Ajuda Humanitária e Socorro'),(3,'Saúde'),(4,'Meio Ambiente e Conservação'),(5,'Educação'),(6,'Desenvolvimento Comunitário'),(7,'Arte Cultura e Esporte'),(8,'Assistência a Crianças e Famílias'),(9,'Desenvolvimento Econômico'),(10,'Paz e Resolução de Conflitos'),(11,'Habitação e Sem-teto'),(12,'Alimentação e Segurança Alimentar'),(13,'Animais e Conservação da Vida Selvagem'),(14,'Tecnologia e Acesso à Informação'),(15,'Pessoas com Deficiência');
/*!40000 ALTER TABLE `CategoriaOng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DenunciaCampanha`
--

DROP TABLE IF EXISTS `DenunciaCampanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DenunciaCampanha` (
  `id_campanha` int(11) NOT NULL,
  `dt_denuncia` datetime NOT NULL,
  `ds_denuncia` varchar(250) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_motivoDenuncia` int(11) DEFAULT NULL,
  `ic_aprovada` int(1) DEFAULT 0,
  PRIMARY KEY (`id_campanha`,`id_usuario`,`dt_denuncia`),
  KEY `fk_DenunciaCampanha_Usuario` (`id_usuario`),
  KEY `fk_DenunciasCampanha_MotivoDenunciaCampanha` (`id_motivoDenuncia`),
  CONSTRAINT `fk_DenunciaCampanha_Campanha` FOREIGN KEY (`id_campanha`) REFERENCES `Campanha` (`id_campanha`),
  CONSTRAINT `fk_DenunciaCampanha_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`),
  CONSTRAINT `fk_DenunciasCampanha_MotivoDenunciaCampanha` FOREIGN KEY (`id_motivoDenuncia`) REFERENCES `MotivoDenunciaCampanha` (`id_motivoDenuncia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DenunciaCampanha`
--

LOCK TABLES `DenunciaCampanha` WRITE;
/*!40000 ALTER TABLE `DenunciaCampanha` DISABLE KEYS */;
INSERT INTO `DenunciaCampanha` VALUES (46,'2023-11-07 18:37:47','dadas',83,3,0),(46,'2023-11-07 18:38:04','',83,4,1),(46,'2023-11-07 18:38:24','',83,4,1),(52,'2023-11-02 11:05:51','dfsfd',82,2,0),(58,'2023-11-10 23:33:07','',83,1,1),(89,'2023-11-07 18:36:12','dsada',83,2,0),(114,'2023-11-06 16:29:01','dadas',83,6,0),(115,'2023-11-15 12:10:22','',83,8,1);
/*!40000 ALTER TABLE `DenunciaCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DenunciaUsuario`
--

DROP TABLE IF EXISTS `DenunciaUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DenunciaUsuario` (
  `id_usuarioDenunciado` int(11) NOT NULL,
  `id_usuarioDenunciante` int(11) NOT NULL,
  `dt_denuncia` datetime NOT NULL,
  `id_motivoDenuncia` int(11) DEFAULT NULL,
  `ds_denuncia` varchar(250) DEFAULT NULL,
  `ic_aprovada` int(1) DEFAULT 0,
  PRIMARY KEY (`id_usuarioDenunciado`,`id_usuarioDenunciante`,`dt_denuncia`),
  KEY `fk_DenunciaUsuario_Usuario2` (`id_usuarioDenunciante`),
  KEY `fk_DenunciaUsuario_MotivoDenunciaUsuario` (`id_motivoDenuncia`),
  CONSTRAINT `fk_DenunciaUsuario_MotivoDenunciaUsuario` FOREIGN KEY (`id_motivoDenuncia`) REFERENCES `MotivoDenunciaUsuario` (`id_motivoDenuncia`),
  CONSTRAINT `fk_DenunciaUsuario_Usuario1` FOREIGN KEY (`id_usuarioDenunciado`) REFERENCES `Usuario` (`id_usuario`),
  CONSTRAINT `fk_DenunciaUsuario_Usuario2` FOREIGN KEY (`id_usuarioDenunciante`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DenunciaUsuario`
--

LOCK TABLES `DenunciaUsuario` WRITE;
/*!40000 ALTER TABLE `DenunciaUsuario` DISABLE KEYS */;
INSERT INTO `DenunciaUsuario` VALUES (43,81,'2023-10-02 15:04:21',3,'é esse aqui',1),(69,24,'2023-10-07 22:58:50',2,'',1),(70,81,'2023-10-02 09:12:39',2,'te odeio\r\n',0);
/*!40000 ALTER TABLE `DenunciaUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dia`
--

DROP TABLE IF EXISTS `Dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dia` (
  `id_dia` int(11) NOT NULL,
  `nm_dia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dia_Usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `hr_inicio` time DEFAULT NULL,
  `hr_fim` time DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_dia`),
  KEY `fk_Dia_Usuario_Dia` (`id_dia`),
  CONSTRAINT `fk_Dia_Usuario_Dia` FOREIGN KEY (`id_dia`) REFERENCES `Dia` (`id_dia`),
  CONSTRAINT `fk_Dia_Usuario_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dia_Usuario`
--

LOCK TABLES `Dia_Usuario` WRITE;
/*!40000 ALTER TABLE `Dia_Usuario` DISABLE KEYS */;
INSERT INTO `Dia_Usuario` VALUES (83,2,'09:00:00','18:00:00'),(83,3,'09:00:00','18:00:00'),(83,4,'12:00:00','13:00:00'),(83,5,'13:00:00','16:30:00'),(83,6,'09:00:00','18:00:00'),(83,7,'13:00:00','18:00:00');
/*!40000 ALTER TABLE `Dia_Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DivulgacaoItem`
--

DROP TABLE IF EXISTS `DivulgacaoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `fk_DivulgacaoItem_EstadoItem` FOREIGN KEY (`id_estadoItem`) REFERENCES `EstadoItem` (`id_estadoItem`),
  CONSTRAINT `fk_DivulgacaoItem_TipoItem` FOREIGN KEY (`id_tipoItem`) REFERENCES `TipoItem` (`id_tipoItem`),
  CONSTRAINT `fk_DivulgacaoItem_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoacaoCampanha` (
  `id_campanha` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dt_doacaoCampanha` datetime NOT NULL,
  `qt_doado` varchar(45) DEFAULT NULL,
  `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
  `dt_respostaOng` date DEFAULT NULL,
  `id_doacao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_item` varchar(250) DEFAULT NULL,
  `id_tipoEntrega` int(11) DEFAULT NULL,
  `hr_doacao` time DEFAULT NULL,
  `dt_doacao` date DEFAULT NULL,
  `nm_comprovante` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_campanha`,`id_usuario`,`dt_doacaoCampanha`),
  UNIQUE KEY `id_doacao_UNIQUE` (`id_doacao`),
  KEY `fk_DoacaoCampanha_Usuario` (`id_usuario`),
  KEY `fk_TipoEntrega_DoacaoCampanha_idx` (`id_tipoEntrega`),
  CONSTRAINT `fk_DoacaoCampanha_Campanha` FOREIGN KEY (`id_campanha`) REFERENCES `Campanha` (`id_campanha`),
  CONSTRAINT `fk_DoacaoCampanha_TipoEntrega` FOREIGN KEY (`id_tipoEntrega`) REFERENCES `TipoEntrega` (`id_tipoEntrega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DoacaoCampanha_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoCampanha`
--

LOCK TABLES `DoacaoCampanha` WRITE;
/*!40000 ALTER TABLE `DoacaoCampanha` DISABLE KEYS */;
INSERT INTO `DoacaoCampanha` VALUES (31,81,'2023-10-04 14:39:19','10',0,NULL,1,NULL,NULL,NULL,NULL,' '),(46,24,'2023-11-06 12:08:55','5',0,NULL,24,'livro harry potter',2,'15:15:00','2023-11-21',NULL),(46,24,'2023-11-06 12:09:47','300',0,'2023-11-06',25,'livros',1,'16:11:00','2023-11-22',NULL),(46,81,'2023-10-04 15:57:48','7',0,'2023-11-06',2,NULL,NULL,NULL,NULL,' '),(47,81,'2023-10-04 14:39:22','30',0,'2023-09-05',3,NULL,NULL,NULL,NULL,' '),(50,1,'2023-11-06 12:13:58','300',0,NULL,33,'Macarrão Parafuso',1,'12:21:00','2023-11-17',NULL),(50,42,'2023-11-04 22:53:48','43',0,NULL,22,'Arroz',1,'01:56:00','2023-11-16',NULL),(50,81,'2023-08-10 00:00:00','10kg',0,NULL,4,NULL,NULL,NULL,NULL,' '),(50,81,'2023-11-06 16:24:36','3',0,NULL,41,'Arroz',2,'17:30:00','2023-11-24',NULL),(52,24,'2023-10-30 18:45:45','5',0,NULL,16,'jaqueta',2,'20:51:00','2023-10-08',' '),(52,24,'2023-10-30 18:46:18','10',0,NULL,17,'jaqueta',1,'22:52:00','2023-10-11',' '),(52,24,'2023-11-02 11:39:24','2000',0,NULL,20,'blusas',1,'15:00:00','2023-11-23',NULL),(52,82,'2023-11-02 11:06:15','6',0,NULL,19,'casaco',2,'14:06:00','2023-11-14',NULL),(53,42,'2023-11-06 13:07:18','10',0,NULL,39,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/39.jpg'),(58,42,'2023-11-06 12:18:51','350',0,NULL,35,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/35.jpg'),(60,24,'2023-11-06 12:10:29','100',0,NULL,27,'pneus ',1,'12:15:00','2023-11-20',NULL),(60,24,'2023-11-06 12:11:05','50',0,NULL,28,'freios',1,'16:00:00','2023-11-22',NULL),(62,24,'2023-10-30 18:37:09','5',0,NULL,14,'Banana',2,'22:42:00','2023-10-24',' '),(62,24,'2023-10-30 18:38:00','5',0,NULL,15,'banana',1,'21:43:00','2023-10-17',' '),(66,24,'2023-11-27 10:09:00','2000',0,NULL,44,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/44.jpg'),(69,24,'2023-11-27 10:07:44','10',0,NULL,43,'bolinha',2,'14:00:00','2023-11-30',NULL),(69,24,'2023-11-27 10:46:03','500',0,NULL,45,'bolinha ',2,'12:53:00','2023-12-07',NULL),(70,25,'2023-11-06 12:23:21','450',0,NULL,36,'Kit de produtos de Higiene',1,'16:29:00','2023-12-08',NULL),(72,1,'2023-11-06 12:09:50','395',0,NULL,26,'Equipamentos',2,'16:15:00','2023-11-23',NULL),(78,1,'2023-11-06 12:12:51','235',0,NULL,31,'Leite em Pó',1,'15:20:00','2023-11-22',NULL),(78,1,'2023-11-06 12:13:12','400',0,NULL,32,'Arroz',2,'14:20:00','2023-12-08',NULL),(81,24,'2023-11-06 12:11:57','4000',0,NULL,29,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/29.jpg'),(81,24,'2023-11-06 12:12:22','500',0,NULL,30,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/30.jpg'),(81,147,'2023-11-08 14:44:41','3',0,NULL,42,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/42.jpg'),(82,24,'2023-11-06 14:41:09','50',0,NULL,40,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/40.jpg'),(88,24,'2023-11-02 10:55:39','5',1,'2023-11-02',18,NULL,NULL,NULL,NULL,NULL),(88,83,'2023-11-06 12:25:47','1000',0,NULL,37,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/37.jpg'),(90,1,'2023-09-27 00:00:00','5',1,'2023-11-04',5,NULL,NULL,NULL,NULL,'  '),(90,24,'2023-11-06 12:27:03','20',0,'2023-11-06',38,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/38.jpg'),(90,81,'2023-11-06 11:04:58','34',1,'2023-11-06',23,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/23.jpg'),(90,102,'2023-10-30 15:10:49','50',0,'2023-10-30',9,NULL,NULL,NULL,NULL,' '),(90,102,'2023-10-30 15:10:52','180.50',1,'2023-11-03',10,NULL,NULL,NULL,NULL,' '),(92,1,'2023-11-06 12:14:44','960',0,NULL,34,NULL,NULL,NULL,NULL,'/uploads/temp/comprovantesCampanha/34.jpg'),(110,24,'2023-10-30 16:32:41','10',1,'2023-11-03',11,NULL,NULL,NULL,NULL,' '),(110,24,'2023-10-30 16:32:42','10',0,'2023-11-03',12,NULL,NULL,NULL,NULL,' '),(110,24,'2023-10-30 16:34:53','5',1,'2023-11-03',13,NULL,NULL,NULL,NULL,' ');
/*!40000 ALTER TABLE `DoacaoCampanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoacaoItem`
--

DROP TABLE IF EXISTS `DoacaoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoacaoItem` (
  `id_usuarioDoador` int(11) NOT NULL,
  `id_usuarioOng` int(11) NOT NULL,
  `dt_doacaoItem` datetime NOT NULL,
  `nm_item` varchar(250) DEFAULT NULL,
  `qt_item` varchar(45) DEFAULT NULL,
  `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
  `id_tipoItem` int(11) DEFAULT NULL,
  `id_tipoEntrega` int(11) DEFAULT NULL,
  `hr_doacao` time DEFAULT NULL,
  `dt_doacao` date DEFAULT NULL,
  `dt_respostaOng` datetime DEFAULT NULL,
  `id_doacao` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_usuarioDoador`,`id_usuarioOng`,`dt_doacaoItem`),
  UNIQUE KEY `id_doacao_UNIQUE` (`id_doacao`),
  KEY `fk_DoacaoItem_Usuario2` (`id_usuarioOng`),
  KEY `fk_DoacaoItem_TipoItem` (`id_tipoItem`),
  KEY `fk_DoacaoItem_TipoEntrega` (`id_tipoEntrega`),
  CONSTRAINT `fk_DoacaoItem_TipoEntrega` FOREIGN KEY (`id_tipoEntrega`) REFERENCES `TipoEntrega` (`id_tipoEntrega`),
  CONSTRAINT `fk_DoacaoItem_TipoItem` FOREIGN KEY (`id_tipoItem`) REFERENCES `TipoItem` (`id_tipoItem`),
  CONSTRAINT `fk_DoacaoItem_Usuario` FOREIGN KEY (`id_usuarioDoador`) REFERENCES `Usuario` (`id_usuario`),
  CONSTRAINT `fk_DoacaoItem_Usuario2` FOREIGN KEY (`id_usuarioOng`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoItem`
--

LOCK TABLES `DoacaoItem` WRITE;
/*!40000 ALTER TABLE `DoacaoItem` DISABLE KEYS */;
INSERT INTO `DoacaoItem` VALUES (24,76,'2023-09-30 23:45:21','banana 2','3',0,1,1,'23:48:00','2023-09-08',NULL,1),(24,76,'2023-10-01 17:22:09','casaco','1',0,1,1,'17:24:00','2023-11-11',NULL,2),(24,76,'2023-10-01 17:59:47','sapa','4',0,1,2,'21:59:00','2023-10-25',NULL,3),(24,78,'2023-09-28 14:44:56','blusa','1',0,1,1,'14:53:00','2023-09-13',NULL,4),(24,78,'2023-09-28 17:31:39','banana','4',0,1,2,'17:34:00','2023-09-14',NULL,5),(24,78,'2023-09-30 19:58:09','banana','3',0,4,2,'22:59:00','2023-09-09',NULL,6),(24,79,'2023-10-01 16:30:53','lapis','1',0,6,2,'16:33:00','2023-10-20',NULL,7),(24,82,'2023-10-02 11:56:23','comida','1',1,2,1,'12:04:00','2023-10-07','2023-11-02 10:37:06',8),(24,82,'2023-10-29 20:39:15','maça verde','31',0,2,1,'23:43:00','2023-10-25','2023-11-02 10:06:12',9),(24,82,'2023-10-29 20:39:47','camisa vermelha','1',0,1,2,'20:40:00','2023-10-25','2023-11-02 10:05:49',10),(24,82,'2023-10-29 20:40:42','3131','31.1',1,5,1,'20:44:00','2023-10-23','2023-11-02 10:42:03',11),(24,82,'2023-10-29 20:41:24','dsadasd','-3',1,2,1,'20:45:00','2023-10-26','2023-11-02 10:42:42',12),(24,82,'2023-11-01 13:43:52','jaqueta preta','1',1,1,2,'16:49:00','2023-11-16','2023-11-02 10:05:28',30),(24,84,'2023-11-02 10:41:11','caderno','5',0,6,1,'10:44:00','2023-11-08',NULL,33),(24,85,'2023-11-01 14:33:10','dadsad','4',0,10,2,'14:41:00','2023-11-09',NULL,31),(42,74,'2023-11-04 23:18:55','Banana','32',0,2,2,'04:20:00','2023-11-16',NULL,34),(77,74,'2023-11-06 10:00:14','Oleo','45',0,2,2,'13:08:00','2023-11-25',NULL,35),(81,51,'2023-10-02 14:51:38','Oléo','1',0,2,1,'03:47:00','2023-09-30',NULL,13),(81,70,'2023-10-04 14:36:32','arroz','10',1,2,2,'16:44:00','2023-10-05','2023-10-05 00:00:00',14),(81,76,'2023-10-02 15:19:14','vassoura','5',1,1,1,'10:30:00','2023-10-05','2023-10-05 00:00:00',15),(81,82,'2023-10-02 15:17:13','arroz','5',0,2,2,'17:00:00','2023-10-09','2023-11-02 10:34:10',16),(81,84,'2023-10-04 14:32:34','Arroz','10',0,2,1,'15:39:00','2023-10-10',NULL,17),(81,85,'2023-10-02 15:11:36','ração','5',1,2,2,'13:00:00','2023-10-04','2023-10-04 00:00:00',18),(83,80,'2023-10-16 15:08:12','Farinha de Milho','3',1,2,1,'17:16:00','2023-10-05','2023-11-01 00:00:00',19),(83,85,'2023-11-01 14:53:09','computador','2',0,10,2,'15:00:00','2023-11-01',NULL,32),(91,76,'2023-10-01 21:49:35','camisa','1',0,1,1,'21:52:00','2023-10-13',NULL,20),(93,83,'2023-10-02 11:26:45','laura','1',1,10,2,'11:50:00','2023-12-15','2023-10-30 11:47:18',21),(94,76,'2023-10-02 11:39:47','sofa','2',0,1,1,'14:45:00','2023-10-25',NULL,22),(96,76,'2023-10-02 14:38:18','camisa','1',0,1,1,'02:01:00','5220-02-12',NULL,23),(101,76,'2023-10-02 15:22:45','Calça','12',0,1,2,'16:29:00','2023-10-17',NULL,24),(106,82,'2023-10-02 15:33:23','sapatos','600',1,1,2,'14:59:00','2023-08-10','2023-11-02 10:08:01',25),(108,69,'2023-10-02 15:34:10','cama sem colchão','1',0,4,2,'12:30:00','2000-05-11',NULL,26),(113,83,'2023-10-02 15:44:33','caixa de leite','4',1,10,1,'15:30:00','2023-02-24','2023-11-02 10:30:48',27),(115,85,'2023-10-02 16:49:02','jornal','2',1,5,2,'10:00:00','2023-10-03','2023-10-30 00:00:00',28),(116,85,'2023-10-02 16:48:49','uygtytg','8',0,2,2,'16:57:00','2023-10-13',NULL,29);
/*!40000 ALTER TABLE `DoacaoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoacaoMonetaria`
--

DROP TABLE IF EXISTS `DoacaoMonetaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoacaoMonetaria` (
  `id_usuarioDoador` int(11) NOT NULL,
  `id_usuarioOng` int(11) NOT NULL,
  `dt_doacao` datetime NOT NULL,
  `ic_doacaoConfirmada` tinyint(1) DEFAULT NULL,
  `vl_monetario` double DEFAULT NULL,
  `nm_comprovante` varchar(250) DEFAULT NULL,
  `id_doacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_respostaOng` date DEFAULT NULL,
  PRIMARY KEY (`id_usuarioDoador`,`id_usuarioOng`,`dt_doacao`),
  UNIQUE KEY `id_doacao_UNIQUE` (`id_doacao`),
  KEY `fk__DoacaoMonetaria_Usuario2` (`id_usuarioOng`),
  CONSTRAINT `fk_DoacaoMonetaria_Usuario1` FOREIGN KEY (`id_usuarioDoador`) REFERENCES `Usuario` (`id_usuario`),
  CONSTRAINT `fk__DoacaoMonetaria_Usuario2` FOREIGN KEY (`id_usuarioOng`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoacaoMonetaria`
--

LOCK TABLES `DoacaoMonetaria` WRITE;
/*!40000 ALTER TABLE `DoacaoMonetaria` DISABLE KEYS */;
INSERT INTO `DoacaoMonetaria` VALUES (24,45,'2023-09-18 00:00:00',0,10,'uploads/temp/comprovantes/1.jpg',1,NULL),(24,72,'2023-09-23 22:44:19',0,5,'uploads/comprovanetes/15.jpg',15,NULL),(24,76,'2023-09-30 23:45:05',0,5,'uploads/temp/comprovantes/20.jpg',20,NULL),(24,76,'2023-10-01 17:59:27',0,100,'uploads/temp/comprovantes/24.jpg',24,NULL),(24,78,'2023-09-28 17:31:22',0,5,'uploads/temp/comprovantes/16.jpg',16,NULL),(24,78,'2023-09-30 19:55:11',0,5,'uploads/temp/comprovantes/17.jpg',17,NULL),(24,78,'2023-09-30 19:57:51',0,5,'uploads/temp/comprovantes/18.jpg',18,NULL),(24,78,'2023-09-30 19:58:17',0,3,'uploads/temp/comprovantes/19.jpg',19,NULL),(24,82,'2023-10-01 19:17:42',0,5,'uploads/temp/comprovantes/25.jpg',25,'2023-11-04'),(24,82,'2023-10-01 19:17:54',1,500,'uploads/temp/comprovantes/26.jpg',26,'2023-11-02'),(24,82,'2023-10-29 20:36:18',1,5,'uploads/temp/comprovantes/68.jpg',68,'2023-11-02'),(24,82,'2023-10-29 20:37:22',0,6,'uploads/temp/comprovantes/69.jpg',69,'2023-11-02'),(24,82,'2023-10-29 20:38:44',1,5,'uploads/temp/comprovantes/70.jpg',70,'2023-11-02'),(24,82,'2023-10-30 15:22:20',1,5,'uploads/temp/comprovantes/73.jpg',73,'2023-11-02'),(24,82,'2023-11-02 12:05:34',1,10,'/uploads/temp/comprovantes/75.jpg',75,'2023-11-02'),(24,82,'2023-11-02 12:07:27',1,15,'/uploads/temp/comprovantes/76.jpg',76,'2023-11-02'),(24,82,'2023-11-02 12:31:23',1,20,'/uploads/temp/comprovantes/77.jpg',77,'2023-11-02'),(24,83,'2023-10-01 16:28:30',1,5,'uploads/temp/comprovantes/23.jpg',23,'2023-10-09'),(24,83,'2023-11-06 14:45:08',1,100,'/uploads/temp/comprovantes/85.jpg',85,'2023-11-06'),(24,85,'2023-10-01 16:06:52',0,5,'uploads/temp/comprovantes/22.jpg',22,NULL),(24,85,'2023-10-01 22:10:23',0,6,'uploads/temp/comprovantes/34.jpg',34,NULL),(24,85,'2023-10-01 22:11:07',0,5,'uploads/temp/comprovantes/35.jpg',35,NULL),(24,85,'2023-10-01 22:14:16',0,100,'uploads/temp/comprovantes/36.jpg',36,NULL),(24,85,'2023-10-01 22:14:24',0,5,'uploads/temp/comprovantes/37.jpg',37,NULL),(24,92,'2023-10-01 22:05:06',0,5,'uploads/temp/comprovantes/29.jpg',29,NULL),(24,92,'2023-10-01 22:05:18',0,6,'uploads/temp/comprovantes/31.jpg',31,NULL),(24,92,'2023-10-01 22:08:09',0,5,'uploads/temp/comprovantes/32.jpg',32,NULL),(24,92,'2023-10-01 22:08:28',0,5,'uploads/temp/comprovantes/33.jpg',33,NULL),(24,92,'2023-10-02 09:38:59',0,5,'uploads/temp/comprovantes/39.jpg',39,NULL),(24,92,'2023-10-02 14:33:41',0,5,'uploads/temp/comprovantes/41.jpg',41,NULL),(42,74,'2023-11-04 23:18:25',0,89,'/uploads/temp/comprovantes/78.jpg',78,NULL),(42,83,'2023-11-06 11:08:18',1,45,'/uploads/temp/comprovantes/82.jpg',82,'2023-11-06'),(42,83,'2023-11-06 13:08:10',1,54,'/uploads/temp/comprovantes/83.jpg',83,'2023-11-06'),(42,83,'2023-11-06 13:28:23',0,45,'/uploads/temp/comprovantes/84.jpg',84,'2023-11-06'),(81,43,'2023-10-02 15:03:29',0,20,'uploads/temp/comprovantes/44.jpg',44,NULL),(81,48,'2023-10-02 15:11:42',1,1000,'uploads/temp/comprovantes/46.jpg',46,'2023-09-05'),(81,76,'2023-10-02 15:18:36',0,1000,'uploads/temp/comprovantes/48.jpg',48,NULL),(81,80,'2023-10-02 08:34:29',0,12,'uploads/temp/comprovantes/38.jpg',38,'2023-09-03'),(81,80,'2023-10-05 14:10:51',0,200.5,'uploads/temp/comprovantes/66.jpg',66,NULL),(81,83,'2023-10-02 16:43:57',1,1500,'uploads/temp/comprovantes/60.jpg',60,'2023-11-03'),(81,83,'2023-11-06 10:24:03',0,5,'/uploads/temp/comprovantes/79.jpg',79,'2023-11-06'),(81,83,'2023-11-06 11:00:20',0,34,'/uploads/temp/comprovantes/80.jpg',80,'2023-11-06'),(81,83,'2023-11-06 11:00:22',0,34,'/uploads/temp/comprovantes/81.jpg',81,'2023-11-06'),(81,83,'2023-11-06 16:23:25',0,35,'/uploads/temp/comprovantes/86.jpg',86,'2023-11-06'),(81,83,'2023-11-10 18:09:24',0,45,'/uploads/temp/comprovantes/87.jpg',87,'2023-11-10'),(81,85,'2023-10-02 14:47:16',0,100,'uploads/temp/comprovantes/43.jpg',43,'2023-09-04'),(81,85,'2023-10-02 15:11:02',1,100,'uploads/temp/comprovantes/45.jpg',45,'2023-09-05'),(83,42,'2023-10-30 10:19:02',0,6,'uploads/temp/comprovantes/71.jpg',71,'2023-11-06'),(83,80,'2023-10-16 15:07:57',0,754745,'uploads/temp/comprovantes/67.jpg',67,NULL),(83,80,'2023-11-01 14:04:12',0,555,'/uploads/temp/comprovantes/74.jpg',74,NULL),(91,85,'2023-10-01 21:48:58',0,5,'uploads/temp/comprovantes/28.jpg',28,'2023-10-10'),(93,83,'2023-10-02 11:32:38',0,1,'uploads/temp/comprovantes/40.jpg',40,'2023-11-04'),(97,82,'2023-10-02 14:42:17',1,500,'uploads/temp/comprovantes/42.jpg',42,'2023-11-02'),(99,83,'2023-10-02 15:13:02',0,100,'uploads/temp/comprovantes/47.jpg',47,'2023-10-11'),(100,83,'2023-10-02 15:19:41',0,1,'uploads/temp/comprovantes/49.jpg',49,'2023-11-03'),(101,76,'2023-10-02 15:23:44',0,100,'uploads/temp/comprovantes/50.jpg',50,NULL),(101,76,'2023-10-02 15:23:45',0,100,'uploads/temp/comprovantes/51.jpg',51,NULL),(102,82,'2023-10-02 15:25:21',0,1000,'uploads/temp/comprovantes/52.jpg',52,'2023-11-04'),(105,85,'2023-10-02 15:30:43',0,200,'uploads/temp/comprovantes/53.jpg',53,NULL),(108,69,'2023-10-02 15:34:57',0,3000,'uploads/temp/comprovantes/54.jpg',54,NULL),(109,85,'2023-10-02 15:40:42',0,10,'uploads/temp/comprovantes/56.jpg',56,NULL),(110,82,'2023-10-02 15:40:38',1,15,'uploads/temp/comprovantes/55.jpg',55,'2023-11-02'),(111,85,'2023-10-02 15:40:48',0,3000,'uploads/temp/comprovantes/57.jpg',57,NULL),(113,83,'2023-10-02 15:42:38',0,1000,'uploads/temp/comprovantes/58.jpg',58,'2023-11-03'),(114,83,'2023-10-02 16:37:36',1,1,'uploads/temp/comprovantes/59.jpg',59,'2023-11-03'),(115,85,'2023-10-02 16:51:42',0,10,'uploads/temp/comprovantes/64.jpg',64,NULL),(116,85,'2023-10-02 16:47:16',0,54,'uploads/temp/comprovantes/61.jpg',61,NULL),(116,85,'2023-10-02 16:48:17',0,50,'uploads/temp/comprovantes/62.jpg',62,NULL),(117,85,'2023-10-02 16:58:38',0,1,'uploads/temp/comprovantes/65.jpg',65,NULL);
/*!40000 ALTER TABLE `DoacaoMonetaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstadoItem`
--

DROP TABLE IF EXISTS `EstadoItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstadoItem` (
  `id_estadoItem` int(11) NOT NULL,
  `nm_estadoItem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estadoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FotosOng` (
  `id_fotoOng` int(11) NOT NULL,
  `nm_refFoto` varchar(250) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_fotoOng`,`id_usuario`),
  KEY `fk_FotosOng_Usuario` (`id_usuario`),
  CONSTRAINT `fk_FotosOng_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InteresseItem` (
  `id_divulgacao` int(11) NOT NULL,
  `id_usuarioOng` int(11) NOT NULL,
  `dt_itemRecebido` datetime DEFAULT NULL,
  `dt_interesseItem` datetime DEFAULT NULL,
  `dt_buscaItem` datetime DEFAULT NULL,
  `ic_interesseConfirmado` tinyint(1) DEFAULT NULL,
  `id_tipoEntrega` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_divulgacao`,`id_usuarioOng`),
  KEY `fk_InteresseItem_Usuario` (`id_usuarioOng`),
  KEY `fk_InteresseItem_TipoEntrega` (`id_tipoEntrega`),
  CONSTRAINT `fk_InteresseItem_DivulgacaoItem` FOREIGN KEY (`id_divulgacao`) REFERENCES `DivulgacaoItem` (`id_divulgacao`),
  CONSTRAINT `fk_InteresseItem_TipoEntrega` FOREIGN KEY (`id_tipoEntrega`) REFERENCES `TipoEntrega` (`id_tipoEntrega`),
  CONSTRAINT `fk_InteresseItem_Usuario` FOREIGN KEY (`id_usuarioOng`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MotivoDenunciaCampanha` (
  `id_motivoDenuncia` int(11) NOT NULL,
  `nm_motivoDenuncia` varchar(250) DEFAULT NULL,
  `id_motivoValorDenuncia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_motivoDenuncia`),
  KEY `fk_MotivoDenunciaCampanha_ValorMotivoDenuncia` (`id_motivoValorDenuncia`),
  CONSTRAINT `fk_MotivoDenunciaCampanha_ValorMotivoDenuncia` FOREIGN KEY (`id_motivoValorDenuncia`) REFERENCES `ValorMotivoDenuncia` (`id_motivoValorDenuncia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MotivoDenunciaUsuario` (
  `id_motivoDenuncia` int(11) NOT NULL,
  `nm_motivoDenuncia` varchar(250) DEFAULT NULL,
  `id_motivoValorDenuncia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_motivoDenuncia`),
  KEY `fk_MotivoDenunciaUsuario_ValorMotivoDenuncia` (`id_motivoValorDenuncia`),
  CONSTRAINT `fk_MotivoDenunciaUsuario_ValorMotivoDenuncia` FOREIGN KEY (`id_motivoValorDenuncia`) REFERENCES `ValorMotivoDenuncia` (`id_motivoValorDenuncia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ODS` (
  `id_ods` int(11) NOT NULL,
  `nm_ods` varchar(45) DEFAULT NULL,
  `nm_hrefOds` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_ods`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ODS`
--

LOCK TABLES `ODS` WRITE;
/*!40000 ALTER TABLE `ODS` DISABLE KEYS */;
INSERT INTO `ODS` VALUES (1,'Erradicação da pobreza','uploads/ods/1.jpg'),(2,'Fome zero','uploads/ods/2.jpg'),(3,'Boa saúde e bem-estar','uploads/ods/3.jpg'),(4,'Educação de qualidade','uploads/ods/4.jpg'),(5,'Igualdade de Gênero','uploads/ods/5.jpg'),(6,'Água limpa e saneamento','uploads/ods/6.jpg'),(7,'Energia acessível e limpa','uploads/ods/7.jpg'),(8,'Emprego digno e crescimento econômico','uploads/ods/8.jpg'),(9,'Indústria, inovação e infraestrutura','uploads/ods/9.jpg'),(10,'Redução das desigualdades','uploads/ods/10.jpg'),(11,'Cidades e comunidades sustentáveis','uploads/ods/11.jpg'),(12,'Consumo e produção responsáveis','uploads/ods/12.jpg'),(13,'Combate ás alterações climáticas','uploads/ods/13.jpg'),(14,'Vida debaixo da água','uploads/ods/14.jpg'),(15,'Vida sobre a terra','uploads/ods/15.jpg'),(16,'Paz, justiça e instituições fortes','uploads/ods/16.jpg'),(17,'Parcerias em prol das metas','uploads/ods/17.jpg');
/*!40000 ALTER TABLE `ODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ong_CategoriaOng`
--

DROP TABLE IF EXISTS `Ong_CategoriaOng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ong_CategoriaOng` (
  `id_usuarioOng` int(11) NOT NULL,
  `id_categoriaOng` int(11) NOT NULL,
  PRIMARY KEY (`id_usuarioOng`,`id_categoriaOng`),
  KEY `fk_categoriaOng_ongCategoriaOng` (`id_categoriaOng`),
  CONSTRAINT `fk_categoriaOng_ongCategoriaOng` FOREIGN KEY (`id_categoriaOng`) REFERENCES `CategoriaOng` (`id_categoriaOng`),
  CONSTRAINT `fk_usuario_ongCategoriaOng` FOREIGN KEY (`id_usuarioOng`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ong_CategoriaOng`
--

LOCK TABLES `Ong_CategoriaOng` WRITE;
/*!40000 ALTER TABLE `Ong_CategoriaOng` DISABLE KEYS */;
INSERT INTO `Ong_CategoriaOng` VALUES (42,5),(43,5),(43,6),(43,7),(45,5),(45,8),(47,7),(47,12),(48,3),(48,7),(49,3),(49,5),(49,9),(51,13),(69,3),(69,7),(70,4),(70,6),(70,9),(71,2),(71,4),(71,14),(72,6),(73,3),(73,5),(74,2),(74,6),(74,12),(75,4),(76,1),(76,8),(77,5),(77,6),(77,7),(78,3),(78,15),(79,5),(80,12),(82,11),(82,12),(83,3),(83,5),(83,6),(83,10),(83,11),(83,15),(84,3),(84,8),(85,8),(85,13),(92,5),(92,10),(92,11);
/*!40000 ALTER TABLE `Ong_CategoriaOng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoEntrega`
--

DROP TABLE IF EXISTS `TipoEntrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoEntrega` (
  `id_tipoEntrega` int(11) NOT NULL,
  `nm_tipoEntrega` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_tipoEntrega`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoItem` (
  `id_tipoItem` int(11) NOT NULL,
  `nm_tipoItem` varchar(250) DEFAULT NULL,
  `img_tipoItem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_tipoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoItem`
--

LOCK TABLES `TipoItem` WRITE;
/*!40000 ALTER TABLE `TipoItem` DISABLE KEYS */;
INSERT INTO `TipoItem` VALUES (0,'Monetário','uploads/tipoitem/icones/0.jpg'),(1,'Roupas','uploads/tipoitem/icones/1.jpg'),(2,'Alimentos','uploads/tipoitem/icones/2.jpg'),(3,'Brinquedos','uploads/tipoitem/icones/3.jpg'),(4,'Móveis','uploads/tipoitem/icones/4.jpg'),(5,'Produtos de Higiene','uploads/tipoitem/icones/5.jpg'),(6,'Materiais Escolares','uploads/tipoitem/icones/6.jpg'),(7,'Equipamentos Médicos','uploads/tipoitem/icones/7.jpg'),(8,'Eletrônicos','uploads/tipoitem/icones/8.jpg'),(9,'Livros','uploads/tipoitem/icones/9.jpg'),(10,'Outros','uploads/tipoitem/icones/10.jpg');
/*!40000 ALTER TABLE `TipoItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoItem_Ong`
--

DROP TABLE IF EXISTS `TipoItem_Ong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoItem_Ong` (
  `id_tipoItem` int(11) NOT NULL,
  `id_usuarioOng` int(11) NOT NULL,
  PRIMARY KEY (`id_tipoItem`,`id_usuarioOng`),
  KEY `fk_TipoItem_Ong_Usuario` (`id_usuarioOng`),
  CONSTRAINT `fk_TipoItem_Ong_TipoItem` FOREIGN KEY (`id_tipoItem`) REFERENCES `TipoItem` (`id_tipoItem`),
  CONSTRAINT `fk_TipoItem_Ong_Usuario` FOREIGN KEY (`id_usuarioOng`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoItem_Ong`
--

LOCK TABLES `TipoItem_Ong` WRITE;
/*!40000 ALTER TABLE `TipoItem_Ong` DISABLE KEYS */;
INSERT INTO `TipoItem_Ong` VALUES (1,45),(1,76),(1,78),(1,80),(1,82),(1,84),(1,92),(2,45),(2,49),(2,51),(2,70),(2,74),(2,80),(2,82),(2,84),(2,85),(3,45),(3,48),(3,80),(3,83),(3,84),(3,92),(4,69),(4,78),(4,83),(4,84),(4,92),(5,47),(5,49),(5,51),(5,80),(5,82),(5,84),(5,85),(6,42),(6,43),(6,45),(6,47),(6,74),(6,77),(6,79),(6,83),(6,84),(6,92),(7,51),(7,73),(7,84),(8,70),(8,77),(8,83),(8,84),(9,43),(9,69),(9,77),(9,84);
/*!40000 ALTER TABLE `TipoItem_Ong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoUsuario`
--

DROP TABLE IF EXISTS `TipoUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoUsuario` (
  `id_tipoUsuario` int(11) NOT NULL,
  `nm_tipoUsuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
/*!40101 SET character_set_client = utf8 */;
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
  `dt_desbloqueio` datetime DEFAULT NULL,
  `ic_podeBuscar` tinyint(1) DEFAULT NULL,
  `id_tipoUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nm_email_UNIQUE` (`nm_email`),
  KEY `fk_Usuario_TipoUsuario` (`id_tipoUsuario`),
  CONSTRAINT `fk_Usuario_TipoUsuario` FOREIGN KEY (`id_tipoUsuario`) REFERENCES `TipoUsuario` (`id_tipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'guilhermenegrao@gmail.com',NULL,'Guilherme Negrao','202cb962ac59075b964b07152d234b70','013974062969','1111111111111',NULL,'11070101','SP','Santos','Carvalho de Mendonça','30','Vila Belmiro','75','','','31313131',NULL,'232131',NULL,0,NULL,1,0),(2,'gustavonegrao@gmail.com',NULL,'Gustavo','202cb962ac59075b964b07152d234b70','134556789003','222222222222',NULL,'11070102','SP','Sao Vicente','Carvalho','38','Vila Belmiro','Apto45','222222222222222222','4344444444444444',NULL,NULL,NULL,NULL,1,NULL,0,2),(3,'Rapha@gmail.com',NULL,'Rapha','202cb962ac59075b964b07152d234b70','23233333333333','77777777777777',NULL,'83643764','MG','Belo Horizonte','Eurico Mursa','67','Mariana','Apto13','333333333333333333','666666666666666666',NULL,NULL,NULL,NULL,0,NULL,0,0),(4,'Alisson@email.com','Alisson@email.com','Alisson','202cb962ac59075b964b07152d234b70','(11) 1234-5678','ID001',NULL,'12345-678','SP','Cidade 1','Rua 1','123','Bairro 1','Complemento 1','Log 1','Lat 1',NULL,NULL,NULL,NULL,1,NULL,0,0),(5,'Laura@email.com','Laura@email.com','Laura','202cb962ac59075b964b07152d234b70','(11) 1234-5679','ID901',NULL,'12345-6987','SP','Cidade 2','Rua 2','456','Bairro 2','Complemento 2','Log 2','Lat 3',NULL,NULL,NULL,NULL,0,NULL,0,0),(6,'Marcella@email.com','Marcella@email.com','Marcella','202cb962ac59075b964b07152d234b70','(11) 2346-5679','2763',NULL,'8635378','SP','Cidade 3','Rua 3','354','Bairro 3','Complemento 3','Log 3','Lat 4',NULL,NULL,NULL,NULL,0,NULL,0,0),(7,'Freddy@email.com','Freddy@email.com','Freddy','202cb962ac59075b964b07152d234b70','(13) 7346-5679','789',NULL,'97368976','SP','Cidade 5','Rua 5','4345','Bairro 4','Complemento 4','Log 4','Lat 4',NULL,NULL,NULL,NULL,1,NULL,0,0),(24,'raphalima337@gmail.com',NULL,'Raphael Lima','25d55ad283aa400af464c76d713c07ad','13991217101','9999999999',NULL,'11075200','SP','Santos','Rua Lucas Fortunato','158','Vila Mathias','até 119/120','-46.3230976','-23.9456791',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(25,'macela@gmail.com',NULL,'Macella de Oliveira','202cb962ac59075b964b07152d234b70','1383129381','8888888888',NULL,'11538105','SP','Cubatão','Rua Julio Amaro Ribeiro','71','Vila Natal','22','-46.433317','-23.9013672',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(42,'oscebem@oscebem.org','contato@oscebem.org','Oscebem','202cb962ac59075b964b07152d234b70','+55 (47) 9960-00572','03.517.135/0001-17','A Oscebem – Obras Sociais da Casa Espírita Bezerra de Menezes foi fundada por um grupo de voluntários em 16/09/2009. Tem sua sede no Bairro Costa e Silva e extensão no Bom Retiro, Joinville-SC.\n\nÉ uma organização civil, beneficente, de assistência social, cuja missão é a formação integral da criança, adolescentes, jovens, adultos e da terceira idade.\n\nA organização é dirigida por um Conselho de Administração e uma Diretoria Executiva e tem por objetivos ofertar ações gratuitas, continuadas e planejadas, com centralidade na família e organizadas dentro dos níveis de Proteção Social Básica, Proteção Social Especial de Média Complexidade e de Garantia e Defesa de Direitos, com vistas ao desenvolvimento de capacidades e potencialidades dos usuários bem como na defesa e afirmação de seus direitos, sem distinção de raça, gênero, etnia, credo religioso ou outra forma de discriminação.','89218585','SC','Joinville','João Koneski','2413 ','América','Empresa','-48.8729952','-26.2797092','uploads/ongs/42/icone/42.jpg','https://oscebem.org/','uploads/ongs/42/banner/42.jpg','+5547996000572',0,NULL,1,1),(43,'glocal @org.br','contato.glocal @org.br','Glocal','202cb962ac59075b964b07152d234b70','03022880671','40.215.438/0001-01','Somos um grupo de jovens, que trabalham de forma voluntária para atingir pessoas através da arte, tirando-as do comodismo, refletindo uma espiritualidade contemporânea baseada nos ensinamentos de Jesus, de forma não religiosa porém relevante para nosso dia a dia.\n\nTodos os nossos encontros são realizados com o objetivo de encurtar a distância entre você, no seu contexto cultural dentro dessa cidade maluca, e a pessoa de Jesus Cristo!','05423010','SP','São Paulo','Diogo Moreira','132  ','Pinheiros','Empresa','-46.6956896','-23.5698306','uploads/ongs/43/icone/43.jpg','https://glocal.org.br/','uploads/ongs/43/banner/43.jpg','+5513991217101',0,NULL,1,1),(45,'comunidadeimpacto @org.br','contato.comunidadeimpacto @org.br','Comunidade Impacto','202cb962ac59075b964b07152d234b70','+55 (11) 3599-7437','15.416.010/0001-80','Fundada em 2012 por um grupo de cristãos Batistas que, inconformados com o grande número de famílias desestruturadas com crianças e adolescentes na rua sem atividade construtiva para ocupar seu tempo, a evasão escolar e o envolvimento precoce com o mundo das drogas, decidiram constituir a Comunidade Impacto. Considerando esse contexto a Instituição oferta Serviço de Convivência e Fortalecimento de Vínculos para 114 crianças e adolescentes, complementando as ações familiares, fortalecendo vínculos e contribuindo na redução de danos causado pelo convívio na rua através das oficinas de judô, hip hop, grafite, artesanato, música e roda de conversa. Distribuímos kit alimento e leite semanalmente para famílias cadastradas e realizamos encontros bimestrais (aos sábados a tarde) com essas famílias para garantir o direito ao acesso à informação.','06263100','SP','Osasco','Av. João Ventura dos Santos','3031','Munhoz Júnior','Casa','-46.8056191','-23.4940141','uploads/ongs/45/icone/45.jpg','https://comunidadeimpacto.wixsite.com/ongsp','uploads/ongs/45/banner/45.jpg','15416010000180',0,NULL,1,1),(47,'projetosocial.blacks@gmail.com','projetosocial.blacks@gmail.com','Black\'s Urbano','202cb962ac59075b964b07152d234b70','+55 (11) 97853-7462','39.935.047/0001-82','O projeto dos Black\'s Urbanos é uma iniciativa poderosa que ocorre na zona leste de São Paulo, nas regiões de A e Carvalho. Nossa organização concentra seus esforços em três áreas vitais: recreação, educação e qualificação profissional. No entanto, nossa visão é ainda mais abrangente e inspiradora. Almejamos incorporar programas culturais, visando um objetivo grandioso: impactar positivamente o maior número possível de crianças, jovens e adolescentes que vivem nas favelas. Queremos oferecer a eles novas perspectivas, oportunidades e, acima de tudo, um futuro mais promissor. Estamos comprometidos em trazer mudanças significativas para essas comunidades, capacitando e transformando vidas por meio de nossos projetos abrangentes e visionários.','08223180','SP','São Paulo','Cidade Antônio Estêvão de Carvalho','3031','Itaquera','Casa','-46.4788712','-23.5382948','uploads/ongs/47/icone/47.jpg','https://www.01centavo.com.br/blacks-urbano.html','uploads/ongs/47/banner/47.jpg','39935047000182',0,NULL,1,1),(48,'bikeanjo@org.br','contato.bikeanjo@org.br','Bike Anjo Porto Alegre','202cb962ac59075b964b07152d234b70','+55 (65) 9999-9999','19.515.100/0001-89 ','Somos uma rede de pessoas voluntárias, formada em 2013 com o objetivo de incentivar o uso da bicicleta no cotidiano urbano. Auxiliamos novos ciclistas desde ensinar a pedalar, mostrar as melhores condutas para circulação no trânsito como também trabalhamos em conjunto com outras entidades por uma Porto Alegre mais ciclável e humana. A bicicleta é uma ferramenta de transformação social: tem um importante papel na promoção de autonomia, qualidade de vida e cidades mais justas para todas as pessoas. Bora?','90040400','RS','Porto Alegre','Rua Prof. Freitas e Castro','191','Azenha','Casa','-51.2154741','-30.0495343','uploads/ongs/48/icone/48.jpg','https://www.bikeanjo.org/','uploads/ongs/48/banner/48.jpg','19515100000189',0,NULL,1,1),(49,'movimento-zona-leste-somos-nos@org.br','contato.movimento-zona-leste-somos-nos@org.br','Movimento Zona Leste Somos Nós','202cb962ac59075b964b07152d234b70','+55 (11) 9999-9999','19.515.100/0001-89 ','A ONG Zona Leste Somos Nós é uma organização que atua na região leste da cidade de São Paulo, buscando promover o desenvolvimento social e econômico da comunidade local. Nós seguimos em diversas frentes, em parceria com entidades parceiras, tais como a promoção da educação, ações de saúde, cultura, esporte e lazer, além do apoio ao empreendedorismo local.','08032250','SP','São Paulo','Rua Dr. Zacarias Colaço Filho','45','Jardim Santo Antonio','Casa','-46.4316122','-23.5151183','uploads/ongs/49/icone/49.jpg','https://zonalestesomosnos.com.br/','uploads/ongs/49/banner/49.jpg','+5511996372742',0,NULL,1,1),(51,'resgatando-amor@org.br','contato.resgatando-amor@org.br','Resgatando Amor','202cb962ac59075b964b07152d234b70','+55 (13) 9999-9999','35.826.454/0001-09','Resgatando Amor é formado por protetoras independentes e sem fins lucrativos, com o objetivo de ajudar animais em situação de vulnerabilidade.\n\nNossa Misão é ajudar animais em situação de abandono ou maus tratos a terem uma segunda chance e uma vida digna, conectando e envolvendo pessoas em favor da causa animal, para que juntos possamos dar uma nova chance aos animais abandonados, seja por meio da adoção responsável ou voluntariado.','90040400','RS','Porto Alegre','Rua Prof. Freitas e Castro','191','Azenha','Casa','-51.2154741','-30.0495343','uploads/ongs/51/icone/51.jpg','https://www.resgatandoamor.com/','uploads/ongs/51/banner/51.jpg','35826454000109',0,NULL,1,1),(69,'nyingmasp@nyingma.com.br','nyingmasp@nyingma.com.br','Centro Nyingma do Brasil','202cb962ac59075b964b07152d234b70','+55 (11) 3021-9376','00.704.538/0001-87','Desde 1984, o Nyingma centro de São Paulo (CNB) vem transmitindo os ensinamentos da linhagem Nyingma do Budismo Tibetano, com a realização de cursos, práticas, cerimônias, projetos de arte sagrada e divulgação da cultura do Tibet.\n\nO termo ”Linhagem Nyingma” designa a escola mais antiga do Budismo tibetano, que teve origem no Guru Padmasambhava, o Mestre nascido do Lótus, que levou e consolidou os ensinamento de Buddha no Tibet, no século VIII.','05461010','SP','São Páulo','Av. Prof Fonseca Rodrigues','224','Alto de Pinheiros','Casa','-46.7135449','-23.5513232','uploads/ongs/69/icone/69.jpg','https://www.centronyingmabrasil.org/','uploads/ongs/69/banner/69.jpg','+5511950441076',0,NULL,1,1),(70,'fas@fas-amazonia.org','fas@fas-amazonia.org','FAS (Fundação Amazônia Sustentável)','202cb962ac59075b964b07152d234b70','+55 (92) 4009-8900','09.351.359/0001-88','A Fundação Amazônia Sustentável (FAS) é uma organização da sociedade civil sem fins lucrativos que atua pelo desenvolvimento sustentável da Amazônia por meio de programas e projetos nas áreas de educação e cidadania, saúde, empoderamento, pesquisa e inovação, conservação ambiental, infraestrutura comunitária, empreendedorismo e geração de renda. A FAS tem como missão contribuir para a conservação do bioma pela valorização da floresta em pé e de sua biodiversidade e pela melhoria da qualidade de vida das populações da Amazônia. Em 2023, a instituição completa 15 anos de atuação com números de destaque, como o aumento de 202% na renda média de milhares famílias beneficiadas e a queda de 40% no desmatamento em áreas atendidas entre 2008 e 2021.','69055660','AM','Manaus','Rua Alvaro Braga','351','Parque Dez de Novembro','Apt 23','-60.008802','-3.0752154','uploads/ongs/70/icone/70.jpg','https://www.centronyingmabrasil.org/','uploads/ongs/70/banner/70.jpg','09351359000188',0,NULL,1,1),(71,'betania@novosertao.org.br','betania@novosertao.org.br','Instituto Novo Sertão','202cb962ac59075b964b07152d234b70','+55 (86) 99498-6598','22.985.281/0001-11','Nossa caminhada no sertão teve início em 2012 quando José Carlos que ficou conhecido como Zé da Água conheceu Betânia do Piauí e seus muitos vilarejos carentes ao redor. Ele vinha da capital de Teresina que é aproximadamente 500 km até a pequena cidade sertaneja. As primeiras ações tiveram como foco a entrega de insumos emergenciais como água, comida e roupas para pessoas que viviam em extrema pobreza.\n\nNesse período o sertão passava por um período prolongado de seca, o pior dos últimos 50 anos, por isso esses insumos emergenciais eram muito importantes naquele momento.\n\nPorém, depois de pouco tempo nessas ações emergenciais José e os demais amigos que apoiavam as ações perceberam que essas atividades não tinham o poder de mudar por completo a realidade de miséria e falta de esperança que vivenciamos no sertão, foi então que em 2015 juntamos amigos e parceiros que compartilham dos meus sonhos e ideias para uma transformação verdadeira no sertão.','64753000','PI','Betânia Do Piaui','Av. José Inocéncio','451','Centro','Empresa','-40.7960634','-8.1458947','uploads/ongs/71/icone/71.jpg','https://www.novosertao.org.br/','uploads/ongs/71/banner/71.jpg','22985281000111',0,NULL,1,1),(72,'centrocidadania@org.br','centrocidadania@org.br','Centro Cidadania','202cb962ac59075b964b07152d234b70','+55 (83) 99820-2046','07.086.359/0001-72','Nossa caminhada no sertão teve início em 2012 quando José Carlos que ficou conhecido como Zé da Água conheceu Betânia do Piauí e seus muitos vilarejos carentes ao redor. Ele vinha da capital de Teresina que é aproximadamente 500 km até a pequena cidade sertaneja. As primeiras ações tiveram como foco a entrega de insumos emergenciais como água, comida e roupas para pessoas que viviam em extrema pobreza.\n\nNesse período o sertão passava por um período prolongado de seca, o pior dos últimos 50 anos, por isso esses insumos emergenciais eram muito importantes naquele momento.\n\nPorém, depois de pouco tempo nessas ações emergenciais José e os demais amigos que apoiavam as ações perceberam que essas atividades não tinham o poder de mudar por completo a realidade de miséria e falta de esperança que vivenciamos no sertão, foi então que em 2015 juntamos amigos e parceiros que compartilham dos meus sonhos e ideias para uma transformação verdadeira no sertão.\n\nA partir dessa premissa de transformaçã','58737000','PB','Maturéia','Sítio Otávio','01','Zona Rural','Casa','-37.3517553','-7.2661879','uploads/ongs/72/icone/72.jpg','https://centrocidadania.org/','uploads/ongs/72/banner/72.jpg','+5513991217101',0,NULL,1,1),(73,'unidospelavida@org.br','unidospelavida@org.br','Unidos Pela Vida','202cb962ac59075b964b07152d234b70','+55 (41) 99630-0022','14.850.355/0001-84','Fundado em 2011, o Unidos pela Vida – Instituto Brasileiro de Atenção à Fibrose Cística é uma organização social sem fins lucrativos com sede em Curitiba (PR) e atuação nacional que tem como missão defender que pessoas com fibrose cística no Brasil tenham conhecimento sobre sua saúde e direitos, equidade no acesso ao diagnóstico precoce e aos melhores tratamentos, contribuindo para melhora na qualidade de vida.','80420130','PR','Curitiba','Rua Francisco Rocha','198','Batel','Casa','-49.2881931','-25.4437664','uploads/ongs/73/icone/73.jpg','https://unidospelavida.org.br/','uploads/ongs/73/banner/73.jpg','28229013000156',0,NULL,1,1),(74,'amigosdobem@org','contato.amigosdobem@org','Amigos do Bem','202cb962ac59075b964b07152d234b70','+55 (11) 3019 0107','22.134.358/0001-40','O nosso trabalho começou em 1993, com um pequeno grupo de amigos, liderado por Alcione Albanesi. Hoje, somos um dos maiores projetos sociais do país e atendemos, regularmente, a mais de 150 mil pessoas no sertão de Alagoas, de Pernambuco e do Ceará.\n\nPromovemos a transformação de milhares de vidas por meio de projetos contínuos de educação, geração de renda e acesso à água, moradia e saúde. Estamos rompendo um ciclo secular de miséria no sertão. Com oportunidades, mais de 10 mil crianças e jovens já enxergam um futuro diferente.','03350005','SP','São Paulo','R. Dr Gabriel de Resende','122','Vila Invernada','Prédio','-46.5680622','-23.5715807','uploads/ongs/74/icone/74.jpg','https://amigosdobem.org/','uploads/ongs/74/banner/74.jpg','b0bb5add-d81d-441c-9fb6-ac55cf7cd8c6',0,NULL,1,1),(75,'lixozerobs@lixozerobs.org','contato@santoslixozero.org','Lixo Zero Baixada Santista','202cb962ac59075b964b07152d234b70','+55 (13) 98123-4195','33.978.003/0001-53','O Instituto Lixo Zero - Baixada Santista (ILZ-BS) é uma Organização da Sociedade Civil, sem fins lucrativos, cujo objetivo é despertar a consciência ambiental, a mudança de atitude e transformar a cultura do “lixo” na cultura do recurso, do cuidado com o uso dos recursos naturais e seus impactos para as presentes e futuras gerações..\n\nSeguindo os passos do movimento Zero Waste e do Instituto Lixo Zero Brasil, o ILZ-BS vem, desde 2017, realizando ações como: palestras, oficinas, cine-debates, rodas de conversa, fóruns, semanas lixo zero, projetos como o Escola Lixo Zero, o Festival Oceano, entre outras.','03350005','SP','São Paulo','R. Dr Gabriel de Resende','122','Vila Invernada','Prédio','-46.5680622','-23.5715807','uploads/ongs/75/icone/75.jpg','https://lixozerobs.org.br/','uploads/ongs/75/banner/75.jpg','+5513991217101',0,NULL,1,1),(76,'maternizar@maternizar.com.br','maternizar@maternizar.com.br','Maternizar','202cb962ac59075b964b07152d234b70','+55 (13) 98860-9345','33.978.003/0001-53','O Maternizar - Grupo de apoio à adoção de São Vicente é uma Organização não Governamental, criada em 2007, filiada à Associação Nacional dos Grupos de Apoio à Adoção (ANGAAD).\n\nTem como objetivo esclarecer, divulgar, estimular a adoção legal, segura e para sempre. Atua na promoção do direito à convivência familiar e comunitária de crianças e adolescentes.','11310200','SP','São Vincente','Av. Capitão-Mor Aguiar','697','Centro','Sala 1','-46.3944555','-23.9651407','uploads/ongs/76/icone/76.jpg','https://www.instagram.com/maternizar_gaa/','uploads/ongs/76/banner/76.jpg','17238267000114',0,NULL,1,1),(77,'comunicacao@icrescer.org.br','comunicacao@icrescer.org.br','Instituto Crescer','202cb962ac59075b964b07152d234b70','+55 (11) 4550-3910','05.763.528/0001-36','Estabelecemos parcerias duradouras que vão ao encontro dos valores e necessidades estratégicas de cada organização, auxiliando no desenvolvimento de projetos que ajudam a atingir os Objetivos de Desenvolvimento Sustentáveis (ODSs) da Agenda 2030 da ONU, bem como potencializam o ESG das corporações.','04013043','SP','São Paulo','R. Cubatão','929','Vila Mariana','Conjunto 101','-46.723989','-23.5799228','uploads/ongs/77/icone/77.jpg','https://institutocrescer.org.br/','uploads/ongs/77/banner/77.jpg','+5513991217101',0,NULL,1,1),(78,'semearecrescer@gmail.com','semearecrescer@gmail.com','Semear e Crescer','202cb962ac59075b964b07152d234b70','+55 (13) 3034-2719','24.742.906/0001-40','Em 2016 a Talita, como psicopedagoga e mãe do Eros, garoto 11 anos diagnosticado com autismo, teve a ideia de montar uma clínica popular em Praia Grande -SP (litoral sul de São Paulo), porém depois optou por fazer uma ONG.\n\nNo mesmo ano (2016) a Carol (que é advogada e também é mãe de uma criança autista) chegou no litoral de São Paulo e logo procurou por uma instituição de referência para o tratamento do filho e assim encontrou a SEMEAR.\n\nNo dia da matrícula a Talita chamou Carol para fazer parte da equipe. Em 2017 a Talita passou em um concurso e deixou a cidade, e então a Carol passou a assumir a presidência da ONG.\n\nSemear e Crescer, uma Associação que está fazendo a diferença em Praia Grande. Profissionais de diversas áreas realizam trabalhos voluntários com crianças autistas em Praia Grande.','11700470','SP','Praia Grande','R. Brg. José Ferreira','000','Canto do Forte','Casa','-46.3993967','-24.0079271','uploads/ongs/78/icone/78.jpg','https://semear-e-crescer.ueniweb.com/','uploads/ongs/78/banner/78.jpg','+5513991217101',0,NULL,1,1),(79,'sinproepdf@sinproepdf.org.br','contato.sinproepdf@sinproepdf.org.br','Sinproep','202cb962ac59075b964b07152d234b70','+55 (61) 3321-0042','50.270.172/0001-53','No dia 22 de outubro de 2005, a Comissão Pró-Fundação do Sindicato dos Professores em Estabelecimento Particulares de Ensino do Distrito Federal (Sinproep), composta pelos professores Rodrigo Pereira de Paula, Izac Antonio de Oliveira, Antonio de Lisboa Amâncio Vale, e pelo presidente da Federação Interestadual dos Trabalhadores em Estabelecimentos de Ensino (Fitee), Edson de Paula Lima, deu início à assembléia geral extraordinária de fundação do Sinproep.','70610971','DF','Brasilia','Setor de Indústrias Gráficas Sul Quadra 03','03','St. Sudoeste','Bloco C, S/n - 50','-46.723989','-23.5799228','uploads/ongs/79/icone/79.jpg','https://www.sinproepdf.org.br/','uploads/ongs/79/banner/79.jpg','+5513991217101',0,NULL,1,1),(80,'acaodacidadania@acaodacidadania.org.br','contato@acaodacidadania.org.br','Ação da Cidadania','202cb962ac59075b964b07152d234b70','+55 (21) 2233-7460','50.270.172/0001-53','Fundada pelo sociólogo Herbert de Souza, o Betinho, a Ação da Cidadania nasceu em 1993, formando uma imensa rede de mobilização de alcance nacional para ajudar 32 milhões de brasileiros que, segundo dados do Ipea, estavam abaixo da linha da pobreza. Criada no auge do Movimento pela Ética na Política, a Ação da Cidadania contra a Fome, a Miséria e pela Vida se transformou no movimento social mais reconhecido do Brasil. Seu principal eixo de atuação é uma extensa rede de mobilização formada por comitês locais da sociedade civil organizada, em sua maioria compostos por lideranças comunitárias, mas com participação de todos os setores sociais.','20220325','RJ','Rio de Janeiro','R. da Gamboa','246','Santo Cristo','','-43.1982423','-22.897638','uploads/ongs/80/icone/80.jpg','https://www.acaodacidadania.org.br','uploads/ongs/80/banner/80.jpg','+5513991217101',0,NULL,1,1),(81,'alisson.r.santos92@gmail.com',NULL,'Alisson Ramos','202cb962ac59075b964b07152d234b70','+55 (13)997532875','478.971.706-07',NULL,'11538030','SP','Cubatão','Dos Girassóis','340','Vila Natal','Casa','-46.4208663','-23.8844644',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(82,'onggenerosidade@gmail.com','generosidade@gmail.com','Generosidade','202cb962ac59075b964b07152d234b70','+55 (13) 99765-4763','12.890.123/0001-00','O projeto nasceu com um grupo de amigos que tinham como objetivo auxiliar no combate à fome, a desigualdade e na luta pelas vidas, sem qualquer pré-conceito de idade e gêneros. Nossos principais valores são: amor, igualdade, respeito, caridade, empatia e generosidade.','11075550','SP','Santos','Rua Dom Pedro I','32','Vila Belmiro',NULL,'-46.3390771','-23.95189142','uploads/ongs/82/icone/82.jpg','','uploads/ongs/82/banner/82.jpg','+5513991217101',0,NULL,0,1),(83,'contato@ongvivabicho.com.br','contato@ongvivabicho.com.br','Viva Bicho','202cb962ac59075b964b07152d234b70','+55 (13) 99611-5779','04.024.684/0001-12','Idealizada por protetores, a ONG Viva Bicho preza pela preservação dos animais.','11015130','SP','Santos','R. João Guerra','319','Macuco','','-46.3229526','-23.9519144','uploads/ongs/83/icone/83.jpg','http://ongvivabicho.com.br/','uploads/ongs/83/banner/83.jpg','04024684000112',0,NULL,1,1),(84,'cennin@gmail.com','cennin@gmail.com','Centro Integrado de Assistência a Pessoas com Câncer - CENIN','202cb962ac59075b964b07152d234b70','+55 (13) 3202-4700','21.370.103/0001-13','Instituição sem fins lucrativos que atua na na luta contra o câncer na Baixada Santista.','11075350','SP','Santos','R. Monsenhor Paula Rodrigues','73','Encruzilhada',NULL,'-46.33012783355661','-23.95102119852355','uploads/ongs/84/icone/84.jpg','https://cenin.org.br/','uploads/ongs/84/banner/84.jpg','+551332024700',1,NULL,1,1),(85,'ongpatinhasquebrilham@gmail.com','ongpatinhasquebrilham@gmail.com','Patinhas que Brilham','202cb962ac59075b964b07152d234b70','+55 (13) 99783-5737','30.851.251/0001-40','Somos uma Ong formada por pessoas voltadas a causa animal e realmente amamos o que fazemos! Na medida do possível procuramos ajudar o maior número de animais que estejam em estado de vulnerabilidade. Resgatamos, tratamos, cuidamos, castramos e preparamos para adoção responsável. E o resultado são milhares de vidas preciosas que tiveram uma segunda chance e hoje vivem em seus lares com muito amor, carinho, panos fofos e barriguinhas sempre cheias. Faça parte desse movimente em prol dos animais, sua ajuda é muito importante!','11070103','SP','Santos','R. Carvalho de Mendonça','670','Marapé',NULL,'-46.345920104720584','-23.955170933108494','uploads/ongs/85/icone/85.jpg','https://www.ongpatinhasquebrilham.com/','uploads/ongs/85/banner/85.jpg','30851251000140',0,NULL,1,1),(91,'teste@gmail.com',NULL,'raphael teste','202cb962ac59075b964b07152d234b70','+55 (13) 12313-2131','321.341.321-31',NULL,'11075200','SP','Santos','Rua Lucas Fortunato','11','Vila Mathias','até 119/120','-46.3259472','-23.9457658',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(92,'atendimento@vidasrecicladas.org','atendimento@vidasrecicladas.org','Vidas Recicladas','202cb962ac59075b964b07152d234b70','+55(13)3016-9727','08.706.506/0001-22','A Organização Não Governamental Vidas Recicladas nasceu em 2004 no intuito de assistir a comunidades carentes, pessoas e famílias em situação de rua ou risco, para que todos tenham condições de interagir com os demais setores da sociedade. Trabalhamos para incluir e solidificar conceitos de cidadania, suprir necessidades e dar condições de vida iguais e justas a todos os municípios atuantes, através de relações de solidariedade na busca de igualdade, justiça e amor ao próximo.','11015010','SP','Santos','R. Campos Mello','157','Vila Matias','508','-46.319922133556894','-23.94757949434016','uploads/ongs/92/icone/92.jpg','https://vidasrecicladas.org','uploads/ongs/92/banner/92.jpg','+55(13)3016-9727',0,NULL,0,1),(93,'felicelaura847@gmail.com',NULL,'Laura Felice','202cb962ac59075b964b07152d234b70','(13) 98858-4852','548.160.458-21',NULL,'11040010','SP','Santos','Rua Alexandre Fleming','528','Aparecida','52','-46.3096941','-23.9728853',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(94,'isadorassumpcao@gmail.com',NULL,'isadora','202cb962ac59075b964b07152d234b70','(13) 99129-1678','535.745.418-30',NULL,'11089000','SP','Santos','Avenida Jovino de Mello','1106','Santa Maria','até 99998 - lado par','-46.3770012','-23.9387944',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(95,'guieguganegrao@gmail.com',NULL,'Gustavo Negrão Vilaronga','202cb962ac59075b964b07152d234b70','(13) 99125-5771','555.306.248-98',NULL,'11070101','SP','Santos','Rua Doutor Carvalho de Mendonça','395','Vila Belmiro','de 211/212 a 423/424','-46.3363734','-23.9536358',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(96,'bbinho071@gmail.com',NULL,'Fabio maia','202cb962ac59075b964b07152d234b70','(13) 99753-2875','545.545.465-46',NULL,'11349090','SP','São Vicente','Praça Cento e Vinte e Oito','9','Conjunto Residencial Humaitá','casa','-46.4516315','-23.9512796',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(97,'filipi@etec.gov.com',NULL,'Filipi','202cb962ac59075b964b07152d234b70','(13) 92892-9329','928.328.388-23',NULL,'11365020','SP','São Vicente','Rua Graciliano Ramos','508','Vila Jockei Clube','ap.2','-46.3913372','-23.9458961',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(98,'joaogabriel@gmail.com',NULL,'joao gabriel','202cb962ac59075b964b07152d234b70','(13) 99186-9264','242.534.234-01',NULL,'11070010','SP','Santos','Rua Alfredo Albertini','63','Marapé','até 199/200','-46.3461449','-23.9522242',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(99,'nsdbferreira@gmail.com',NULL,'Naomy','202cb962ac59075b964b07152d234b70','(13) 99655-7885','536.027.748-30',NULL,'11432000','SP','Guarujá','Rua Funchal','344','Jardim Santa Maria','Casa','-46.2769002','-23.9905799',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(100,'joaovitorsq.jvsq@gmail.com',NULL,'Joao','202cb962ac59075b964b07152d234b70','(13) 99795-3405','333.333.333-39',NULL,'11045200','SP','Santos','Avenida Siqueira Campos','24','Boqueirão','de 288 ao fim - lado par','-46.3107273','-23.9603919',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(101,'siqueirasantos100@gmail.com',NULL,'João Pedro','202cb962ac59075b964b07152d234b70','(13) 99126-6888','312.312.312-31',NULL,'11360555','SP','São Vicente','Rua Marcia Cristina Christol Brandão Luz','13','Vila Jockei Clube','Casa','-46.3918807','-23.9386839',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(102,'eliscardosoantolin@gmail.com',NULL,'Elis Antolin ','202cb962ac59075b964b07152d234b70','(13) 99193-3974','396.011.088-07',NULL,'11070210','SP','Santos','Rua Marechal José Olintho de Carvalho','18','Vila Belmiro','53','-46.3402538','-23.9488085',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(103,'yurirs@email.com',NULL,'yuri','202cb962ac59075b964b07152d234b70','99375642','1121686153',NULL,'11538030','SP','Cubatão','Rua dos Girassóis','23','Vila Natal','Casa','-46.4322775','-23.8977332',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(104,'manuolivercam@gmail.com',NULL,'Manuela Campos','202cb962ac59075b964b07152d234b70','(13) 99636-9148','475.727.458-06',NULL,'11340180','SP','São Vicente','Rua General Mário Hermes da Fonseca','535','Esplanada dos Barreiros','casa','-46.4083592','-23.9595773',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(105,'ricardo08jr@hotmail.com',NULL,'Ricardo Matos','202cb962ac59075b964b07152d234b70','(13) 98865-4001','432.081.538-64',NULL,'11082100','SP','Santos','Avenida Santo Antônio do Valongo','1511','Morro São Bento','casa','-46.3408968','-23.9367523',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(106,'thekingoflaurs@gmail.com',NULL,'Miguel Anderson Dos Santos Cunha','202cb962ac59075b964b07152d234b70','(13) 99110-9585','539.271.168-58',NULL,'11355250','SP','São Vicente','Rua Cuiabá','36','Vila Nossa Senhora de Fátima','Casa','-46.4037037','-23.9563782',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(108,'fabinhopiccoli@yahoo.com',NULL,'Fabin','202cb962ac59075b964b07152d234b70','(13) 99742-6811','470.954.348-88',NULL,'11075672','SP','Santos','Rua Carlos Gomes','269','Marapé','de 233/234 ao fim','-46.3467327','-23.9585495',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(109,'raphaelresende10@gmail.com',NULL,'Raphael Resende','202cb962ac59075b964b07152d234b70','(13) 98841-2917','545.077.128-23',NULL,'11020002','SP','Santos','Avenida Affonso Penna','462','Aparecida','apto 21','-46.3055248','-23.969002',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(110,'afonsoalmeidaa@gmail.com',NULL,'Afonso','202cb962ac59075b964b07152d234b70','(12) 34565-5555','123456789',NULL,'11349190','SP','São Vicente','Rua Alfredo das Neves','304','Conjunto Residencial Humaitá','Casa','-46.4600214','-23.9505095',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(111,'dragonmine00200202@gmail.com',NULL,'Felipe Kenji','202cb962ac59075b964b07152d234b70','(13) 99177-1936','338.932.989-38',NULL,'11070070','SP','Santos','Rua Professor Tarquínio Silva','20','Marapé','Apto. 113','-46.3458451','-23.9596511',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(113,'diogocirigliano@gmail.com',NULL,'Diogo','202cb962ac59075b964b07152d234b70','(13) 99753-2875','535.745.418-78',NULL,'11040010','SP','Santos','Rua Alexandre Fleming','528','Aparecida','53','-46.3096941','-23.9728853',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(114,'alexandermartinslemos@gmail.com',NULL,'Alexander Martins','202cb962ac59075b964b07152d234b70','(13) 98225-8327','380.635.678-54',NULL,'11040260','SP','Santos','Rua Ministro João Mendes','216','Embaré','lado par','-46.3130369','-23.9732275',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(115,'proffreddy@gmail.com',NULL,'Freddy Justo','202cb962ac59075b964b07152d234b70','(13) 99998-7878','999.999.999-99',NULL,'11040141','SP','Santos','Rua Benjamin Constant','252','Embaré','33','-46.3129662','-23.9661975',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(116,'exemplo@gmail.com',NULL,'Laura Felice','202cb962ac59075b964b07152d234b70','(11) 98245-5752','555306248',NULL,'11346120','SP','São Vicente','Rua Antônio Ferreira e Silva','160','Parque das Bandeiras','Casa','-46.4895879','-23.9806496',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(117,'kaikelemig@gmail.com',NULL,'Kaike Leimig','202cb962ac59075b964b07152d234b70','(13) 98143-4783','4261847384',NULL,'11070410','SP','Santos','Rua Hércules Florence','22','Marapé','casa','-46.3499285','-23.9617686',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(118,'gabi.negrao21@gmail.com',NULL,'Gabi','202cb962ac59075b964b07152d234b70','(13) 99759-0182','507.078.388-27',NULL,'11070101','SP','Santos','Rua Doutor Carvalho de Mendonça','395','Vila Belmiro','de 211/212 a 423/424','','',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(147,'ma@gmail.com',NULL,'Marcella Oliveira','202cb962ac59075b964b07152d234b70','(13) 99807-2199','454.364.565-64',NULL,'11538105','SP','Cubatão','Rua Julio Amaro Ribeiro','44','Vila Natal','444','-46.4321888','-23.9006485',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(148,'kelvynmachado23@gmail.com',NULL,'Kelvyn','202cb962ac59075b964b07152d234b70','(13) 98882-9947','494.091.008-36',NULL,'11060400','SP','Santos','Avenida Marechal Deodoro','38','Gonzaga','até 99998 - lado par','-46.3336849','-23.9663532',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(149,'andersonvilaronga@gmail.com',NULL,'Anderson Vilaronga','202cb962ac59075b964b07152d234b70','(13) 99644-7127','133.824.908-89',NULL,'11070101','SP','Santos','Rua Doutor Carvalho de Mendonça','395','Vila Belmiro','31','-46.3363734','-23.9536358',NULL,NULL,NULL,NULL,0,NULL,NULL,0),(150,'diogogatao05@gmail.com',NULL,'Diogo Fidelis','c0c3dfad4479aafd5bae9b3674a6557c','(13) 99753-2875','452.353.535-35',NULL,'11538030','SP','CUBATAO','R. Dos girassóis','340','Vila Natal','casa','-46.4347382','-23.8994623',NULL,NULL,NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ValorMotivoDenuncia`
--

DROP TABLE IF EXISTS `ValorMotivoDenuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ValorMotivoDenuncia` (
  `id_motivoValorDenuncia` int(11) NOT NULL,
  `nm_valorMotivoDenuncia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_motivoValorDenuncia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
-- Table structure for table `codigos_recuperacao`
--

DROP TABLE IF EXISTS `codigos_recuperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigos_recuperacao` (
  `codigo` varchar(8) NOT NULL,
  `nm_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `email_UNIQUE` (`nm_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_recuperacao`
--

LOCK TABLES `codigos_recuperacao` WRITE;
/*!40000 ALTER TABLE `codigos_recuperacao` DISABLE KEYS */;
INSERT INTO `codigos_recuperacao` VALUES ('dc738d0b','alisson.r.santos92@gmail.com');
/*!40000 ALTER TABLE `codigos_recuperacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'umacausa'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularPorcentagemCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE FUNCTION `CalcularPorcentagemCampanha`(pCodigo int) RETURNS int(11)
begin
DECLARE perc int;
	select (sum(dc.qt_doado / c.qt_meta) * 100) into perc
from
    DoacaoCampanha dc 
		JOIN 
	Campanha c ON (c.id_campanha = dc.id_campanha) 
where
    c.id_campanha = pCodigo;
	
	if perc is null then 
		return 0;
	end if;

	return perc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SomarDoacoesCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE FUNCTION `SomarDoacoesCampanha`(pIdCampanha int) RETURNS int(11)
begin
    declare qtDoado int; 
	select sum(qt_doado) into qtDoado from DoacaoCampanha 
		where 
	id_campanha = pIdCampanha and
	ic_doacaoConfirmada = false;
	
	if qtDoado is null then 
		return 0;
	end if;

	return qtDoado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdcionarBannerCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AdcionarBannerCampanha`(pBanner varchar(500), pCodigo int)
begin
	update Campanha set img_bannerCampanha = pBanner where id_campanha = pCodigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionarFotoCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AdicionarFotoCampanha`()
begin
	declare codigo int;
	select max(id_campanha) into codigo from Campanha;
	Update Campanha set img_bannerCampanha = concat('uploads/campanhas/banners/', codigo ,'.jpg') where id_campanha = codigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionarFotoOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AdicionarFotoOng`()
begin
	declare codigo int;
	select max(id_usuario) into codigo from Usuario;
	Update Usuario set img_FotoPerfil = concat('uploads/ongs/', codigo ,'/icone/', codigo ,'.jpg') where id_usuario = codigo;
		Update Usuario set img_banner = concat('uploads/ongs/', codigo ,'/banner/', codigo ,'.jpg') where id_usuario = codigo;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionarFotosPerfilOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AdicionarFotosPerfilOng`(pIdOng int, pImgFotoPerfil varchar(400), pImgBanner varchar(400))
begin
	update Usuario set img_fotoPerfil = pImgFotoPerfil, img_banner = pImgBanner
		where id_usuario = pIdOng;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarDadosCampanha`(pIdCampanha int, pDsCampanha varchar(250), pDtFimEsperada datetime)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarDadosDivulgacaoItem`(pIdDivulgacao int, pDsItem varchar(250), pQtItem int, pNmItem varchar(250), pImgDivulgacaoItem varchar(4250), pIdEstadoItem int, pIdTipoItem int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarDadosDoador`( pIdUsuario int,pEmail VARCHAR(250), pNomeUsuario VARCHAR(100), pTelefone VARCHAR(20), pCep VARCHAR(10), pCidade VARCHAR(100), pRua VARCHAR(250), pNumero VARCHAR(5), pBairro VARCHAR(45), pComplemento VARCHAR(45), pLongitude VARCHAR(45), pLatitude VARCHAR(45))
begin
Update Usuario set nm_email = pEmail, nm_usuario= pNomeUsuario, nm_telefone = pTelefone, nm_cep = pCep, nm_cidade = pCidade, nm_rua = pRua, nm_numero = pNumero, nm_bairro = pBairro, nm_Complemento = pComplemento, nm_log = pLongitude, nm_lat = pLatitude where id_usuario = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarDadosOng`( pIdUsuario int,pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pTelefone varchar(20), pDescricao varchar(1000), pCep varchar(10), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLatitude varchar(45), pLongitude varchar(45), pWebSite varchar(250), pPix varchar(250), pPodeBuscar tinyint(1))
begin
Update Usuario set nm_email = pEmail, nm_emailContato = pEmailContato, nm_usuario= pNomeUsuario, nm_telefone = pTelefone, ds_usuario = pDescricao, nm_cep = pCep, nm_cidade = pCidade, nm_rua = pRua, nm_numero = pNumero, nm_bairro = pBairro, nm_Complemento = pComplemento, nm_log = pLongitude, nm_lat = pLatitude, nm_website = pWebSite, nm_pix = pPix, ic_podeBuscar = pPodeBuscar where id_usuario = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarDiaUsuario`(pIdUsuario int, PIdDia int, pHrInicio time, pHrFim time)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AlterarSenhaUsuario`(pEmail varchar(255), pNovaSenha varchar(45))
begin
        Update Usuario set nm_senha = md5(pNovaSenha) where nm_email = pEmail;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AprovarDenuncia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AprovarDenuncia`(pDenunciante int, pGravidade int, pDenunciado int, pData datetime)
BEGIN
UPDATE DenunciaUsuario SET ic_aprovada = 1 where id_usuarioDenunciado = pDenunciado and id_usuarioDenunciante = pDenunciante and dt_denuncia = pData;
CALL AtualizarDataDesbloqueioUsuario(pGravidade, pDenunciado);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AprovarDenunciaCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AprovarDenunciaCampanha`(pDenunciante int, pGravidade int, pDenunciado int, pData datetime)
BEGIN
DECLARE vUsuario int;
select id_usuario into vUsuario from Campanha where id_campanha = pDenunciado;
UPDATE DenunciaCampanha SET ic_aprovada = 1 where id_campanha = pDenunciado and id_usuario = pDenunciante and dt_denuncia = pData;
CALL AtualizarDataDesbloqueioUsuario(pGravidade, vUsuario);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AtualizarDataDesbloqueioUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `AtualizarDataDesbloqueioUsuario`(pGravidade int, pUsuario int)
begin
	if (pGravidade =1)
	then
		update Usuario set dt_desbloqueio = Now() + INTERVAL 15 DAY where id_usuario = pUsuario;
	end if;

	if (pGravidade =2)
	then
		update Usuario set dt_desbloqueio = Now() + INTERVAL 30 DAY where id_usuario = pUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `AtualizarQtdArrecadadaCampanha`(pIdCampanha int, pIdUsuario int, pQtdArrecadada double)
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
/*!50003 DROP PROCEDURE IF EXISTS `BanirUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BanirUsuario`(pUsuario int)
begin
if (select ic_banido from Usuario where id_usuario = pUsuario) then
	update Usuario set ic_banido = false where id_usuario = pUsuario;
else
	update Usuario set ic_banido = true where id_usuario = pUsuario;
end if;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarCampanha`(pIdCampanha int)
begin
	Select c.dt_fimCampanha, c.dt_fimEsperado, u.nm_usuario, c.id_usuario, c.img_bannerCampanha, c.nm_campanha, c.ds_campanha, SomarDoacoesCampanha(pIdCampanha) as qt_arrecadado, c.qt_meta, CalcularPorcentagemCampanha(pIdCampanha) as perc, ti.id_tipoItem,ti.nm_tipoItem 
		from Campanha c join TipoItem ti on (ti.id_tipoItem = c.id_tipoItem) join Usuario u ON(u.id_usuario = c.id_usuario)
	where id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarCodigoOngDaCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarCodigoOngDaCampanha`(pIdCampanha int)
begin
	select id_usuario from Campanha where id_campanha = pIdCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarComprovante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarComprovante`(pUsuario int, pOng int , pData datetime)
begin
select nm_comprovante from DoacaoMonetaria where id_usuarioDoador = pUsuario and id_usuarioOng = pOng and dt_doacao = pData;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosDoador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosDoador`(pIdUsuario int)
begin
Select nm_email, nm_usuario ,nm_telefone, nm_indentificacao, nm_cep, nm_estado, nm_cidade, nm_rua, nm_numero, nm_bairro, nm_complemento,nm_lat,nm_log from Usuario where id_tipoUsuario = 0 and id_usuario = pIdUsuario; 
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosCampanhas`(pIdUsuario int)
begin
	Select id_campanha, nm_campanha, dt_inicioCampanha, dt_fimEsperado, SomarDoacoesCampanha(id_campanha) as qt_arrecadado, dt_fimCampanha from Campanha where id_usuario = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosCampanhasProximas`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosCampanhasQuaseFinalizando`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosCampanhasQuaseProximas`(vIdUsuarioDoador int)
begin
Select nm_log, nm_lat from Usuario where id_usuario = vIdUsuarioDoador;
Select c.nm_campanha, c.id_campanha, c.img_bannerCampanha, c.qt_arrecadado, c.qt_meta,u.nm_log, u.nm_lat  from Campanha c join Usuario u ON (c.id_usuario = u.id_usuario)where dt_fimCampanha is null order by dt_fimEsperado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesCampanhaDoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesCampanhaDoUsuario`(pIdUsuario int)
begin
Select nm_comprovante, dc.id_doacao, c.id_campanha, c.nm_campanha, dc.qt_doado, date_format(dc.dt_doacaoCampanha, '%Y-%m-%d') as dt_doacaoCampanha, dc.ic_doacaoConfirmada, dc.dt_respostaOng, u.nm_usuario from DoacaoCampanha dc join Campanha c ON(c.id_campanha = dc.id_campanha) join Usuario u ON(c.id_usuario = u.id_usuario) where dc.id_usuario = pIdUsuario order by dt_doacao desc; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesCampanhaDoUsuarioPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesCampanhaDoUsuarioPesquisa`(pIdUsuario int, pPesquisa varchar(250))
begin
Select nm_comprovante, dc.id_doacao, c.id_campanha, c.nm_campanha, dc.qt_doado, date_format(dc.dt_doacaoCampanha, '%Y-%m-%d') as dt_doacaoCampanha, dc.ic_doacaoConfirmada, dc.dt_respostaOng, u.nm_usuario from DoacaoCampanha dc join Campanha c ON(c.id_campanha = dc.id_campanha) join Usuario u ON(c.id_usuario = u.id_usuario) where dc.id_usuario = pIdUsuario and u.nm_usuario like CONCAT('%', pPesquisa ,'%') order by dt_doacao desc; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesItemDoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesItemDoUsuario`(pIdUsuario int)
begin
Select di.id_doacao, u.nm_usuario, di.qt_item, date_format(di.dt_doacaoItem, '%Y-%m-%d') as dt_doacao, di.ic_doacaoConfirmada, di.dt_respostaOng, di.nm_item from DoacaoItem di join Usuario u ON(di.id_usuarioOng = u.id_usuario) where di.id_usuarioDoador = pIdUsuario order by dt_doacao desc; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesItemDoUsuarioPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesItemDoUsuarioPesquisa`(pIdUsuario int, pPesquisa varchar(250))
begin
Select di.id_doacao, u.nm_usuario, di.qt_item, date_format(di.dt_doacaoItem, '%Y-%m-%d') as dt_doacao, di.ic_doacaoConfirmada, di.dt_respostaOng, di.nm_item from DoacaoItem di join Usuario u ON(di.id_usuarioOng = u.id_usuario) where di.id_usuarioDoador = pIdUsuario and u.nm_usuario like CONCAT('%', pPesquisa ,'%') order by dt_doacao desc; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesMonetariaDoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesMonetariaDoUsuario`(pIdUsuario int)
begin
Select dm.nm_comprovante, dm.id_doacao, u.nm_usuario, dm.vl_monetario, date_format(dm.dt_doacao, '%Y-%m-%d') as dt_doacao, dm.ic_doacaoConfirmada, dm.dt_respostaOng from DoacaoMonetaria dm join Usuario u ON(dm.id_usuarioOng = u.id_usuario) where dm.id_usuarioDoador = pIdUsuario order by dt_doacao desc; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosMinimosColaboracoesMonetariaDoUsuarioPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosColaboracoesMonetariaDoUsuarioPesquisa`(pIdUsuario int, pPesquisa varchar(250))
begin
Select dm.nm_comprovante, dm.id_doacao, u.nm_usuario, dm.vl_monetario, date_format(dm.dt_doacao, '%Y-%m-%d') as dt_doacao, dm.ic_doacaoConfirmada, dm.dt_respostaOng from DoacaoMonetaria dm join Usuario u ON(dm.id_usuarioOng = u.id_usuario) where dm.id_usuarioDoador = pIdUsuario and u.nm_usuario like CONCAT('%', pPesquisa ,'%') order by dt_doacao desc; 
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosDivulgacoesItem`(pIdUsuario int)
begin

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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosOng`(pIdUsuario int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosMinimosOngs`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosOng`(pIdUsuario int)
begin
	Select 
	nm_usuario,
    nm_pix,
    nm_email,
    img_banner,
    img_fotoPerfil,
    ds_usuario,
    nm_emailContato,
    nm_telefone,
    nm_indentificacao,
    nm_website,
    nm_cep,
    nm_estado,
    nm_cidade,
    nm_rua,
    nm_numero,
    nm_bairro,
    nm_complemento,
    nm_lat,
    nm_log,
	ic_podeBuscar,
    GROUP_CONCAT(co.nm_categoria) AS nm_categorias,
    GROUP_CONCAT(co.id_categoriaOng) AS id_categorias
from
    Usuario u
    JOIN
        Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
    JOIN
        CategoriaOng co ON (co.id_categoriaOng = oco.id_categoriaOng)
	where 
		u.id_usuario = pIdUsuario and u.id_tipoUsuario = 1
    GROUP BY u.id_usuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDadosPixOngCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosPixOngCampanha`(pIdCampanha int)
begin
	select nm_pix, nm_usuario, nm_cidade from Campanha c
		Join Usuario u ON (u.id_usuario = c.id_usuario)
	where id_campanha = pIdCampanha;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDadosQrCodePixOng`(pIdUsuario int)
begin
	select id_usuario, nm_usuario, nm_pix, nm_cidade from Usuario 
		where id_usuario = pIdUsuario and id_tipoUsuario = 1; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDiasDisponiveisOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDiasDisponiveisOng`(pIdOng int)
begin
Select id_dia, DATE_FORMAT(hr_inicio, '%H:%i') as hr_inicio, DATE_FORMAT(hr_fim, '%H:%i') as hr_fim from Dia_Usuario where id_usuario = pIdOng;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDivulgacoesItem`(pIdDivulgacao int)
begin
 Select di.qt_item, di.ds_item, di.nm_item, di.img_divulgacaoItem, ei.nm_estadoItem from DivulgacaoItem di join EstadoItem ei ON(di.id_estadoItem = ei.id_estadoItem) where dt_fimDivulgacao is null and di.id_divulgacao = pIdDivulgacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesCampanhaItensConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesCampanhaItensConfirmadas`(pIdUsuarioOng int)
begin
Select 
	dc.id_doacao,
    u.nm_usuario,
    dc.dt_doacaoCampanha,
    dc.qt_doado,
	ti.nm_tipoItem,
    dc.id_campanha,
	dc.ic_doacaoConfirmada
from
    Campanha c
        join
	TipoItem ti ON(c.id_tipoitem = ti.id_tipoitem)
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
join
    Usuario u ON (u.id_usuario = dc.id_usuario)
where
     dc.dt_respostaOng is not null
		and c.id_usuario = pIdusuarioOng
       and c.id_tipoItem <> 0;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesCampanhaItensNaoConfirmadas`(pIdUsuarioOng int)
begin
Select 
	dc.id_doacao,
    u.nm_usuario,
    dc.dt_doacaoCampanha,
    dc.qt_doado,
	ti.nm_tipoItem,
    dc.id_campanha
from
    Campanha c
        join
	TipoItem ti ON(c.id_tipoitem = ti.id_tipoitem)
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
join
    Usuario u ON (u.id_usuario = dc.id_usuario)
where
     dc.ic_doacaoConfirmada = false
		and c.id_usuario = pIdusuarioOng
       and c.id_tipoItem <> 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesCampanhaMonetariaConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesCampanhaMonetariaConfirmadas`(pIdUsuarioOng int)
begin
Select 
	dc.id_doacao,
    u.nm_usuario,
    dc.dt_doacaoCampanha,
    dc.qt_doado,
    dc.id_campanha,
	dc.ic_doacaoConfirmada,
	nm_comprovante
from
    Campanha c
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
join
    Usuario u ON (u.id_usuario = dc.id_usuario)
where
     dc.dt_respostaOng is not null
		and c.id_usuario = pIdusuarioOng
        and c.id_tipoItem = 0;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesCampanhaMonetariaNaoConfirmadas`(pIdUsuarioOng int)
begin
Select 
	dc.id_doacao,
    u.nm_usuario,
    dc.dt_doacaoCampanha,
    dc.qt_doado,
    dc.id_campanha,
	nm_comprovante
from
    Campanha c
        join
    DoacaoCampanha dc ON (c.id_campanha = dc.id_campanha)
join
    Usuario u ON (u.id_usuario = dc.id_usuario)
where
     dc.ic_doacaoConfirmada = false
		and c.id_usuario = pIdusuarioOng
        and c.id_tipoItem = 0
		and dc.dt_respostaOng is null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesItensConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesItensConfirmadas`(pIdUsuario int)
begin
Select	di.dt_doacaoItem, di.id_doacao, di.ic_doacaoConfirmada, u.nm_usuario, di.dt_doacao, di.hr_doacao, di.nm_item, di.qt_item from DoacaoItem di join Usuario u ON(di.id_usuarioDoador = u.id_usuario) where di.dt_respostaOng is not null and id_usuarioOng = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesItensNaoConfirmadas`(pIdUsuario int)
begin
Select di.dt_doacaoItem, di.id_doacao, u.nm_usuario, di.dt_doacao, di.hr_doacao, di.nm_item, di.qt_item from DoacaoItem di join Usuario u ON(di.id_usuarioDoador = u.id_usuario) where di.dt_respostaOng is null and id_usuarioOng = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarDoacoesMonetariasConfirmadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesMonetariasConfirmadas`(pIdUsuario int)
begin
Select	dm.nm_comprovante, dm.id_doacao, dm.ic_doacaoConfirmada, u.nm_usuario, dm.dt_doacao, dm.vl_monetario from DoacaoMonetaria dm join Usuario u ON(dm.id_usuarioDoador = u.id_usuario) where dm.dt_respostaOng is not null and id_usuarioOng = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarDoacoesMonetariasNaoConfirmadas`(pIdUsuario int)
begin
Select dm.nm_comprovante, dm.id_doacao, u.nm_usuario, dm.dt_doacao, dm.vl_monetario from DoacaoMonetaria dm join Usuario u ON(dm.id_usuarioDoador = u.id_usuario) where dm.dt_respostaOng is null and id_usuarioOng = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarImagemCampanhaODS`(pIdCampanha int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarLocalizacaoDoador`(vIdUsuarioDoador int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarLocalizacaoUsuario`(pIdUsuario int)
begin
	select nm_log, nm_lat from Usuario where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarNovoCodigoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarNovoCodigoUsuario`()
begin
	select max(id_usuario) + 1 as id_usuario from Usuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarTiposItens` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarTiposItens`()
begin
Select * from TipoItem;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarTipoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarTipoUsuario`(pIdUsuario int)
begin
select id_tipoUsuario from Usuario where id_usuario = pIdUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarUltimaCampanhaAdcionada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarUltimaCampanhaAdcionada`()
begin
	SELECT max(id_campanha) as id_campanha FROM Campanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarUltimoCodigoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarUltimoCodigoUsuario`()
begin
	select max(id_usuario) as id_usuario from Usuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `BuscarUsuarioPeloEmail`(pEmail varchar(250))
begin
	select * from Usuario where nm_email = pEmail;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarCampanhaOds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarCampanhaOds`(pCampanha int, pOds int)
begin
IF NOT EXISTS (select * from Campanha_ODS where id_campanha =pCampanha and id_ODS = pOds)
then
	select auto_increment from information_schema.tables where table_name = 'Campanha_ODS' AND table_schema = 'umacausa';
	INSERT INTO Campanha_ODS values (pCampanha, pOds);
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarCategoriaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarCategoriaOng`(pIdUsuario int, pIdCategoria int)
begin
	insert into Ong_CategoriaOng values(pIdUsuario, pIdCategoria);
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDiasUsuario`(pIdUsuario int, pIdDia int, pHrInicio time, pHrFim time)
begin
IF NOT EXISTS (Select * from Dia_Usuario where id_usuario = pIdUsuario and id_dia = pIdDia) then
Insert into Dia_Usuario values (pIdUsuario, pIdDia, pHrInicio, pHrFim);
end if;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDivulgacaoItem`(pDsItem varchar(250), pQtItem int, pNmItem varchar(250), pDtDivulgacao datetime, pImgDivulgacaoItem varchar(4250), pIdEstadoItem int, pIdTipoItem int, pIdUsuario int)
begin
	Insert into DivulgacaoItem values(default, pDsItem, pQtItem, pNmItem, pDtDivulgacao, null, pImgDivulgacaoItem, pIdEstadoItem, pIdTipoItem, pIdUsuario);	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoacaoCampanhaItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDoacaoCampanhaItem`(pIdCampanha int, pIdUsuario int, pQtDoado varchar(45), pIdTipoEntrega int, pData date, pHora time, pNmItem varchar(250))
begin
	Insert into DoacaoCampanha values (pIdCampanha, pIdUsuario, now(), pQtDoado, false, null, default, pNmItem, pIdTipoEntrega, pHora, pData, null);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarDoacaoCampanhaMonetaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDoacaoCampanhaMonetaria`(pIdCampanha int, pIdUsuario int, pQtDoado varchar(45))
begin
	declare comprovante int;

	Insert into DoacaoCampanha values (pIdCampanha, pIdUsuario, now(), pQtDoado, false, null, default, null, null, null, null, null);

	select max(id_doacao) into comprovante from DoacaoCampanha;

	update DoacaoCampanha set nm_comprovante = CONCAT('/uploads/temp/comprovantesCampanha/', comprovante, '.jpg') where id_doacao = comprovante;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDoacaoItem`(pIdUsuarioDoador int, pIdUsuarioOng int, pNmItem varchar(250), pQtItem varchar(45), pIdTipoItem int, pIdTipoEntrega int, pDataDoacao date, pHoraDoacao time)
begin
	Insert into DoacaoItem values(pIdUsuarioDoador, pIdUsuarioOng, now(), pNmItem, pQtItem, false, pIdTipoItem, pIdTipoEntrega,pHoraDoacao,pDataDoacao, null, default);
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDoacaoMonetaria`(pIdUsuarioDoador int, pIdUsuarioOng int, pVlMonetario double)
begin
	declare comprovante int;

	Insert into DoacaoMonetaria values(pIdUsuarioDoador, pIdUsuarioOng, now(), false, pVlMonetario, '', default, null);

	select max(id_doacao) into comprovante from DoacaoMonetaria;

	update DoacaoMonetaria set nm_comprovante = CONCAT('/uploads/temp/comprovantes/', comprovante, '.jpg') where id_doacao = comprovante;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarDoador`(pEmail VARCHAR(250), pNomeUsuario VARCHAR(100), pSenha VARCHAR(45), pTelefone VARCHAR(20), pNomeIdentificacao VARCHAR(45), pCep VARCHAR(10), pEstado VARCHAR(45), pCidade VARCHAR(100), pRua VARCHAR(250), pNumero VARCHAR(5), pBairro VARCHAR(45), pComplemento VARCHAR(45), pLongitude VARCHAR(45), pLatitude VARCHAR(45))
begin
    Insert into Usuario values (default, pEmail, null, pNomeUsuario, md5(pSenha), pTelefone, pNomeIdentificacao, null, pCep, pEstado, pCidade, pRua, pNumero, pBairro, pComplemento, pLongitude, pLatitude, null, null, null, null, false, null, null, 0);
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarInteresseItem`(pIdDivulgacao int, pIdUsuarioOng int, pDtInteresseItem datetime, pDtBuscaItem datetime, pIdTipoentrega int)
begin
Insert into InteresseItem values(pIdDivulgacao, pIdUsuarioOng, null, pDtInteresseItem, pdtBuscaItem, false, pIdTipoEntrega);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarItemAceitoOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarItemAceitoOng`(pIdOng int, pIdItem int)
begin 
IF NOT EXISTS (select * from TipoItem_Ong where id_usuarioOng = pIdOng and id_tipoItem = pIdItem)
then
	insert into TipoItem_Ong values(pIdItem, pIdOng);
end if;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarOng`(pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pSenha varchar(45), pTelefone varchar(20), pNomeIdentificacao varchar(45), pDescricao varchar(1000), pCep varchar(10), pEstado varchar(45), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLongitude varchar(45), pLatitude varchar(45), pWebSite varchar(250), pPix varchar(250), pPodeBuscar bool)
begin
Insert into Usuario values (default, pEmail, pEmailContato, pNomeUsuario, md5(pSenha), pTelefone, pNomeIdentificacao, pDescricao, pCep, pEstado, pCidade, pRua, pNumero, pBairro, pComplemento, pLongitude, pLatitude, null, pWebSite, null, pPix, false, null, pPodeBuscar, 1);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CadastrarOngCategoriaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CadastrarOngCategoriaOng`(pIdUsuario int, pIdCategoria int)
begin
IF NOT EXISTS (select * from Ong_CategoriaOng where id_usuarioOng = pIdUsuario and id_categoriaOng = pIdCategoria)
then
insert into Ong_CategoriaOng values(pIdUsuario, pIdCategoria);
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRespostaDoacaoCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ConfirmarRespostaDoacaoCampanha`(pCodigo int, pSituacaoDoacao bool)
begin
Update DoacaoCampanha set dt_respostaOng = now(), ic_doacaoConfirmada = pSituacaoDoacao where id_doacao = pCodigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRespostaDoacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ConfirmarRespostaDoacaoItem`(pCodigo int, pSituacaoDoacao int)
begin
	Update DoacaoItem set ic_doacaoConfirmada = pSituacaoDoacao, dt_respostaOng = now() where id_doacao = pCodigo;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmarRespostaDoacaoMonetaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ConfirmarRespostaDoacaoMonetaria`(pCodigo int, pSituacaoDoacao int)
begin
	Update DoacaoMonetaria set ic_doacaoConfirmada = pSituacaoDoacao, dt_respostaOng = now() where id_doacao = pCodigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarDenunciasCampanhas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ConsultarDenunciasCampanhas`()
BEGIN
select 
	u.nm_usuario,
    c.nm_campanha as nm_denunciado,
    dc . *,
    mdc.nm_motivoDenuncia,
	mdc.id_motivoDenuncia,
	mtd.nm_valorMotivoDenuncia,
    mtd.id_motivoValorDenuncia
from
    DenunciaCampanha dc
        join
    Campanha c ON (dc.id_campanha = c.id_campanha)
		join
	Usuario u ON (dc.id_usuario = u.id_usuario)
        join
    MotivoDenunciaCampanha mdc ON (mdc.id_motivoDenuncia = dc.id_motivoDenuncia)
        join
    ValorMotivoDenuncia mtd ON (mdc.id_motivoValorDenuncia = mtd.id_motivoValorDenuncia) order by dt_denuncia ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarDenunciasUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ConsultarDenunciasUsuarios`()
BEGIN
select 
    u.nm_usuario as nm_denunciado,
    u2.nm_usuario as nm_denunciante,
    du . *,
	mdu.id_motivoValorDenuncia,
    mdu.nm_motivoDenuncia,
    mtd.nm_valorMotivoDenuncia
from
    DenunciaUsuario du
        join
    Usuario u ON (du.id_usuarioDenunciado = u.id_usuario)
        join
    Usuario u2 ON (du.id_usuarioDenunciante = u2.id_usuario)
        join
    MotivoDenunciaUsuario mdu ON (mdu.id_motivoDenuncia = du.id_motivoDenuncia)
        join
    ValorMotivoDenuncia mtd ON (mdu.id_motivoValorDenuncia = mtd.id_motivoValorDenuncia) order by dt_denuncia ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CriarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `CriarCampanha`(pNmCampanha varchar(250), pDsCampanha varchar(1000), pDtFimEsperada datetime, pQtMeta double, pImgBannerCampanha VARCHAR(500), pIdUsuario int, pIdTipoItem int)
begin
	Insert into Campanha values (default, pNmCampanha, pDsCampanha, curdate(), pDtFimEsperada, null, pQtMeta, 0, pImgBannerCampanha, pIdUsuario, pIdTipoItem);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletarCampanhaODS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DeletarCampanhaODS`(pCampanha int, pOds int)
begin
	DELETE FROM Campanha_ODS WHERE id_campanha = pCampanha and id_ODS = pODS;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletarDiaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DeletarDiaUsuario`(pIdUsuario int, pIdDia int)
begin
DELETE FROM Dia_Usuario WHERE id_usuario = pIdUsuario and id_dia = pIdDia;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletarOngCategoriaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DeletarOngCategoriaOng`(pIdUsuario int, pIdCategoria int)
begin
Delete from Ong_CategoriaOng where id_usuarioOng = pIdUsuario and id_categoriaOng = pIdCategoria;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletarTipoItemONg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DeletarTipoItemONg`(pIdUsuario int, pCodigoTipoItem int)
begin
Delete from TipoItem_Ong where id_usuarioOng = pIdUsuario and id_tipoItem = pCodigoTipoItem;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DenunciarCampanha`(pIdCampanha int, pDsDenuncia varchar(250), pIdUsuario int, pIdMotivoDenuncia int)
begin
	Insert into DenunciaCampanha values (pIdCampanha, now(), pDsDenuncia, pIdUsuario, pIdMotivoDenuncia, 0);
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `DenunciarUsuario`(pUsuarioDenunciado INT, pUsuarioDenunciante INT, pIdMotivoDenuncia int, pDsDenuncia VARCHAR(250))
begin
     Insert into DenunciaUsuario values (pUsuarioDenunciado, pUsuarioDenunciante, now(), pIdMotivoDenuncia, pDsDenuncia, 0);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditarCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `EditarCampanha`(pNome varchar(250), pDescricao varchar(1000), pMeta double, pDataFim datetime, pCodigo int)
begin
	UPDATE Campanha 
	SET nm_campanha = pNome, ds_campanha = pDescricao, qt_meta = pMeta,
	dt_fimEsperado = pDataFim
	WHERE id_campanha = pCodigo;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `EncerrarCampanha`(pIdCampanha int)
begin
	Update Campanha set dt_fimCampanha = now() where id_campanha = pIdCampanha;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `EncerrarDivulgacaoItem`(pDtFimDivulgacao datetime, pIdDivulgacao int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirCampanha`(pIdCampanha int)
begin
	Delete from Campanha_ODS where id_campanha = pIdCampanha;
	Delete from Campanha where id_campanha = pIdCampanha;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirCodigoExpirado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirCodigoExpirado`(pEmail varchar(255))
BEGIN
    DELETE FROM codigos_recuperacao WHERE TIMESTAMPADD(SECOND, tempo_ativo, data_criacao) <= NOW() and email = pEmail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirCodigosExpirados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirCodigosExpirados`(pEmail varchar(255))
BEGIN
    DELETE FROM codigos_recuperacao WHERE nm_email = pEmail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirDivulgacaoItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirDivulgacaoItem`(pIdDivulgacaoItem int)
begin
	Delete from DivulgacaoItem where id_divulgacao = pIdDivulgacaoItem;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExcluirOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirOng`(pIdUsuario int)
begin
		Delete from FotosOng where id_usuario = pIdUsuario;
		Delete from Dia_Usuario where id_usuario = pIdUsuario;
		Delete from TipoItem_Ong where id_usuarioOng = pIdUsuario;
		Delete from Ong_CategoriaOng where id_usuarioOng = pIdUsuario;
	    Delete from DoacaoMonetaria where id_usuarioDoador = pIdUsuario or id_usuarioOng = pIdUsuario;
        Delete from DoacaoItem where id_usuarioDoador = pIdUsuario or id_usuarioOng = pIdUsuario;
		Delete from DoacaoCampanha where id_usuario = pIdUsuario;
		Delete from Dia_Usuario where id_usuario = pIdUsuario;
		Delete from DenunciaUsuario where id_usuarioDenunciado = pIdUsuario or id_usuarioDenunciante = pIdUsuario;
		Delete from DenunciaCampanha where id_usuario = pIdUsuario;
		Delete from Campanha where id_usuario = pIdUsuario;
		Delete from Usuario where id_usuario = pIdUsuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ExcluirUsuario`(pSenhaDigitada varchar(45), pIdUsuario int)
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
/*!50003 DROP PROCEDURE IF EXISTS `GerarCodigoComprovante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `GerarCodigoComprovante`()
begin
	select max(id_doacao) as comprovante from DoacaoMonetaria;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GerarCodigoComprovanteCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `GerarCodigoComprovanteCampanha`()
begin
	select max(id_doacao) as comprovante from DoacaoCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GerarCodigoRecuperacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `GerarCodigoRecuperacao`(pEmail varchar(255))
begin
DECLARE codigo varchar(8);
SELECT SUBSTRING(UUID(), 1, 8) into codigo;
if not exists (select * from codigos_recuperacao where nm_email = pEmail) then
INSERT INTO codigos_recuperacao
	VALUES
	(
	codigo,
	lower(pEmail)
);
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GerarEstatisticaQtdDoacaos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `GerarEstatisticaQtdDoacaos`(pIdOng int)
begin
DECLARE doacaomonetaria int;
DECLARE doacaoitem int;
Select count(id_doacao) into doacaomonetaria from DoacaoMonetaria where id_usuarioOng = pIdOng;
Select count(id_doacao) into doacaoitem from DoacaoItem where id_usuarioOng = pIdOng;

select  doacaoitem;
Select count(dt_doacaoCampanha) as doacaoCampanha from DoacaoCampanha where id_usuario = pIdOng;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhaPorCategoria`(vIdCategoriaCampanha int,vTipoItem int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhas`(pValor INT)
begin
	DECLARE limite INT;
	select (20 * pValor) into limite;

	Select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
		 JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		c.dt_fimCampanha is null
			and u.dt_desbloqueio is null
			and u.ic_banido = 0
	order by nm_campanha
	limit 20 OFFSET limite;

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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasAcabando`()
begin
	select 
    c.id_campanha,
    c.nm_campanha,
    c.img_bannerCampanha,
    date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
    c.qt_arrecadado,
    c.qt_meta,
	c.id_tipoItem,
	ti.nm_tipoItem,
    CalcularPorcentagemCampanha(c.id_campanha) as perc
from
    Campanha c
        JOIN
    Usuario u ON (u.id_usuario = c.id_usuario)
		JOIN
    TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
where
    c.dt_fimEsperado between curdate() and date_add(curdate(), interval 1 month)
        and u.dt_desbloqueio is null
        and u.ic_banido = 0
	order by c.dt_fimEsperado;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasAleatorias`()
begin
	select 
    c.id_campanha,
    c.nm_campanha,
    c.img_bannerCampanha,
    date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
    c.qt_arrecadado,
    c.qt_meta,
	c.id_tipoItem,
	ti.nm_tipoItem,
    CalcularPorcentagemCampanha(c.id_campanha) as perc
from
    Campanha c
        JOIN
    Usuario o ON (o.id_usuario = c.id_usuario)
	   JOIN
    TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
where
    c.dt_fimCampanha is null
        and o.ic_banido = 0
        and o.dt_desbloqueio is null
order by RAND()
limit 20;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasItens` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasItens`( pValor int)
begin
DECLARE limite INT;
	select (20 * pValor) into limite;
select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		ti.id_tipoItem > 0
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
   order by c.dt_fimEsperado limit 20 OFFSET limite;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasMonetarias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasMonetarias`( pValor int)
begin
DECLARE limite INT;
	select (20 * pValor) into limite;
select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		ti.id_tipoItem = 0
		and c.dt_fimCampanha is null
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
order by c.dt_fimEsperado limit 20 OFFSET limite;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasPesquisa`(pPesquisa varchar(250))
begin
    select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		c.nm_campanha like CONCAT('%', pPesquisa ,'%')
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
		and dt_fimCampanha is null
   order by c.dt_fimEsperado;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasPorData`(vValor int, vIcData int)
begin
DECLARE limite INT;
	select (20 * vValor) into limite;
if vIcData = 0 then
select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		ti.id_tipoItem > 0
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
   order by c.dt_fimEsperado ASC limit 20 OFFSET limite;
else
select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		ti.id_tipoItem > 0
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
   order by c.dt_fimEsperado DESC limit 20 OFFSET limite;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarCampanhasPorTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCampanhasPorTipo`( pValor int, pTipo int)
begin
DECLARE limite INT;
	select (20 * pValor) into limite;
select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		ti.id_tipoItem = pTipo
		and c.dt_fimCampanha is null
	    and u.dt_desbloqueio is null
		and u.ic_banido = 0
   order by c.dt_fimEsperado limit 20 OFFSET limite;

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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarCategoriasOng`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDadosMinimosCampanhasDaOng`(pIdUsuario int)
begin
	select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
		from
	    Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
		 JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		c.id_usuario = pIdUsuario and dt_fimCampanha is null order by dt_inicioCampanha;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDadosMinimosCampanhasFinalizadasDaOng`(pIdUsuario int)
begin
	select 
		c.id_campanha,
		c.nm_campanha,
		c.img_bannerCampanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.qt_meta,
		c.id_tipoItem,
		ti.nm_tipoItem,
		CalcularPorcentagemCampanha(c.id_campanha) as perc
			from
	    Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
		 JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		c.id_usuario = pIdUsuario and dt_fimCampanha is not null order by dt_inicioCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarDias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDias`()
begin
	select * from Dia;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDivulgacoes`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDivulgacoesItens`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDivulgacoesItensPorCategoria`(pIdCategoria int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDivulgacoesItensPorData`(pIdData int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarDivulgacoesItensPorEstado`(pIdEstado int)
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarFotosOng`(pCodigo int)
begin
	select id_fotoOng, nm_refFoto from FotosOng where id_usuario = pCodigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarIDCategoriaDaOng` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarIDCategoriaDaOng`(pIdUsuario int)
begin
	Select id_categoriaOng from Ong_CategoriaOng where id_usuarioOng = pIdUsuario; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarIndiceCampanhas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarIndiceCampanhas`()
begin
Select CEILING(Count(id_campanha) / 20) as indice from Campanha c JOIN Usuario u ON (u.id_usuario = c.id_usuario) where c.dt_fimCampanha is null and	
		  u.dt_desbloqueio is null and
		  u.ic_banido = 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarIndiceOngs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarIndiceOngs`()
begin
Select CEILING(Count(id_usuario) / 15) as indice from Usuario where id_tipoUsuario = 1;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarItensAceitosOng`(pIdUsuario int)
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
/*!50003 DROP PROCEDURE IF EXISTS `ListarMinhasCampanhasPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarMinhasCampanhasPesquisa`(pPesquisa varchar(250), pIdUsuario int)
begin
    select 
		c.id_campanha,
		c.nm_campanha,
		date_format(date(c.dt_fimEsperado), '%d/%m/%Y') as dt_fimEsperado,
		c.qt_arrecadado,
		c.dt_inicioCampanha,
		c.dt_fimCampanha
	from
		Campanha c
			JOIN
		Usuario u ON (u.id_usuario = c.id_usuario)
			JOIN
		TipoItem ti ON (ti.id_tipoItem = c.id_tipoItem)
	where
		c.nm_campanha like CONCAT('%', pPesquisa ,'%')
		and c.id_usuario = pIdUsuario 
	    order by dt_inicioCampanha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarMotivosDenunciaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarMotivosDenunciaUsuario`()
begin
	select * from MotivoDenunciaUsuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOds`()
begin
	select * from ODS;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngProximas`(latitudeUsuario varchar(45), longitudeUsuario varchar(45))
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
where nm_lat <> latitudeUsuario and
      nm_log <> longitudeUsuario and 
 	  id_tipoUsuario = 1 and 
	  dt_desbloqueio is null and 
	  ic_banido = 0
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngs`(pValor int)
begin
DECLARE limite INT;
	select (15 * pValor) into limite;
	Select 
    u.id_usuario,
    u.nm_usuario,
    u.ds_usuario,
    u.img_fotoPerfil,
    group_concat(co.nm_categoria) as nm_categorias,
	group_concat(co.id_categoriaOng) as id_categorias
	from
		Usuario u
			join
		Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
			join
		CategoriaOng co ON (co.id_categoriaOng = oco.id_categoriaOng)
	where
		id_tipoUsuario = 1 and ic_banido = 0
			and dt_desbloqueio is null
	group by u.id_usuario
	order by nm_usuario
	limit 15 OFFSET limite; 

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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsAleatorias`()
begin
	select id_usuario, nm_usuario, img_fotoPerfil from Usuario 
		where id_tipoUsuario = 1 and dt_desbloqueio is null and ic_banido = 0
	order by RAND() limit 20; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsPesquisa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsPesquisa`(pPesquisa varchar(250))
begin
	Select 
    u.id_usuario,
    u.nm_usuario,
    u.ds_usuario,
    u.img_fotoPerfil,
    group_concat(co.nm_categoria) as nm_categorias,
	group_concat(co.id_categoriaOng) as id_categorias
	from
		Usuario u
			join
		Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
			join
		CategoriaOng co ON (co.id_categoriaOng = oco.id_categoriaOng)
	where
		nm_usuario like CONCAT('%', pPesquisa, '%') and 
		id_tipoUsuario = 1 and 
		ic_banido = 0 and 
		dt_desbloqueio is null
	group by u.id_usuario
	order by nm_usuario;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsPorCategoria`(pCategoria int, pValor int)
begin
    DECLARE limite INT;
    SELECT (15 * pValor) INTO limite;
    SELECT
        u.id_usuario,
        u.nm_usuario,
        u.ds_usuario,
        u.img_fotoPerfil,
        GROUP_CONCAT(co.nm_categoria) AS nm_categorias,
        GROUP_CONCAT(co.id_categoriaOng) AS id_categorias
    FROM
        Usuario u
    JOIN
        Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
    JOIN
        CategoriaOng co ON (co.id_categoriaOng = oco.id_categoriaOng)
    WHERE
        co.id_categoriaOng = pCategoria
        AND u.id_tipoUsuario = 1
        AND u.dt_desbloqueio IS NULL
        AND u.ic_banido = 0
    GROUP BY u.id_usuario
    ORDER BY nm_usuario
    LIMIT 15 OFFSET limite;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsPorEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsPorEstado`(pValor int, pEstado varchar(45))
begin
	DECLARE limite INT;
		select (15 * pValor) into limite;
		Select 
		u.id_usuario,
		u.nm_usuario,
		u.ds_usuario,
		u.img_fotoPerfil,
		group_concat(co.nm_categoria) as nm_categorias,
		group_concat(co.id_categoriaOng) as id_categorias
	from
		Usuario u
			join
		Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
			join
		CategoriaOng co ON (oco.id_categoriaOng = co.id_categoriaOng)
	where
		id_tipoUsuario = 1 and ic_banido = 0
			and dt_desbloqueio is null
			and nm_estado = pEstado
	group by u.id_usuario
	order by nm_usuario
	limit 15 OFFSET limite; 
	
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsPorTipoItem`(vTipoItem int)
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
/*!50003 DROP PROCEDURE IF EXISTS `ListarOngsTeste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarOngsTeste`(pValor int)
begin
DECLARE limite INT;
	select (15 * pValor) into limite;
	Select 
    u.id_usuario,
    u.nm_usuario,
    u.ds_usuario,
    u.img_fotoPerfil,
    co.nm_categoria,
    group_concat(co.nm_categoria) as categorias
	from
		Usuario u
			join
		Ong_CategoriaOng oco ON (oco.id_usuarioOng = u.id_usuario)
			join
		CategoriaOng co ON (co.id_categoriaOng = oco.id_categoriaOng)
	where
		id_tipoUsuario = 1 and ic_banido = 0
			and dt_desbloqueio is null
	group by u.id_usuario
	order by nm_usuario
	limit 15 OFFSET limite; 

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarQuantidadeIndices` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarQuantidadeIndices`(pValor int)
begin
DECLARE limite INT;
	select (8 * pValor) into limite;
	Select u.id_usuario
		from Usuario u join CategoriaOng co ON (u.id_categoriaOng = co.id_categoriaOng) 
	where id_tipoUsuario = 1 and ic_banido = 0 and dt_desbloqueio is null
group by nm_usuario order by nm_usuario limit 8 OFFSET limite; 
	
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarTiposEntrega`()
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarTiposItens`()
begin
	select * from TipoItem where id_tipoItem > 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarTiposItensEMonetario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `ListarTiposItensEMonetario`()
begin
	select * from TipoItem;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RecuperarCodigoRecuperacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `RecuperarCodigoRecuperacao`(pEmail varchar(255))
begin
select codigo from codigos_recuperacao where nm_email = pEmail;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoverDenuncia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `RemoverDenuncia`(pDenunciante int, pDenunciado int, pData datetime)
BEGIN
DELETE FROM DenunciaUsuario
WHERE 
    id_usuarioDenunciado = pDenunciado 
and id_usuarioDenunciante = pDenunciante 
and dt_denuncia = pData;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoverDenunciaCampanha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `RemoverDenunciaCampanha`(pDenunciante int, pDenunciado int, pData datetime)
BEGIN
DELETE FROM DenunciaCampanha 
WHERE 
    id_campanha = pDenunciado 
    AND id_usuario = pDenunciante 
    AND dt_denuncia = pData;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `teste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `teste`(pEmail varchar(250), pEmailContato varchar(250), pNomeUsuario varchar(100), pSenha varchar(45), pTelefone varchar(20), pNomeIdentificacao varchar(45), pDescricao varchar(1000), pCep varchar(10), pEstado varchar(45), pCidade varchar(100), pRua varchar(250), pNumero varchar(5), pBairro varchar(45), pComplemento varchar(45), pLongitude varchar(45), pLatitude varchar(45), pImagemFotoPerfil varchar(400), pWebSite varchar(250), pImagemBanner varchar(400), pPix varchar(250), pPodeBuscar bool, pCategoria int)
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
/*!50003 DROP PROCEDURE IF EXISTS `VerificarCodigoRecuperacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `VerificarCodigoRecuperacao`(pCodigo varchar(8), pEmail varchar(255))
begin
if exists (select * from codigos_recuperacao where codigo = pCodigo and nm_email = pEmail) then
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
/*!50003 DROP PROCEDURE IF EXISTS `VerificarEmailIdentificacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `VerificarEmailIdentificacao`(pEmail varchar(250), pIdentificacao varchar(20))
begin
	select id_usuario from Usuario where nm_email = pEmail or nm_indentificacao = pIdentificacao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarExistenciaEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `VerificarExistenciaEmail`(pEmail varchar(250))
begin
select nm_email from Usuario where nm_email = pEmail;
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `VerificarSenha`(pSenhaDigitada varchar(45), pEmail varchar(250))
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
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `VincularCampanhaOds`(pIdCampanha int, idOds int)
begin
	Insert into Campanha_ODS values (pIdCampanha, idOds);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 22:47:38
