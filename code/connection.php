<?php
    class Database{
        public $server = "";
        public $username = "";
        public $password = "";
        public $database = "";

        public $connection;

        public static function instance($server, $username, $password, $database){
            static $instance = null;
            if($instance === null) $instance = new Database($server, $username, $password, $database);
            return $instance;
        }

        public function __construct($server, $username, $password, $database) {
            $this->server = $server;
            $this->username = $username;
            $this->password = $password;
            $this->database = $database;

            $this->connect();
        }

        public function connect(){
            //echo $this->server,$this->username,$this->password, $this->database;
            $this->connection = new mysqli($this->server,$this->username,$this->password, $this->database);
            //$this->connection = mysqli_connect($this->server,$this->username,$this->password, $this->database);

            if($this->connection->connect_error) die("Connection failure: ".$this->connection->connect_error);
            else js_console_log("db connected!");
        }

        public function getConnection(){
            return $this->connection;
        }

        public function query($sql){
            return $this->connection->query($sql);
        }

        public function __destruct() {
            //$this->connection->close();
        }
    }

    class WheatlyDatabase{
        public static $Wheatly_server = "localhost";
        public static $Wheatly_username = "root";
        public static $Wheatly_password = "admin";
        public static $Wheatly_database = "COS221_PA5";

        public $db;

        public static function instance(){
            return Database::instance(WheatlyDatabase::$Wheatly_server, WheatlyDatabase::$Wheatly_username, WheatlyDatabase::$Wheatly_password, WheatlyDatabase::$Wheatly_database);
        }

        public static function conn(){
            static $conn = null;
            if($conn === null) $conn = new WheatlyDatabase();
            return $conn;
        }

        public function __construct() {
            //$this->db = WheatlyDatabase::instance();
            $this->db = new Database(WheatlyDatabase::$Wheatly_server, WheatlyDatabase::$Wheatly_username, WheatlyDatabase::$Wheatly_password, WheatlyDatabase::$Wheatly_database);
        }

        public function __destruct() {
            $this->db->__destruct();
        }

        public function insertUser($fname, $lname, $uname, $email, $password){
            $skey = $email . random_num(5);
            $table = $this->db->database.'.users';
            $sql = "INSERT INTO $table (Email, UserName, FirstName, LastName, Password, APIKey, Date) VALUES ('$email', '$uname', '$fname', '$lname', '$password', HEX('$skey'), current_timestamp()) ";

            $result = $this->db->query($sql);

            return $result;
        }

        public function getUserData($email){
            $table = $this->db->database.'.users';
            $sql = "SELECT * FROM $table WHERE 1 AND Email = '$email' LIMIT 1;";
            return $this->db->query($sql);
        }

        public function getResultRow($result){
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                return $row;
            }
        }

        public function getResultRowArr($result){
            $resArr = array();
            for ($i=0; $i < $result->num_rows; $i++) {
                $row = $result->fetch_assoc();
                $resArr[$i] = $row;
            }
            return $resArr;
        }

        public function getResultValue($result, $value){
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                return $row[$value];
            }
        }

        public function getResultValueArr($result, $value){
            $resArr = array();
            for ($i=0; $i < $result->num_rows; $i++) { 
                $row = $result->fetch_assoc();
                $resArr[$i] = $row[$value];
            }
            return $resArr;
        }

        public function userLogin($email, $password){
            $result = $this->getUserData($email);
            if($result === false) js_console_log($this->db->connection->error);
            if($result && $result->num_rows > 0){
                $row = $result->fetch_assoc();
                if($row["Password"] === $password){
                    $_SESSION['Email'] = $email;
                    $_SESSION['UserName'] = $row['UserName'];
                    $_SESSION['LogedIN'] = true;

                    setcookie("Email",$email);
                    setcookie("UserName",$row['UserName']);

                    return true;
                }
            }
            return false;
        }
    }
?>