<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PROYECTOFINAL.CRUDCLIENTES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
        <br />
        <div class="mx-auto" style="width:300px">
            <h2>Listado de registros</h2>
        </div>
        
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">
                    <asp:Button ID="BtnCreate" runat="server" CssClass="btn-success form-control-sm" Text="Nuevo Cliente" OnClick="BtnCreate_Click"/>
                </div>
            </div>

        </div>
        <br />
        <div class="container row">
            <div class="table small">
                <asp:GridView runat="server" ID="gclientes" class="table table-borderless table-hover" >
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones del administrador">
                            <ItemTemplate>
                                <asp:Button ID="BtnRead" OnClick="BtnRead_Click" runat="server" Text="Read" CssClass="btn form-control-sm btn-info"/>
                                 <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" runat="server" Text="Update" CssClass="btn form-control-sm btn-info" />
                                 <asp:Button ID="BtnDelete" OnClick="BtnDelete_Click" runat="server" Text="Delete" CssClass="btn form-control-sm btn-info" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
    
   
</asp:Content>
