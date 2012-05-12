<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<head>
<style type="text/css">
TABLE
.menu { border-collapse: collapse; float:right;}
</style>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />

<link rel="stylesheet" href="amcharts/style.css" type="text/css">
<script src="amcharts/amcharts.js" type="text/javascript"></script>        
        <script type="text/javascript">
            var chart;
            var chartData = [];
            var chartCursor;
            
            AmCharts.ready(function () {
            	chartData.push({
            		date: new Date(2012,02,02),
            		sold: 10
            	},{
            		date: new Date(2012,02,05),
            		sold: 20
            	},{
            		date: new Date(2012,02,06),
            		sold: 100
            	},{
            		date: new Date(2012,02,07),
            		sold: 30
            	});
            		

                // SERIAL CHART    
                 chart = new AmCharts.AmSerialChart();
                chart.pathToImages = "amcharts/";
				chart.dataProvider = chartData;
                chart.marginLeft = 10;
                chart.categoryField = "date";
                chart.zoomOutButton = {
                    backgroundColor: '#000000',
                    backgroundAlpha: 0.15
				
                };

                // listen for "dataUpdated" event (fired when chart is rendered) and call zoomChart method when it happens
                chart.addListener("dataUpdated", zoomChart);

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
                categoryAxis.minPeriod = "DD"; // our data is daily, so we set minPeriod to DD
                categoryAxis.dashLength = 2;
                categoryAxis.gridAlpha = 0.15;
                categoryAxis.axisColor = "#DADADA";

                // value                
                var valueAxis1 = new AmCharts.ValueAxis();
                valueAxis1.axisColor = "#FF0000";
                valueAxis1.axisThickness = 2;
                valueAxis1.gridAlpha = 0;
                chart.addValueAxis(valueAxis1);

                // GRAPH
                var graph1 = new AmCharts.AmGraph();
                graph1.valueAxis = valueAxis1; // we have to indicate which value axis should be used
                graph1.title = "Total Coupons Sold";
                graph1.valueField = "sold";
                graph1.bullet = "round";
                chart.addGraph(graph1);

                // CURSOR
                var chartCursor = new AmCharts.ChartCursor();
				chartCursor.cursorAlpha = 0;
                chartCursor.cursorPosition = "mouse";
				chartCursor.categoryBalloonDateFormat = " MMM DD";
                chart.addChartCursor(chartCursor);

                // SCROLLBAR
                var chartScrollbar = new AmCharts.ChartScrollbar();
                chart.addChartScrollbar(chartScrollbar);
                
                var legend = new AmCharts.AmLegend();
                legend.marginLeft = 0;
                chart.addLegend(legend);

                // WRITE
                chart.write("chartdiv");
            });

            // this method is called when chart is first inited as we listen for "dataUpdated" event
            function zoomChart() {
                // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                chart.zoomToIndexes(0,100);
            }
            
            
			            
        </script>
<meta content="text/html; charset=iso-8859-1"
 http-equiv="Content-Type">
 <title>Vendor Page</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<div id="banner">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0" style="margin-bottom:0;">

<form id="homePage" action="HomePage" method="post">
    	<table style="margin-right:0px;margin-left:auto;">
    	<tr>
    	<td class="menu" align="right">

<button type="submit" style="border: 0; background: transparent" name="button" value="Home"><img src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Add Coupon"><img src="buttons/addUp.png" onmouseover="setOverImg('5','');" onmouseout="setOutImg('5','');" id="button5" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Delete Coupon"><img src="buttons/deleteUp.png" onmouseover="setOverImg('6','');" onmouseout="setOutImg('6','');" id="button6" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Account"><img src="buttons/accountUp.png" onmouseover="setOverImg('3','');" onmouseout="setOutImg('3','');" id="button3" alt="submit" border="0"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Log Out"><img src="buttons/logoutUp.png" onmouseover="setOverImg('4','');" onmouseout="setOutImg('4','');" id="button4" alt="submit" border="0"></button>

</td>
</tr>
</table>
</form>
</div>


<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 100%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:blue">Welcome ${account.getFirstName()}</h1>
  <div align="center">
    <p>
    <p>
    <p>   
    <p><h1 style="text-align:center; color:blue">Current Coupon Stats</h1>
</div></td>
</tr>
</table>
<p>
<p>
<div id="chartdiv" style="width: 100%; height: 400px;"></div>
  
</body>
</html>