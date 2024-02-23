<?php 

try {
    $banco = new PDO("mysql:dbname=admin_tributaria; host=localhost", 'root', '');
} catch (PDOException $e) {
    echo "ERRO NO PDO: $e";
} catch (Exception $e) {
    echo "ERRO GENERICO: $e";
}

switch (filter_input(INPUT_POST, 'pedido')) {
    case 'cadastro':
        $nome = filter_input(INPUT_POST, 'nome');
        $tributo = filter_input(INPUT_POST, 'tributo');

        $cmd = $banco->prepare("INSERT INTO tributario (`nome`, `tributo`) VALUES (:n, :t)");
        $cmd->bindValue(':n', $nome);
        $cmd->bindValue(':t', $tributo);
        $cmd->execute();
        header('Location: ../../public/index.html');
        break;
    case 'busca':
        $res = $banco->query("SELECT * FROM tributario");
        $res->execute();
        header('Content-Type: application/json');
        echo json_encode($res->fetchAll(PDO::FETCH_ASSOC));
        break;
    case 'busca_nome':
        $nit = filter_input(INPUT_POST, 'nit', FILTER_VALIDATE_INT);
        $res = $banco->query("SELECT * FROM tributario WHERE nit = $nit");
        $res->execute();
        echo json_encode($res->fetch(PDO::FETCH_ASSOC));
        break;
    case 'tributar':
        $tributo = filter_input(INPUT_POST, 'tributo');
        $nit = filter_input(INPUT_POST, 'nit');
        $cmd = $banco->query("UPDATE `tributario` SET `tributo` = $tributo WHERE `nit` = $nit");
        try {
            $cmd->execute();
            header('Content-Type: application/json');
            echo json_encode('Dados inseridos com sucesso');
        } catch (Exception $e) {
            echo "Erro: $e";
        }
        break;
    default:
        echo "Nenhum pedido foi feito";
        break;
}