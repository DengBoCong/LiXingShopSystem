'use strict';
$(document).ready(function() {
    floatchart()
    $(window).on('resize', function() {
        floatchart();
    });
    // [ Bar Chart2 ] Start
       var chart = AmCharts.makeChart("bar-chart2", {
           "type": "serial",
           "theme": "light",
           "marginTop": 10,
           "marginRight": 0,
           "valueAxes": [{
               "id": "v1",
               "position": "left",
               "axisAlpha": 0,
               "lineAlpha": 0,
               "autoGridCount": false,
               "labelFunction": function(value) {
                   return +Math.round(value) + "00";
               }
           }],
           "graphs": [{
               "id": "g1",
               "valueAxis": "v1",
               "lineColor": ["#1de9b6", "#1dc4e9"],
               "fillColors": ["#1de9b6", "#1dc4e9"],
               "fillAlphas": 1,
               "type": "column",
               "title": "订单数",
               "valueField": "sales",
               "columnWidth": 0.3,
               "legendValueText": "[[value]](笔)",
               "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](笔)</b>"
           },{
               "id": "g2",
               "valueAxis": "v1",
               "lineColor": ["#a389d4", "#899ed4"],
               "fillColors": ["#a389d4", "#899ed4"],
               "fillAlphas": 1,
               "type": "column",
               "title": "销售额 ",
               "valueField": "visits",
               "columnWidth": 0.3,
               "legendValueText": "[[value]](万元)",
               "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](万元)</b>"
           },{
               "id": "g3",
               "valueAxis": "v1",
               "lineColor": ["#04a9f5", "#049df5"],
               "fillColors": ["#04a9f5", "#049df5"],
               "fillAlphas": 1,
               "type": "column",
               "title": "新增用户",
               "valueField": "clicks",
               "columnWidth": 0.3,
               "legendValueText": "[[value]](人)",
               "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](人)</b>"
           }],
           "chartCursor": {
               "pan": true,
               "valueLineEnabled": true,
               "valueLineBalloonEnabled": true,
               "cursorAlpha": 0,
               "valueLineAlpha": 0.2
           },
           "categoryField": "Year",
           "categoryAxis": {
               "dashLength": 1,
               "gridAlpha": 0,
               "axisAlpha": 0,
               "lineAlpha": 0,
               "minorGridEnabled": true
           },
           "legend": {
               "useGraphSettings": true,
               "position": "top"
           },
           "balloon": {
               "borderThickness": 1,
               "shadowAlpha": 0
           },
           "dataProvider": [{
               "Year": "2014",
               "sales": 2,
               "visits": 4,
               "clicks": 3
           },{
               "Year": "2015",
               "sales": 4,
               "visits": 7,
               "clicks": 5
           },{
               "Year": "2016",
               "sales": 2,
               "visits": 3,
               "clicks": 4
           },{
               "Year": "2017",
               "sales": 4.5,
               "visits": 6,
               "clicks": 4
           }]
       });
   // [ Bar Chart2 ] end

   
});
$('#mobile-collapse').on('click', function() {
    setTimeout(function() {
        floatchart();
    }, 700);
});

function floatchart() {
    $(function() {
        // [ flot options ]
        var options = {
            legend: {
                show: false
            },
            series: {
                label: "",
                curvedLines: {
                    active: true,
                    nrSplinePoints: 20
                },
            },
            tooltip: {
                show: true,
                content: "x : %x | y : %y"
            },
            grid: {
                hoverable: true,
                borderWidth: 0,
                labelMargin: 0,
                axisMargin: 0,
                minBorderMargin: 0,
            },
            yaxis: {
                min: 0,
                max: 80,
                color: 'transparent',
                font: {
                    size: 0,
                }
            },
            xaxis: {
                color: 'transparent',
                font: {
                    size: 0,
                }
            }
        };
        var options_nospace = {
            legend: {
                show: false
            },
            series: {
                label: "",
                curvedLines: {
                    active: true,
                    nrSplinePoints: 0
                },
            },
            tooltip: {
                show: true,
                content: "x : %x | y : %y"
            },
            grid: {
                hoverable: true,
                borderWidth: 0,
                labelMargin: 0,
                axisMargin: 0,
                minBorderMargin: 20,
            },
            yaxis: {
                min: 0,
                max: 80,
                color: 'transparent',
                font: {
                    size: 0,
                }
            },
            xaxis: {

            }
        };

    });
}
