///scr_juju_googlytics_init( live, report level, tracking ID, unique customer ID, anonymise IP, extra parameters )
//  
//  Simple script for a set-once global parameter string.
//  
//  "report level" controls how much information is sent to the compile form:
//    0:  No reporting, not even errors
//    1:  Report only errors only to the compile form. (Default)
//    2:  Report only errors and flash a warning on screen.
//    3:  Reports errors and the result of all other recieved data, and flash a signal on the screen.
//  
//  https://developers.google.com/analytics/devguides/collection/protocol/v1/parameters
//  
//  Recommended Extra Parameters
//     &uid=09235ksfg             User ID
//     &aiid=platform.vending     Application Installer ID
//     &av=1.2                    Application Version
//     &ul=uk-en                  User Language
//     &ni=1                      Non-Interactive Hit
//     &xid=Qp0gahJ3RAO3DJ18b     Experiment ID
//     &xvar=1                    Experiment Variant
//  
//  Other, not necessarily relevant, parameters
//     &cn=Campaign%20Name        Campaign Name
//     &cs=Campaign%20Source      Campaign Source
//     &cm=organic                Campaign Medium
//     &ck=Blue%20Shoes           Campaign Keyword
//     &cc=content                Campaign Content
//     &ci=ID                     Campaign ID
//     
//     &de=UTF-8                  Document Encoding
//     &sd=24-bits                Screen Colour Depth
//     &aid=company.app           Application Identifier
//     &je=true                   Java Enabled?
//     &fl=10%201%20r103          Flash Version
//     
//     &dh=foo.com                Document Host Name
//     &dl=http%3A%2F%2Ffoo.com%2Fhome%3Fa%3Db
//                                Document location URL
//     &dp=%2Ffoo                 Document Path
//     &dt=Name                   Document Title
//     &linkid=DOM                ID of a clicked DOM element
//  
//  
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

global.juju_googlytics_validation = !argument0;
global.juju_googlytics_reporting = argument1;
global.juju_googlytics_httpMap = ds_map_create();

global.juju_googlytics_parameters  = "v=1&ds=app&dl=localhost";
global.juju_googlytics_parameters += "&tid=" + argument2; //tracking ID
global.juju_googlytics_parameters += "&cid=" + string( argument3 ); //customer ID
global.juju_googlytics_parameters += "&aip=" + string( argument4 );
global.juju_googlytics_parameters += argument5; //dev-specified paramters

if ( global.juju_googlytics_validation ) show_debug_message( "!!! juju_googlytics set to validation mode. Data will only be sent to the validation server." );
