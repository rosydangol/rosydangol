<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>My CV</title>
</head>
<body>
    <div class="wrapper">
        <div style="text-align: center" class="top">
            <span class="person-name">
                Rosy Dangol
            </span>
        </div>
        <div class="main">
            <div class="contact-info">
           
                <div style="text-align: right" id="photo">
                    <img src="image/rosy.jpg"
                     alt="Photo of a person"
                    width="150px" height="150px">               
                </div>
                <hr>
                <div class="contact">
                    <div id="title">
                        <h1> <% Response.Write("CONTACT") %> </h1>
                    </div>
                    <div class="info">
                        <p>Email:<%
                            Response.Write("rosydangol98@gmail.com")
                        %></p>
                   
                    </div>
                    <div class="info">
                        <p>Mobile no:
                            <% Response.Write("9869204008") %>  
                        </p>
                    </div>
                    <div class="info">
                        <span>
                            Address:
                            <% Response.Write("Imadol, Lalitpur, Nepal")
                             %>
                        </span>
                    </div>
                </div>
                <hr>  
            </div>
            <div class="about">
                <div class="about-me">
                <h1>Education</h1>
               <p> <%
                   Dim fs, fobj

                set fs = CreateObject("Scripting.FileSystemObject")
                set fobj = fs.OpenTextFile(Server.MapPath("Education.txt"),1)
                Response.write(fobj.ReadAll)
                fobj.Close
                
                %> </p>
                </div>
                <hr />
                <div class="about-me">
                <h1>Hobbies</h1>
                <p>
                    <%
                        Dim fob
                set fob = fs.OpenTextFile(Server.MapPath("Hobbies.txt"),1)
                Response.write(fob.ReadAll)
                fob.Close
                    %>
                </p>
                </div>
                <hr />
                <div class="about-me">
                <h1>Skills</h1>
                <p>
                     <%
                        Dim fm
                set fb = fs.OpenTextFile(Server.MapPath("Skills.txt"),1)
                Response.write(fb.ReadAll)
                fb.Close
                    %> 
                </p>
                </div>
                <hr />
                <div class="about-me">
                <h1>Strength</h1>
                <p>
                     <%
                        Dim fb
                set fb = fs.OpenTextFile(Server.MapPath("Strength.txt"),1)
                Response.write(fb.ReadAll)
                fb.Close
                    %> 
                </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>