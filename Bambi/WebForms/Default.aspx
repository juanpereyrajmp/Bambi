<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bambi.WebForms.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="fullscreen-div">
        <h1>Bambi</h1>
        <h4>Make it up</h4>
    </div>

    <hr />

    <div class="content-below-fold text-center">
        <p style="font-size: 25px;">
            <label style="font-family: 'DM Serif Display'; font-size: 30px;">Bambi</label>
            es la aplicación ideal para maquilladoras profesionales que desean llevar la gestión 
            de su trabajo y sus clientes al siguiente nivel. Con
            <label style="font-family: 'DM Serif Display'; font-size: 30px;">Bambi</label>, vas a poder organizar tus consultas, precios, gestionar
            tus tiempos, mantener un registro detallado de tus clientes y sus preferencias, 
            y administrar tu agenda de manera eficiente y efectiva.
        </p>

        <hr style="margin-top: 50px;" />

        <div class="container text-center">
            <div class="row align-items-start">

                <div class="col mt-4">
                    <i class="fa-solid fa-briefcase"></i>
                    <h2>Trabajos</h2>
                    <p>Programá nuevos trabajos con facilidad. Recibí recordatorios y mirá el listado acorde a lo que necesites.</p>
                </div>

                <div class="col mt-4">
                    <i class="fa-solid fa-user-plus"></i>
                    <h2>Clientes</h2>
                    <p>Guardá información detallada de tus clientes, incluyendo notas de cada una, direcciones interactivas y más</p>
                </div>

                <div class="col mt-4">
                    <i class="fa-solid fa-question"></i>
                    <h2>Consultas</h2>
                    <p>Registrá las consultas que te envien para poder hacerles seguimiento y gestionar su estado</p>
                </div>
            </div>
            <div class="row align-items-start">
                <div class="col mt-4">
                    <i class="fa-regular fa-calendar"></i>
                    <h2>Calendario</h2>
                    <p>Mirá en el calendario las próximas fechas y manejalo de una manera cómoda</p>
                </div>

                <div class="col mt-4">
                    <i class="fa-solid fa-calculator"></i>
                    <h2>Calculadora</h2>
                    <p>Calculá a que hora deberias empezar un trabajo de forma mucho más fácil</p>
                </div>

                <div class="col mt-4">
                    <i class="fa-solid fa-file-arrow-down"></i>
                    <h2>Descargas</h2>
                    <p>Descargá tus precios para enviar a quien quieras en formato pdf</p>
                </div>
            </div>
        </div>
        <a href="Login.aspx" class="btn btn-dark btn-md">¡Sumate!</a>
    </div>

</asp:Content>

