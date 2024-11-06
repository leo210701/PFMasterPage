<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ListaDeCompras.Master" AutoEventWireup="true" CodeBehind="ShoppingKart.aspx.cs" Inherits="AppListaDeCompras.ShoppingKart" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header del carrito -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Carrito de Compras</h1>
                <p>
                    Aquí puedes revisar y gestionar los productos que deseas comprar.
                </p>
            </div>
        </div>

        <!-- Productos en el carrito -->
        <div class="row">
            <div class="col-12 col-md-8 mb-4">
                <!-- Ejemplo de un producto en el carrito -->
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <asp:Image CssClass="img-fluid rounded-start" runat="server" ImageUrl="~/assets/img/category_img_01.jpg" AlternateText="Product Image" />
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">Nombre del Producto</h5>
                                <p class="card-text">Descripción breve del producto o sus características.</p>
                                <p class="card-text">
                                    <small class="text-muted">Precio: $99.99</small>
                                </p>
                                <asp:Button CssClass="btn btn-danger" runat="server" Text="Eliminar" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Total y botón de checkout -->
            <div class="col-12 col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Resumen del Carrito</h5>
                        <p class="card-text">Total de productos: 3</p>
                        <p class="card-text">Total a pagar: $299.97</p>
                        <asp:Button CssClass="btn btn-success w-100" runat="server" Text="Proceder al Pago" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
