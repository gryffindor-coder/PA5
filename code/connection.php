<?php
    class Database {
        public string $server = "";
        public string $username = "";
        public string $password = "";
        public string $database = "";

        public mysqli $connection;

        public static function instance($server, $username, $password, $database) {
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

        public function connect() {
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

        public function prepareStatement($sql) {
            return $this->connection->prepare($sql);
        }

        public function __destruct() {
//            $this->connection->close();
        }
    }

    class WheatlyDatabase{
        public static string $Wheatly_server = "localhost";
        public static string $Wheatly_username = "root";
        public static string $Wheatly_password = "";
        public static string $Wheatly_database = "golfdb";

        public Database $db;

        public static function instance() {
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

        public function insertUser($fname, $lname, $uname, $email, $password) {
            $stmt = $this->db->prepareStatement("SELECT email FROM USER WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            if ($stmt->get_result()->num_rows > 0)
                return false;

            $hash = password_hash($password, PASSWORD_ARGON2ID);

            $stmt = $this->db->prepareStatement("INSERT INTO USER (email, fname, lname, hash, type) VALUES (?, ?, ?, ?, 'default');");
            $stmt->bind_param("ssss", $email, $fname, $lname, $hash);
            return $stmt->execute();
        }

        public function getUserData($email) {
            $stmt = $this->db->prepareStatement("SELECT * FROM USER WHERE 1 AND email = ? LIMIT 1;");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            return $stmt->get_result();
        }

        public function getResultRow($result) {
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                return $row;
            }
        }

        public function getResultRowArr($result) {
            $resArr = array();
            for ($i=0; $i < $result->num_rows; $i++) {
                $row = $result->fetch_assoc();
                $resArr[$i] = $row;
            }
            return $resArr;
        }

        public function getResultValue($result, $value) {
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                return $row[$value];
            }
        }

        public function getResultValueArr($result, $value) {
            $resArr = array();
            for ($i=0; $i < $result->num_rows; $i++) { 
                $row = $result->fetch_assoc();
                $resArr[$i] = $row[$value];
            }
            return $resArr;
        }

        public function userLogin($email, $password){
            $result = $this->getUserData($email);
            if ($result->num_rows != 1) {
                return false;
            } else {
                $row = $result->fetch_assoc();
                return password_verify($password, $row['hash']);
            }
        }

        public function getAllUserEmails() {
            $emails = array();
            $stmt = $this->db->prepareStatement("SELECT * FROM USER;");

            if (!$stmt->execute())
                die('Fatal error!');

            $result = $stmt->get_result();
            while (($row = $result->fetch_assoc()) != null)
                $emails[] = $row['email'];

            return $emails;
        }

        public function getAllAdmins() {
            $admins = array();
            $stmt = $this->db->prepareStatement("SELECT email FROM USER WHERE type = 'admin';");
            if (!$stmt->execute())
                die('Fatal error!');

            $result = $stmt->get_result();
            while (($row = $result->fetch_assoc()) != null)
                $admins[] = $row['email'];

            return $admins;
        }
    }
?>