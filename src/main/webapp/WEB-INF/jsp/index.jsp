<%@ page import="com.student.manager.sorter.SortTypes" %>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <title>Student grade sorter simple app</title>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <div class="starter-template">
        <h1>Student sorter sample application</h1>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"
                integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous">
        </script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
                integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous">
        </script>

        <h2>Please choose a file with students and their grades and a sorting algorithm</h2>
        <br>

        <label>
            <select id="algorithm">
                <option value="">Choose Sort type</option>
                <% for(int i = 0; i < SortTypes.values().length; i++){ %>
                <option value="<%= SortTypes.values()[i] %>" > <%=SortTypes.values()[i]%> </option>
                <%}%>
            </select>
        </label>
        <br><br>

        <!-- HTML5 Input Form Elements -->
        <input id="fileupload" type="file" name="fileupload" />
        <br>
        <button id="upload-button" onclick="postStudentsInfo()"> Upload </button>

        <!-- Ajax JavaScript form Upload to Spring Boot Logic -->
        <script>
            async function postStudentsInfo()
            {
                var algorithms = document.getElementById("algorithm");
                var selectedAlgorithm = algorithms.options[algorithms.selectedIndex].value;

                let formData = new FormData();
                formData.append("file", fileupload.files[0]);
                formData.append("type", selectedAlgorithm);

                if (selectedAlgorithm === "")
                {
                    alert("Please choose a sorting algorithm from a dropdown menu")
                    return
                }

                let response = await fetch('/upload',
                    {
                    method: "POST",
                    body: formData
                });

                if (response.status === 200)
                {
                    alert("File successfully uploaded.");
                } else {
                    alert("Please choose a .txt file with students and grades")
                }

            }
        </script>

        <%--display result of student file sorting--%>

    </div>

</div>

</body>

</html>