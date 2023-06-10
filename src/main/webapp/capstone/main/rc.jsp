<%@ include file="mainP.jsp" %>
<div id="content-area">
  <div class="contents">
	
    <h1>RC Car Project</h1>
    <h4>Introduction</h4>
    <a>This Project for help who make <strong>Programmable Rc Car with Arduino. </strong><br>
    This guide will show you how to build one yourself and also If you have any idea or question leave comment in this thread.</a>
    <h4>Required Product</h4>
    <table class="rctable" width="688" border="1">
        <tbody><tr>
          <td width="214"><strong><div align="center">Part</div></strong></td>
          <td width="78"><strong><div align="center">Quantity</div></strong></td>
          <td width="82"><strong><div align="center">Cost</div></strong></td>
          <td width="118"><div align="center"><strong>Image</strong></div></td>
        </tr>
        <tr>
          <td>Arduino Uno</td>
          <td><div align="center">1</div></td>
          <td><div align="center">5300</div></td>
          <td><div align="center"><a href="../img/image15.png">img link</div></td>
        </tr>
        <tr>
          <td>DC Motor and Wheel set</td>
          <td><div align="center">4</div></td>
          <td><div align="center">22000</div></td>
          <td><div align="center"><a href="../img/image01.png">img link</a><br><a href="../img/image02.png">img link</a></div></td>
        </tr>
        <tr>
          <td>L298N Motor Driver</td>
          <td><div align="center">1</div></td>
          <td><div align="center">3300</div></td>
          <td><div align="center"><a href="../img/image16.png">img link</a></div></td>
        </tr>
        <tr>
          <td>18650 Battery</td>
          <td><div align="center">1</div></td>
          <td><div align="center">2800</div></td>
          <td><div align="center"><a href="../img/image03.png">img link</a></div></td>
        </tr>
        <tr>
          <td>SP32-cam + OV2640 Camera</td>
          <td><div align="center">1</div></td>
          <td><div align="center">15400</div></td>
          <td><div align="center"><a href="../img/image04.png">img link<br><a href="../img/image05.png">img link</a></div></td>
        </tr>
        <tr>
          <td>LM2596 DC-DC</td>
          <td><div align="center">1</div></td>
          <td><div align="center">2500</div></td>
          <td><div align="center"><a href="../img/image06.png">img link</a></div></td>
        </tr>
        <tr>
          <td>Mini Servo SG-90</td>
          <td><div align="center">1</div></td>
          <td><div align="center">1000</div></td>
          <td><div align="center"><a href="../img/image09.png">img link</a></div></td>
        </tr>
          <tr>
          <td>6mm Toggle Switch</td>
          <td><div align="center">1</div></td>
          <td><div align="center">660</div></td>
          <td><div align="center"><a href="../img/image10.png">img link</a></div></td>
        </tr>
          <tr>
          <td>CP2102 USB TO TTL</td>
          <td><div align="center">1</div></td>
          <td><div align="center">2000</div></td>
          <td><div align="center"><a href="../img/image11.png">img link</a></div></td>
        </tr>
          <tr>
          <td>HC-SR04</td>
          <td><div align="center">1</div></td>
          <td><div align="center">1100</div></td>
          <td><div align="center"><a href="../img/image12.png">img link</a></div></td>
        </tr>
          <tr>
          <td>Resistor For LED (220ohm)</td>
          <td><div align="center">10</div></td>
          <td><div align="center">330</div></td>
          <td><div align="center"><a href="../img/image13.png">img link</a></div></td>
        </tr>
          <tr>
          <td>3Colors LED Module</td>
          <td><div align="center">1</div></td>
          <td><div align="center">2900</div></td>
          <td><div align="center"><a href="../img/image14.png">img link</a></div></td>
        </tr>
          <tr>
          <td>Mini BreadBoard and Cable (M-F, M-M, F-F)</td>
          <td><div align="center"></div></td>
          <td><div align="center"></div></td>
          <td><div align="center"><a href="../img/image07.png">img link<br><a href="../img/image08.png">img link</a></div></td>
        </tr>
        <tr>
          <td><strong>Total (WON)</strong></td>
          <td><div align="center"></div></td>
          <td><div align="center"><strong>&#8361; 73090</strong></div></td>
          <td><div align="center"></div></td>
        </tr>
      </tbody>
      </table>
      <h4>Configure Acquisition</h4>
      <span>File -> Preferences -> Enter the following address in Additional Boards Manager URLs</span>
      <span>https://dl.espressif.com/dl/package_esp32_index.json</span>
      <span>Tools -> Boards -> Board Manager -> Search for esp32 -> Install</span>
      <span>Sketch -> Include Library -> Add ZIP Library -> Download -> Open File</span>
      <span>Change Preferences</span>
      <span>My pc -> Arduino -> libraries -> ESPAsyncWebserver -> src -> AsyncWebSocket -> Replace MESSAGES 32 with MESSAGES 1 -> Save</span>
      <span>Tools -> Board -> Select ESP32Wrover Module Change to Tools -> Partition Scheme -> Huge APP</span>
      
      <span><a href="https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbGVnRGxheGhpRkt0eEZBWDQzTjNiSmYyVkVZZ3xBQ3Jtc0ttdVRjcEZBSUdCWlY3WkVYbUFtbjhHb1lrYUR6SFpZOXRUczgxeC0xQk1iRXZzbDhLZ0Q3ell2T1pKN1l0SWxjQWhocUZtSjBRM2NJRk93MDFHNkNBTkExck91T2ZoNm5ubFhqakxOYndoSDhpaWNHbw&q=https%3A%2F%2Fgithub.com%2Fme-no-dev%2FAsyncTCP%2Farchive%2Frefs%2Fheads%2Fmaster.zip&v=8qpu4I5pLDg
">youtubelink1</a></span>
      <span><a href="https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbnA2bUt1S2VEUElIVkl6ZS0tLXZwdDRlNUtKd3xBQ3Jtc0tuZGE4X21LejEzVy1pTlNQVzhUOHR2OXVDQUhZYTBhOHltV1JMNW4xMzZxR1N1Tk9nY1JtYkFKOFFMNDNHb3FGdzN1T184UGkweDlLbjBjS0V1MzBIaFV2NlVLUm0wdENlUFVBcFcta2RnNE1aUmY2QQ&q=https%3A%2F%2Fgithub.com%2Fme-no-dev%2FESPAsyncWebServer%2Farchive%2Frefs%2Fheads%2Fmaster.zip&v=8qpu4I5pLDg
">youtubelink2</a></span>

<img src="../img/20.png">
<span>5V, GND, RXD, TXD of CP2102 respectively Connect to ESPcam-32's 5V, GND, U0R, U0T</span>
<img src="../img/21.png">
<span>Connect Io0 and GND of ESPCAM-32 with F-F wire</span>
After that, connect using computer USB port -> Enter code and upload -> When uploading is finished, disconnect Io0 and GND of ESPCAM-32 and press reset button -> Check urls through serial monitor -> Through Wi-Fi on smart phone Connect with rc car -> Control rc car by accessing url
  	  <h4>How-To Guide</h4>
  	  <span><a>Step.01 Attach the D.C motor to the woodlock</a></span><img src="../img/01.png">
  	  <span><a>Step.02 Attach L298N Motor Driver</a></span><img src="../img/02.png">
  	  <span><a>Step.03 Drill a hole in the wood rock and run the D.C motor wire out (arrow direction is forward)</a></span><img src="../img/03.png">
  	  <span><a>Step.04 Twist the same wires and connect them to the motor driver, and attach the breadboard</a></span><img src="../img/04.png">
  	  <span><a>Step.05 Connect the wheel to the D.C motor and connect the F-F wires to the motor driver respectively</a></span><img src="../img/05.png">
  	  <span><a>Step.06 To connect wires to motor driver pins, connect M-F wires to both ends of the left and right sides, and connect F-F wires to the 4 pins in the middle.</a></span><img src="../img/06.png">
  	  <span><a>Step.07 Connect the wires connected to the motor driver +, -, 5V, left and right ends to the breadboard</a></span><img src="../img/07.png">
  	  <span><a>Step.08 Attach the switch to the 18650 battery holder</a></span><img src="../img/08.png">
  	  <span><a>Step.09 Connect the black and red wires from the battery holder to the breadboard</a></span><img src="../img/09.png">
  	  <span><a>Step.10 Attach LM2596 and connect M-M wires to Out +, - and M-M wires to IN+ and -</a></span><img src="../img/10.png">
  	  <span><a>Step.11 Connect LM2596 IN +, - to +, - respectively on the breadboard</a></span><img src="../img/11.png">
  	  <span><a>Step.12 Connecting a sub motor using a woodlock</a></span><img src="../img/12.png">
  	  <span><a>Step.13 Insert the VCC of the sub motor into the woodlock 5 volt and connect the GND to the battery –line</a></span><img src="../img/13.png">
  	  <span><a>Step.14 Connect ESP32-CAM to Out +, - of LM2596</a></span><img src="../img/14.png">
  	  <span><a>Step.15 Connect motor drive IN 1, 2, 3, 4 to IO 12, 13, 14, 15 of ESP32-CAM</a></span><img src="../img/15.png">
  	  <span><a>Step.16 Connect ESP32-CAM's U0R to the breadboard's speed controller</a></span><img src="../img/16.png">
  	  <span><a>Step.17 Connect the promoter's signal line to the ESP32-CAM's IO2</a></span><img src="../img/17.png">
  	  <span><a>Step.18 Attach the ESP32-CAM to the servomotor using a woodlock and cable tie</a></span><img src="../img/18.png">
  	  <span><a>Step.19 18650 battery connected, powered RC car</a></span><img src="../img/19.png">
  </div>
</div>
  
  <div id="comment-area">
<%
String sql = "select * from comment where Bno= -1"; 
	pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
while(rs.next()){
%>

  <div id="comment_table_div">
        <table cellpadding=1 class="comment_table">
            <tr>
                <td style="font-weight: 800;">
                    [<%= rs.getString("nick") %>]
                </td>
                <td class="comment_table_content">
                    <div><%= rs.getString("Content") %></div>
                </td>
                <td align=center><%= rs.getString("cdate") %></td>
                <td class="deletebox">
                    <form action="./Comment_delete.jsp" method="post" id="comment_delete">
                        <div>
                            <input type="submit" value="X" class="delete">
                            <input type="hidden" name="Cno" value="<%=rs.getString("Cno")%>"><br>                          
                        </div>
				</form>
                </td>
            </tr>
        </table>
     </div>
  
<%
		}
		
%>
<div class="bottom">
<div class="writeComment">
    <form action="./CommentAction.jsp" method="post">
        <div id="comment"> 
          <textarea name="Content" rows="5" cols="50" placeholder="Enter your comment here.. "></textarea>
          <br><input class="comment_register" type="submit" value="leave comment">
          <input type="hidden" name="Bno" value="-1">
        </div>
    </form>
	</div>
  </div>   
</div>
     
  </body>
</html>