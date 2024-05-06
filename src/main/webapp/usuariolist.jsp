<div class="row">
    <!--  div class="class="alert alert-success" ngIf="message">{{message}}</div> -->
    
    <div class="container">
        <h3 class="text-center">Listado de Usuarios</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar Nuevo Usuario</a>
            <br>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Pais</th>
                    <th>Acciones</th>
                </tr>
            </thead>
			<tbody>
            <!-- for (Todo todo : todos) { -->
            <c:forEach var= "usuario" items="${listUsuarios}">
            
           		<tr>
           			<td>
           				<c:out value="${usuario.id}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.nombre}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.email}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.pais}"/>
         			</td>
         			<td><a href="edit?id=<c:out value='${usuario.id}' />">Editar</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href ="delete?id=<c:out value='${usuario.id}' />">Eliminar </a> </td>
         		</tr>
         	</c:forEach>
         	<!-- } -->
         </tbody>
         </table>
         </div>
         </div>
   
    </tbody>

    </table>

    </div>

