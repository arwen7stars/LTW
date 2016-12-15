<?php
      include_once(dirname(__FILE__) . '/connection.php');
      include_once(dirname(__FILE__) . '/restaurants_database.php');
      include_once(dirname(__FILE__) . '/users_database.php');
      include_once(dirname(__FILE__) . '/reviews_database.php');

      session_start();

      $review_id = $_POST['id'];
      $user_id = $_POST['user_id'];

      if (!strlen(trim($_POST['comment']))){
          $comment = null;
      } else {
            $comment = $_POST['comment'];
            
            include_once(dirname(__FILE__) . '/../utilities/utils.php');

            $id = getNextId($db);
            echo $id;
            $stmt = $db->prepare('INSERT INTO ReplyReviews (id, comment, review, commenter) VALUES (?,?,?,?)');
            $stmt->execute(array($id, $comment, $review_id, $user_id));

      }
	
    $referer = '../replyReview.php?review_id=' . $review_id;

    header('Location: ' . $referer);
?>