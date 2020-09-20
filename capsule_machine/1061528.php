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

mysql_close( $database ); //關閉資料庫

//扭蛋output
$num=rand(1,mysql_num_rows( $eggs ));
for($i=0;$i<$num;$i++)
	$eggs_row = mysql_fetch_row( $eggs ); //egg_num name words
print("<p>".$eggs_row[2]."</p>");
print("<p>by  ".$eggs_row[1]."</p>");
?>