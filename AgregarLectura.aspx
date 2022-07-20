<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="EjercicioPrueba4.AgregarLectura" %>
       

<asp:Content ID="Conten1" ContentPlaceHolderID="Contenido" runat="server">

    <div class="row">
     
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajeLbl" CssClass="text-success"></asp:Label>
            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                <a href="AgregarLetura.aspx"></a>
                    <h3>Agregar Lecturas</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idmedidor">ID Medidor: </label>
                        <asp:DropDownList runat="server" ID="dropdown"  CssClass="form-control">

                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="nombreTxt">fecha: </label>
                        <asp:Calendar ID = "Calendar1" runat = "server" SelectionMode="DayWeekMonth"
                            onselectionchanged="Calendar1_SelectionChanged" >
                            </asp:Calendar>
                        

                    </div>

                    <div class="form-group">
                        <label for="nombreTxt">hora: </label>
                        <asp:TextBox ID="hora" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Ingresa hora" controltovalidate="hora" runat="server">
                </asp:requiredfieldvalidator>
                    <div class="form-group">
                        <label for="nombreTxt">minutos: </label>
                        <asp:TextBox ID="minutos" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator3" forecolor="Red" errormessage="Ingresa un Minutos" controltovalidate="minutos" runat="server">
                </asp:requiredfieldvalidator>

                    <div class="form-group">
                        <label for="nombreTxt">Valor Consumo: </label>
                        <asp:TextBox ID="valorConsum" CssClass="form-control" runat="server"></asp:TextBox> 
                    </div>
                     <asp:requiredfieldvalidator id="RequiredFieldValidator4" forecolor="Red" errormessage="Ingresa valor lectura" controltovalidate="valorConsum" runat="server">
                </asp:requiredfieldvalidator>
                 
                    <asp:rangevalidator errormessage="Ingresa un valor entre 1 y 600" forecolor="Red" controltovalidate="valorConsum" minimumvalue="1" maximumvalue="600" runat="server">
            </asp:rangevalidator>

                    <asp:rangevalidator errormessage="Ingresa una hora valida (Horario 24 horas)" forecolor="Red" controltovalidate="hora" minimumvalue="1" maximumvalue="24" runat="server">
            </asp:rangevalidator>
                    <asp:rangevalidator errormessage="Ingrese Minutos Validos" forecolor="Red" controltovalidate="minutos" minimumvalue="1" maximumvalue="59" runat="server">
            </asp:rangevalidator>


                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" Text="Agregar" CssClass="btn btn-primary" OnClick="agregarBtn_Click"/>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
