# Nushell Config File

$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup

    cursor_shape: {
        emacs: underscore # block, underscore, line, blink_block, blink_underscore, blink_line, inherit to skip setting cursor shape (line is the default)
        vi_insert: underscore # block, underscore, line, blink_block, blink_underscore, blink_line, inherit to skip setting cursor shape (block is the default)
        vi_normal: underscore # block, underscore, line, blink_block, blink_underscore, blink_line, inherit to skip setting cursor shape (underscore is the default)
    }

   
 }
