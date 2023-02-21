<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="CRUDCLIENTES.aspx.cs" Inherits="PROYECTOFINAL.CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="mx-auto" style="width:250px">
        <asp:Label ID="lbltitulo" runat="server" CssClass="h2"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div>
            <div class="mb-3">
            <label class="form-label">Codigo Cliente</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtcodcliente"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Nombre</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtnombre"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Apellido</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtapellido"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Cui</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtcui"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Nit</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtnit"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Direccion</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtDireccion"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Correo Electronico</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbtcorreo"></asp:TextBox>
        </div>
        <asp:Button ID="BtnCreate" CssClass="btn btn-primary" runat="server" Text="Create" Visible="false" OnClick="BtnCreate_Click"/>
        <asp:Button ID="BtnUpdate" CssClass="btn btn-primary" runat="server" Text="Update" Visible="false" OnClick="BtnUpdate_Click"/>
        <asp:Button ID="BtnDelete" CssClass="btn btn-primary" runat="server" Text="Delete" Visible="false" OnClick="BtnDelete_Click"/>
        <asp:Button ID="BtnVolver" CssClass="btn btn-primary" runat="server" Text="Volver" Visible="True" OnClick="BtnVolver_Click"/>

        </div>
        


    </form>
</asp:Content>
