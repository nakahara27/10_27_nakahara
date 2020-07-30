<?php

// pr_DebugSave('ajax_galss', '_POST=' . print_r($_POST, true));
//@@@
//$a_tale:保存ファイル名の末尾付加文字（連番等）
//$a_text:保存内容

$post_act = $_POST['act'];

if ($post_act == 'btn_regTheme') {
    $asc_ret = fn_btn_regTheme();
} else if ($post_act == 'saveFrame') {
    $asc_ret = fn_saveFrame();
} else if ($post_act == 'getThemeList') {
    $asc_ret = fn_getThemeList();
} else if ($post_act == 'loadFrame') {
    $asc_ret = fn_loadFrame();
}


header("Content-Type: application/json; charset=utf-8");
echo json_encode($asc_ret);

function fn_btn_regTheme()
{
    $asc_ret = array();

    // pr_DebugSave('fn_btn_regTheme', '_POST=' . print_r($_POST, true));
    include("function.php");
    $pdo = connect_to_db();
    $txt_operation_sub = $_POST['txt_operation_sub'];

    $sql = 'INSERT INTO theme_tbl(theme_ai, theme_name, theme_color, theme_bgcolor) VALUES(NULL, :theme_name, :theme_color, :theme_bgcolor)';

    // SQL準備&実行
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':theme_name', $txt_operation_sub, PDO::PARAM_STR);
    $stmt->bindValue(':theme_color', "", PDO::PARAM_STR);
    $stmt->bindValue(':theme_bgcolor', "", PDO::PARAM_STR);
    $status = $stmt->execute();


    // データ登録処理後
    if ($status == false) {
        // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
        $error = $stmt->errorInfo();
        echo json_encode(["error_msg" => "{$error[2]}"]);
        exit();
    } else {
        $sql = 'SELECT LAST_INSERT_ID()';
        $stmt = $pdo->prepare($sql);
        $status = $stmt->execute();
        $asc = $stmt->fetch(PDO::FETCH_ASSOC);
        // pr_DebugSave('asc', 'acs=' . print_r($asc, true));
        $asc_ret["theme_ai"] = $asc["LAST_INSERT_ID()"];
        return $asc_ret;
    }
};

function fn_loadFrame(){
    $asc_ret = array();
    include("function.php");
    $pdo = connect_to_db();
    
    $frame_theme_ai= $_POST["frame_theme_ai"];
//pr_DebugSave('fn_loadFrame',print_r($_POST,true));

	$sql='SELECT * FROM frame_tbl WHERE frame_theme_ai=:frame_theme_ai ORDER BY frame_class';
	// SQL準備&実行
	$stmt=$pdo->prepare($sql);
  $stmt->bindValue(':frame_theme_ai',$frame_theme_ai, PDO::PARAM_INT);
	$status=$stmt->execute();
	if($status==false) {
		// SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
		$error=$stmt->errorInfo();
		echo json_encode(['error_msg' => "{$error[2]}"]);
		exit();
	}else{
		$ary_result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		$asc_ret=$ary_result;
		return $asc_ret;
	}
	
}

function fn_saveFrame(){
    $asc_ret = array();
    $cnt = $_POST["cnt"];
    include("function.php");
    $pdo = connect_to_db();
    
	$sql='DELETE FROM frame_tbl WHERE frame_theme_ai=:frame_theme_ai';
	// SQL準備&実行
	$stmt=$pdo->prepare($sql);
  $stmt->bindValue(':frame_theme_ai', $_POST["frame_theme_ai"], PDO::PARAM_INT);
	$status=$stmt->execute();
	if($status==false) {
		// SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
		$error=$stmt->errorInfo();
		echo json_encode(['error_msg' => "{$error[2]}"]);
		exit();
	}else{
	}

    
    for ($i = 0; $i < $cnt; $i++) {
        $sql='INSERT INTO frame_tbl(frame_ai,frame_theme_ai,frame_class,frame_left,frame_top,frame_width,frame_height,frame_text,frame_color,frame_bgcolor)';
        $sql.=' VALUES(NULL,:frame_theme_ai,:frame_class,:frame_left,:frame_top,:frame_width,:frame_height,:frame_text,:frame_color,:frame_bgcolor)';

        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':frame_theme_ai', $_POST["frame_theme_ai"], PDO::PARAM_INT);
        $stmt->bindValue(':frame_class', $_POST["frame_class".$i], PDO::PARAM_STR);
        $stmt->bindValue(':frame_left', $_POST["frame_left".$i], PDO::PARAM_INT);
        $stmt->bindValue(':frame_top', $_POST["frame_top".$i], PDO::PARAM_INT);
        $stmt->bindValue(':frame_width', $_POST["frame_width".$i], PDO::PARAM_INT);
        $stmt->bindValue(':frame_height', $_POST["frame_height".$i], PDO::PARAM_INT);
        $stmt->bindValue(':frame_text', $_POST["frame_text".$i], PDO::PARAM_STR);
        $stmt->bindValue(':frame_color', '', PDO::PARAM_STR);
        $stmt->bindValue(':frame_bgcolor','', PDO::PARAM_STR);

        $status = $stmt->execute();

    }
    // pr_DebugSave('fn_btn_regTheme', '_POST=' . print_r($_POST, true));

    // データ登録処理後
    if ($status == false) {
        // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
        $error = $stmt->errorInfo();
        pr_DebugSave("error_msg", $error);
        exit();
    }
};

function fn_getThemeList()
{
  $asc_ret = array();
  include("function.php");
  $pdo = connect_to_db();

	$sql='SELECT * FROM theme_tbl ORDER BY theme_ai DESC';
	// SQL準備&実行
	$stmt=$pdo->prepare($sql);
	$status=$stmt->execute();
	if($status==false) {
		// SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
		$error=$stmt->errorInfo();
		echo json_encode(['error_msg' => "{$error[2]}"]);
		exit();
	}else{
		$ary_result=$stmt->fetchAll(PDO::FETCH_ASSOC);
		foreach ($ary_result as $asc_rec){
			$asc_ret[$asc_rec['theme_ai']]=$asc_rec['theme_name'];
		}
		return $asc_ret;
	}
}

function pr_DebugSave($a_tale, $a_text)
{
    $dir = '_debug/'; //出力先フォルダ
    if (file_exists($dir) == false) {
        mkdir($dir, 0777, true); //true:再帰作成する
        chmod($dir, 0777);
    }
    //
    file_put_contents($dir . date('His') . '=' . $a_tale . '.txt', $a_text);
}
