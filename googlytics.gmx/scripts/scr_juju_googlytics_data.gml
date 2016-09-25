///scr_juju_googlytics_data()
//  
//  Creates a parameter string for volatile data.
//  The developer may want to edit this to add extra tracking variables.
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


var parameters = global.juju_googlytics_parameters;
parameters += "&cd=" + scr_ggeisha_url_encode( room_get_name( room ) );
parameters += "&sr=" + string( display_get_width() ) + "x" + string( display_get_height() );
parameters += "&vp=" + string( window_get_width() ) + "x" + string( window_get_height() );

return parameters;
