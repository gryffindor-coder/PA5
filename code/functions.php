<?php
    function random_num($digets){
        $out = "";
        for ($i=0; $i < $digets; $i++) $out .= rand(0,9);
        return $out;
    }

    function js_console_log($log, $inc_tags = true, $tag_open = '<script type="text/javascript">', $tag_close = '</script>'){
        $output = 'console.log(' . json_encode($log, JSON_HEX_TAG).');';
        if($inc_tags){
            $output = $tag_open.$output.$tag_close;
        }
        //echo $output;
    }

    function js_run_text($output, $inc_tags = true, $tag_open = '<script type="text/javascript">', $tag_close = '</script>'){
        if($inc_tags){
            $output = $tag_open.$output.$tag_close;
        }
        echo $output;
    }

    function js_dom($id, $code, $inc_tags = true, $tag_open = '<script type="text/javascript">', $tag_close = '</script>'){
        $output = 'document.getElementById("'.$id.'").'.$code;
        if($inc_tags){
            $output = $tag_open.$output.$tag_close;
        }
        echo $output;
    }
?>