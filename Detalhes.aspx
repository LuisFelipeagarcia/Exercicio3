<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Exercicio3.Detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">Aluno:</div>
    <div class="container">
            <div class="row" style="margin-top:15px">
                <div class="col-md-4">
                    <label>ID:</label>
                    <asp:TextBox ID="txtID" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:15px">
                <div class="col-md-4">
                    <label>Nome:</label>
                    <asp:TextBox ID="txtNome" Enabled="false" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Sexo: </label>
                    <asp:DropDownList ID="ddlSexo"  Enabled="false" runat="server" CssClass="form-control">
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                        <asp:ListItem Value="N">Outro/Prefiro não informar</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2">
                    <label>Data de Nascimento: </label>
                    <asp:TextBox ID="txtDataNasc" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>RA: </label>
                    <asp:TextBox ID="txtRA" Enabled="false" CssClass="form-control" MaxLength="50" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:15px">
                <div class="col-md-4">
                    <label>Curso:</label>
                    <asp:TextBox ID="txtCurso" Enabled="false" CssClass="form-control" MaxLength="15" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Ano Ingress:</label>
                    <asp:TextBox ID="txtIngress" Enabled="false"  CssClass="form-control" MaxLength="15" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Email: </label>
                    <asp:TextBox ID="txtEmail" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Logradouro: </label>
                    <asp:TextBox ID="txtLog" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Número: </label>
                    <asp:TextBox ID="txtNum" Enabled="false" CssClass="form-control" MaxLength="5" runat="server" ></asp:TextBox>
                </div>                
            </div>

            <div class="row" style="margin-top:15px">
                <div class="col-md-4">
                    <label>Bairro:</label>
                    <asp:TextBox ID="txtBairro" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label>Cidade: </label>
                    <asp:TextBox ID="txtCidade" Enabled="false" MaxLength="200" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>UF: </label>
                    <asp:TextBox ID="txtUF" Enabled="false" CssClass="form-control" MaxLength="2" runat="server"></asp:TextBox>
                </div>
            </div>

        <div class="row" style="margin-top:15px">
            <div class="col-md-12">
                <label>Complemento: </label>
                <asp:TextBox ID="txtComp" Enabled="false" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox>
            </div>
        </div>
        </div>
</asp:Content>
