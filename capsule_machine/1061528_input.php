<?php
$select = "*"; //搜尋所有
$query = "SELECT "  .$select.  " FROM eggs"; //sql語法
if ( !( $database = mysql_connect( "localhost", "123", "123" ) ) )
die( "Could not connect to database </body></html>" );
if ( !mysql_select_db( "topic", $database ) )
die( "Could not open products database </body></html>" );
mysql_query("set names utf8");
if ( !( $eggs = mysql_query( $query, $database ) ) )
{
print( "<p>Could not execute query!</p>" );
die( mysql_error() . "</body></html>" );
}
//扭蛋input
$name=$_POST["name"];
$comment=$_POST["comment"];
$num=mysql_num_rows( $eggs )+1;
$query = "INSERT INTO `eggs`(`egg_num`,`name`,`words`) VALUES ('".$num."','".$name."','".$comment."')";
mysql_query( $query, $database );
mysql_close( $database ); //關閉資料庫
?>