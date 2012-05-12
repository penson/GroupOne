<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<title>Vendor Page</title>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />

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
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="page_vendorHome.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="page_addCoupon.jsp" target="_self" title="Add Coupon">Add Coupon</a></li>
   <li><a href="page_deleteCoupon.jsp" target="_self" title="Delete Coupon">Delete Coupon</a></li>
   <li><a href="page_vendorAccount.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="index.jsp" target="_self" title="Log Out">Log Out</a></li>
	
</ul>

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