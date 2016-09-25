///scr_juju_googlytics_hit_timing( category, name, time, extra parameters )
//  
//     &utl=label    Label
//     &plt=60       Page Load Time (ms)
//     &dns=43       DNS Lookup Time (ms)
//     &pdt=500      Page Download Time (ms)
//     &rrt=100      Redirect Response Time (ms)
//     &tcp=500      TCP Connect Time (ms)
//     &srt=120      Server Response Time (ms)
//     &dit=40       DOM Load Time (ms)
//     &clt=20       Content Load Time (ms)
//  
//  https://developers.google.com/analytics/devguides/collection/protocol/v1/parameters#utc
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


var parameters = scr_juju_googlytics_data();
parameters += "&t=timing";

parameters += "&cd=" + scr_ggeisha_url_encode( room_get_name( room ) );
parameters += "&utc=" + scr_ggeisha_url_encode( argument0 );
parameters += "&utv=" + scr_ggeisha_url_encode( argument1 );
parameters += "&utt=" + scr_ggeisha_url_encode( argument2 );
parameters += argument3

parameters += "&z=" + string( irandom( 99999999999 ) );

scr_juju_googlytics_send( parameters );
