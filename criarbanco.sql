SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema centro_de_pesquisa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema centro_de_pesquisa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `centro_de_pesquisa` ;
USE `centro_de_pesquisa` ;

-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`estado` (
  `idestado` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idestado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`cidade` (
  `idcidade` INT NOT NULL AUTO_INCREMENT,
  `estado_idestado` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcidade`),
  INDEX `fk_cidade_estado1_idx` (`estado_idestado` ASC) VISIBLE,
  CONSTRAINT `fk_cidade_estado1`
    FOREIGN KEY (`estado_idestado`)
    REFERENCES `centro_de_pesquisa`.`estado` (`idestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`bairro` (
  `idbairro` INT NOT NULL AUTO_INCREMENT,
  `cidade_idcidade` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idbairro`),
  INDEX `fk_bairro_cidade1_idx` (`cidade_idcidade` ASC) VISIBLE,
  CONSTRAINT `fk_bairro_cidade1`
    FOREIGN KEY (`cidade_idcidade`)
    REFERENCES `centro_de_pesquisa`.`cidade` (`idcidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`pesquisador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`pesquisador` (
  `idpesquisador` INT NOT NULL AUTO_INCREMENT,
  `bairro_idbairro` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(8) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `data_de_ingresso` DATE NOT NULL,
  `data_de_egresso` DATE NULL,
  `ativo` TINYINT NOT NULL,
  `area_de_atuacao` VARCHAR(45) NOT NULL,
  `id_lattes` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`idpesquisador`),
  INDEX `fk_pesquisador_bairro1_idx` (`bairro_idbairro` ASC) VISIBLE,
  CONSTRAINT `fk_pesquisador_bairro1`
    FOREIGN KEY (`bairro_idbairro`)
    REFERENCES `centro_de_pesquisa`.`bairro` (`idbairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`equipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`equipe` (
  `idequipe` INT NOT NULL AUTO_INCREMENT,
  `nome_da_equipe` VARCHAR(45) NOT NULL,
  `descricao` TEXT NOT NULL,
  `observacoes` TEXT NULL,
  PRIMARY KEY (`idequipe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`conta_corrente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`conta_corrente` (
  `idconta_corrente` INT NOT NULL AUTO_INCREMENT,
  `agencia` VARCHAR(4) NOT NULL,
  `conta` VARCHAR(9) NOT NULL,
  `digito_verificador` VARCHAR(1) NOT NULL,
  `nome_do_banco` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idconta_corrente`),
  INDEX `agência_UNIQUE` (`agencia` ASC) VISIBLE,
  UNIQUE INDEX `conta_UNIQUE` (`conta` ASC) VISIBLE,
  INDEX `digito_verificador_UNIQUE` (`digito_verificador` ASC) VISIBLE,
  INDEX `nome_do_banco_UNIQUE` (`nome_do_banco` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`projeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`projeto` (
  `idprojeto` INT NOT NULL AUTO_INCREMENT,
  `equipe_idequipe` INT NOT NULL,
  `título` VARCHAR(80) NOT NULL,
  `descrição` LONGTEXT NOT NULL,
  `aprovado` TINYINT NOT NULL,
  PRIMARY KEY (`idprojeto`),
  INDEX `fk_projeto_liga1_idx` (`equipe_idequipe` ASC) VISIBLE,
  CONSTRAINT `fk_projeto_liga1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`subprojeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`subprojeto` (
  `idsubprojeto` INT NOT NULL AUTO_INCREMENT,
  `projeto_idprojeto` INT NOT NULL,
  `título` VARCHAR(80) NOT NULL,
  `justificativa` MEDIUMTEXT NOT NULL,
  `objetivo` MEDIUMTEXT NOT NULL,
  `metodologia` MEDIUMTEXT NOT NULL,
  `referencias` TEXT NOT NULL,
  PRIMARY KEY (`idsubprojeto`),
  INDEX `fk_subprojeto_projeto1_idx` (`projeto_idprojeto` ASC) VISIBLE,
  CONSTRAINT `fk_subprojeto_projeto1`
    FOREIGN KEY (`projeto_idprojeto`)
    REFERENCES `centro_de_pesquisa`.`projeto` (`idprojeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`aluno` (
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(8) NOT NULL,
  `ativo` TINYINT NOT NULL,
  `equipe_idequipe` INT NOT NULL,
  `conta_corrente_idconta_corrente` INT NULL,
  `bairro_idbairro` INT NOT NULL,
  `data_de_ingresso` DATE NOT NULL,
  `data_de_egresso` VARCHAR(45) NULL,
  `subprojeto_idsubprojeto` INT NOT NULL,
  `bolsista` TINYINT NOT NULL,
  `id_lattes` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_aluno_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  INDEX `fk_aluno_conta_corrente1_idx` (`conta_corrente_idconta_corrente` ASC) VISIBLE,
  INDEX `fk_aluno_bairro1_idx` (`bairro_idbairro` ASC) VISIBLE,
  UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  INDEX `fk_aluno_subprojeto1_idx` (`subprojeto_idsubprojeto` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_conta_corrente1`
    FOREIGN KEY (`conta_corrente_idconta_corrente`)
    REFERENCES `centro_de_pesquisa`.`conta_corrente` (`idconta_corrente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_bairro1`
    FOREIGN KEY (`bairro_idbairro`)
    REFERENCES `centro_de_pesquisa`.`bairro` (`idbairro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_subprojeto1`
    FOREIGN KEY (`subprojeto_idsubprojeto`)
    REFERENCES `centro_de_pesquisa`.`subprojeto` (`idsubprojeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp1257;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`pesquisador_has_projeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`pesquisador_has_projeto` (
  `pesquisador_idpesquisador` INT NOT NULL,
  `projeto_idprojeto` INT NOT NULL,
  PRIMARY KEY (`pesquisador_idpesquisador`, `projeto_idprojeto`),
  INDEX `fk_pesquisador_has_projeto_projeto1_idx` (`projeto_idprojeto` ASC) VISIBLE,
  INDEX `fk_pesquisador_has_projeto_pesquisador1_idx` (`pesquisador_idpesquisador` ASC) VISIBLE,
  CONSTRAINT `fk_pesquisador_has_projeto_pesquisador1`
    FOREIGN KEY (`pesquisador_idpesquisador`)
    REFERENCES `centro_de_pesquisa`.`pesquisador` (`idpesquisador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisador_has_projeto_projeto1`
    FOREIGN KEY (`projeto_idprojeto`)
    REFERENCES `centro_de_pesquisa`.`projeto` (`idprojeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`publicacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`publicacao` (
  `idpublicacao` INT NOT NULL AUTO_INCREMENT,
  `título` TINYTEXT NOT NULL,
  `abstract` TEXT NOT NULL,
  `link_doi` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idpublicacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`aluno_has_publicacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`aluno_has_publicacao` (
  `aluno_idaluno` INT NOT NULL,
  `publicacao_idpublicacao` INT NOT NULL,
  PRIMARY KEY (`aluno_idaluno`, `publicacao_idpublicacao`),
  INDEX `fk_aluno_has_publicacao_publicacao1_idx` (`publicacao_idpublicacao` ASC) VISIBLE,
  INDEX `fk_aluno_has_publicacao_aluno1_idx` (`aluno_idaluno` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_has_publicacao_aluno1`
    FOREIGN KEY (`aluno_idaluno`)
    REFERENCES `centro_de_pesquisa`.`aluno` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_publicacao_publicacao1`
    FOREIGN KEY (`publicacao_idpublicacao`)
    REFERENCES `centro_de_pesquisa`.`publicacao` (`idpublicacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`publicacao_has_pesquisador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`publicacao_has_pesquisador` (
  `publicacao_idpublicacao` INT NOT NULL,
  `pesquisador_idpesquisador` INT NOT NULL,
  PRIMARY KEY (`publicacao_idpublicacao`, `pesquisador_idpesquisador`),
  INDEX `fk_publicacao_has_pesquisador_pesquisador1_idx` (`pesquisador_idpesquisador` ASC) VISIBLE,
  INDEX `fk_publicacao_has_pesquisador_publicacao1_idx` (`publicacao_idpublicacao` ASC) VISIBLE,
  CONSTRAINT `fk_publicacao_has_pesquisador_publicacao1`
    FOREIGN KEY (`publicacao_idpublicacao`)
    REFERENCES `centro_de_pesquisa`.`publicacao` (`idpublicacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicacao_has_pesquisador_pesquisador1`
    FOREIGN KEY (`pesquisador_idpesquisador`)
    REFERENCES `centro_de_pesquisa`.`pesquisador` (`idpesquisador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`equipe_has_pesquisador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`equipe_has_pesquisador` (
  `equipe_idequipe` INT NOT NULL,
  `pesquisador_idpesquisador` INT NOT NULL,
  PRIMARY KEY (`equipe_idequipe`, `pesquisador_idpesquisador`),
  INDEX `fk_equipe_has_pesquisador_pesquisador1_idx` (`pesquisador_idpesquisador` ASC) VISIBLE,
  INDEX `fk_equipe_has_pesquisador_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  CONSTRAINT `fk_equipe_has_pesquisador_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipe_has_pesquisador_pesquisador1`
    FOREIGN KEY (`pesquisador_idpesquisador`)
    REFERENCES `centro_de_pesquisa`.`pesquisador` (`idpesquisador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`nota_fiscal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`nota_fiscal` (
  `idnota_fiscal` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(9) NOT NULL,
  `data_da_emissao` DATE NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `emitente` VARCHAR(45) NOT NULL,
  `impostos` DOUBLE NOT NULL,
  `valor_total` DOUBLE NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  `observacoes` TEXT NULL,
  PRIMARY KEY (`idnota_fiscal`),
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`despesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`despesa` (
  `iddespesa` INT NOT NULL AUTO_INCREMENT,
  `equipe_idequipe` INT NOT NULL,
  `nota_fiscal_idnota_fiscal` INT NULL,
  `descricao` TEXT NOT NULL,
  `observacoes` TEXT NULL,
  `data` DATE NOT NULL,
  INDEX `fk_despesa_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  INDEX `fk_despesa_nota_fiscal1_idx` (`nota_fiscal_idnota_fiscal` ASC) VISIBLE,
  PRIMARY KEY (`iddespesa`),
  CONSTRAINT `fk_despesa_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_despesa_nota_fiscal1`
    FOREIGN KEY (`nota_fiscal_idnota_fiscal`)
    REFERENCES `centro_de_pesquisa`.`nota_fiscal` (`idnota_fiscal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`equipamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`equipamento` (
  `idequipamento` INT NOT NULL AUTO_INCREMENT,
  `equipe_idequipe` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `observacao` TEXT NULL,
  `despesa_iddespesa` INT NOT NULL,
  PRIMARY KEY (`idequipamento`),
  INDEX `fk_equipamento_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  INDEX `fk_equipamento_despesa1_idx` (`despesa_iddespesa` ASC) VISIBLE,
  CONSTRAINT `fk_equipamento_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipamento_despesa1`
    FOREIGN KEY (`despesa_iddespesa`)
    REFERENCES `centro_de_pesquisa`.`despesa` (`iddespesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`investidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`investidor` (
  `idinvestidor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cnpj` VARCHAR(14) NOT NULL,
  `proposta` TEXT NOT NULL,
  PRIMARY KEY (`idinvestidor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`equipe_has_investidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`equipe_has_investidor` (
  `equipe_idequipe` INT NOT NULL,
  `investidor_idinvestidor` INT NOT NULL,
  PRIMARY KEY (`equipe_idequipe`, `investidor_idinvestidor`),
  INDEX `fk_equipe_has_investidor_investidor1_idx` (`investidor_idinvestidor` ASC) VISIBLE,
  INDEX `fk_equipe_has_investidor_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  CONSTRAINT `fk_equipe_has_investidor_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipe_has_investidor_investidor1`
    FOREIGN KEY (`investidor_idinvestidor`)
    REFERENCES `centro_de_pesquisa`.`investidor` (`idinvestidor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`relatorio_tecnico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`relatorio_tecnico` (
  `idrelatorio_tecnico` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(80) NOT NULL,
  `resumo` VARCHAR(200) NULL,
  `relatorio` TEXT NOT NULL,
  `equipe_idequipe` INT NOT NULL,
  PRIMARY KEY (`idrelatorio_tecnico`),
  INDEX `fk_relatorio_tecnico_equipe1_idx` (`equipe_idequipe` ASC) VISIBLE,
  CONSTRAINT `fk_relatorio_tecnico_equipe1`
    FOREIGN KEY (`equipe_idequipe`)
    REFERENCES `centro_de_pesquisa`.`equipe` (`idequipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centro_de_pesquisa`.`servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centro_de_pesquisa`.`servico` (
  `idservico` INT NOT NULL AUTO_INCREMENT,
  `despesa_iddespesa` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `observacao` TEXT NULL,
  `fornecedor` VARCHAR(45) NOT NULL,
  `descricao` TEXT NOT NULL,
  PRIMARY KEY (`idservico`),
  INDEX `fk_servico_despesa1_idx` (`despesa_iddespesa` ASC) VISIBLE,
  CONSTRAINT `fk_servico_despesa1`
    FOREIGN KEY (`despesa_iddespesa`)
    REFERENCES `centro_de_pesquisa`.`despesa` (`iddespesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
