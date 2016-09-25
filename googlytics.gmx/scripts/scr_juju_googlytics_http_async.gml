///scr_juju_googlytics_http_async()
//  
//  Processes HTTP responses from Google Analytics.
//  
//  Copyright (c) 2016 Julian T. Adams / @jujuadams
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
//  documentation files (the "Software"), to deal in the //  Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the //  Software,
//  and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in allcopies or substantial portions of the
//  Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
//  THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A //  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
//  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

var asyncLoad = async_load;

var ID          = ds_map_find_value( asyncLoad, "id" );
var status      = ds_map_find_value( asyncLoad, "status" );
var result      = ds_map_find_value( asyncLoad, "result" );
var url         = ds_map_find_value( asyncLoad, "url" );
var http_status = ds_map_find_value( asyncLoad, "http_status" );

//Try to find this request id in the HTTP request log
var find = ds_map_find_value( global.juju_googlytics_httpMap, ID );
    
if ( !is_undefined( find ) ) {
    
    if ( global.juju_googlytics_reporting >= 1 ) {
        
        if ( !is_undefined( http_status ) ) {
            
            ds_map_delete( global.juju_googlytics_httpMap, ID );
            
            if ( global.juju_googlytics_reporting >= 3 ) or ( string( http_status ) != "200" ) {
                
                show_debug_message( string( http_status ) + " --- " + string( result ) );
                alarm[0] = room_speed * 1.2;
                
            } else if ( string( http_status ) == "200" ) {
                
                if ( string_pos( "ERROR", string_upper( result ) ) > 0 ) {
                    show_debug_message( string( http_status ) + " --- " + string( result ) );
                    alarm[0] = room_speed * 1.2;
                }
                
            }
            
        }
    }
}
