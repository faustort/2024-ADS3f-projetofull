START TRANSACTION;

SET
    time_zone = "+00:00";

CREATE TABLE `contato` (
    `idCon` int(11) NOT NULL,
    `nome` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `mensagem` mediumtext NOT NULL
);

INSERT INTO
    `contato` (`idCon`, `nome`, `email`, `mensagem`)
VALUES
    (
        4,
        'Fausto Rtoloi',
        'fausto.toloi@prof.sc.senac.br',
        'teste'
    ),
    (
        5,
        'Fausto Rtoloi',
        'fausto.toloi@prof.sc.senac.br',
        '53w63'
    );

CREATE TABLE `noticias` (
    `idNot` int(11) NOT NULL,
    `titulo` varchar(255) NOT NULL,
    `descricao` text NOT NULL
);

INSERT INTO
    `noticias` (`idNot`, `titulo`, `descricao`)
VALUES
    (
        1,
        'Cientistas alertam sobre os perigos do uso excessivo de dispositivos eletrônicos',
        'Um novo estudo destaca os riscos à saúde associados ao uso prolongado de dispositivos eletrônicos e oferece orientações para reduzir os impactos negativos.'
    ),
    (
        4,
        'Nova tecnologia de armazenamento promete revolucionar a indústria de eletrônicos',
        'Uma empresa de tecnologia lançou um novo tipo de bateria de longa duração que poderia transformar a forma como usamos nossos dispositivos. '
    ),
    (
        5,
        'Filme local ganha prêmio em festival internacional de cinema',
        'Filme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinemaFilme local ganha prêmio em festival internacional de cinema'
    );

CREATE TABLE `portfolio` (
    `idPor` int(11) NOT NULL,
    `titulo` varchar(255) NOT NULL,
    `descricao` mediumtext NOT NULL,
    `imagem` varchar(255) NOT NULL
);

ALTER TABLE
    `contato`
ADD
    PRIMARY KEY (`idCon`);

ALTER TABLE
    `noticias`
ADD
    PRIMARY KEY (`idNot`);

ALTER TABLE
    `portfolio`
ADD
    PRIMARY KEY (`idPor`);

ALTER TABLE
    `contato`
MODIFY
    `idCon` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE
    `noticias`
MODIFY
    `idNot` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE
    `portfolio`
MODIFY
    `idPor` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;