<?php
$dataPost = file_get_contents('php://input');
$variablePost = json_decode($dataPost, true);

if (isset($variablePost["function"]) and isset($variablePost["parametros"])) {
    $function = $variablePost["function"];
    $parametros = $variablePost["parametros"];
} else{
    echo json_encode([
        'message' => 'function no found',
        'status' => false,
        'data' => $dataPost,
        'function' => $function,
        'params' => $parametros
    ]);

    return;
}


if (function_exists($function)) {
    $function($parametros);
}

// list_post Get long list of posts and articles
function list_post($parametros)
{
    include_once 'connection.php';
    $query = "SELECT`id`,`title`,`read_time`,`author_id`,`body`,`summary`,`banner`,`meta_tag`,`meta_description`,`date`FROM articles ORDER BY date DESC;";

    $stmt = $mysqli->prepare($query);
    $stmt->execute();

    $return = array();
    $result = $stmt->get_result();
    foreach ($result as $key => $res) {
        $return[$key]['id'] = $res['id'];
        $return[$key]['title'] = $res['title'];
        $return[$key]['read_time'] = $res['read_time'];
        $return[$key]['author_id'] = $res['author_id'];
        $return[$key]['body'] = $res['body'];
        $return[$key]['summary'] = $res['summary'];
        $return[$key]['banner'] = $res['banner'];
        $return[$key]['meta_tag'] = $res['meta_tag'];
        $return[$key]['meta_description'] = $res['meta_description'];
        $return[$key]['date'] = $res['date'];
    }


    $stmt->close();
    echo json_encode($return);
    return;

}

// get_all_post Get quick list of posts and articles
function get_all_post($parametros)
{
    include_once 'connection.php';
    $query = "SELECT id, title, read_time, banner, meta_description, date FROM articles;";

    $stmt = $mysqli->prepare($query);
    $stmt->execute();

    $result = $stmt->get_result();
    $return = array();
    foreach ($result as $key => $res) {
        $return[$key]['id'] = $res['id'];
        $return[$key]['title'] = $res['title'];
        $return[$key]['read_time'] = $res['read_time'];
        $return[$key]['banner'] = $res['banner'];
        $return[$key]['meta_description'] = $res['meta_description'];
        $return[$key]['date'] = $res['date'];
    }

    $stmt->close();
    echo json_encode($return);
    return;
}

// get_post Get a one post requiered::id
function get_post($parametros)
{
    include_once 'connection.php';
    if (isset($parametros["id"])) {
        $id = $parametros["id"];
    } else {
        echo json_encode(['message' => 'Empty null id in get_post', 'status' => 'false']);
        return;
    }

    $query = "SELECT id, title, read_time, author_id, body, summary, banner, meta_tag, meta_description, date, something FROM articles WHERE id = ?;";

    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("i", $id);
    $stmt->execute();

    $return = array();
    $result = $stmt->get_result();
    foreach ($result as $key => $res) {
        $return[$key]['id'] = $res['id'];
        $return[$key]['title'] = $res['title'];
        $return[$key]['read_time'] = $res['read_time'];
        $return[$key]['author_id'] = $res['author_id'];
        $return[$key]['body'] = $res['body'];
        $return[$key]['summary'] = $res['summary'];
        $return[$key]['banner'] = $res['banner'];
        $return[$key]['meta_tag'] = $res['meta_tag'];
        $return[$key]['meta_description'] = $res['meta_description'];
	    $return[$key]['something'] = $res['something'];


    }

    $stmt->close();
    echo json_encode($return);
    return;
}

// mock Test it works
function mock($parametros)
{
    echo json_encode(['message' => 'Mock started', 'status' => true]);
    return;
}
?>
