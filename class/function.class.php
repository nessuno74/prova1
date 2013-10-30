<?php

class n74 {

    public function __construct($my_host,$my_user,$my_pwd,$my_db){
        $this->myuser=$my_user;
        $this->mypwd=$my_pwd;
        $this->myhost=$my_host;
        $this->mydb=$my_db;
        $this->mylink="";
        $this->myqy="";
    }
    
    public function n74Connect(){
        
        $this->mylink=mysql_connect($this->myhost,$this->myuser,$this->mypwd)or die("Errore nella connessione a Mysql");
        mysql_select_db($this->mydb)or die("Errore nella connessione a DB");
    }
    
    public function n74Query($my_query) {
        $this->myquery=$my_query;
        $this->myqy=mysql_query($my_query)or die(mysql_error());
        return $this->myqy;
        
    }
    public function n74Login_ck(){
        if ($_SESSION['login'] !="1") {
            header("Location: index.php");
        }
    }

    public function n74Logout_link(){
            session_start();
            session_destroy();
            header("Location: index.php");
    }
    
}

?>