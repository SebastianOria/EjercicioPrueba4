<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerLectura.aspx.cs" Inherits="EjercicioPrueba4.VerLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
         <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Lecturas</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for ="nivelDdl"> Filtrar por Medidor: </label>
                        <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="nivelDdl_SelectedIndexChanged" runat="server" ID="nivelDdl">
             
                        </asp:DropDownList>
                    </div>
                    <asp:GridView CssClass="table table-hover table-bordered" 

                        OnRowCommand="grillaLecturas_RowCommand"
                        AutoGenerateColumns="false" runat="server" ID="grillaLecturas">
                       <Columns>
                           <asp:BoundField DataField="Idmedidor" HeaderText="ID MEDIDOR" />
                       </Columns>
                        <Columns>
                           <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                       </Columns>
                    
                        <Columns>
                           <asp:BoundField DataField="Consumo" HeaderText="Consumo" />
                       </Columns>
                    </asp:GridView>
                     <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" Text="Actualizar" CssClass="btn btn-primary" OnClick="actualizarBtn_Click"/>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
