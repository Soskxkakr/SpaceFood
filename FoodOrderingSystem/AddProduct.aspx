<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="FoodOrderingSystem.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('assets/bg_2.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate mb-5 text-center">
                    <h2 class="mb-0 bread">Register a new product</h2>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper px-md-4">
						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Add product</h3>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="productImage">Product Image</label>
												<asp:FileUpload ID="productImage" runat="server" CssClass="form-control" />
												<asp:RequiredFieldValidator
                                                    ID="ProductImageRequiredFieldValidator"
                                                    runat="server"
                                                    ControlToValidate="productImage"
                                                    ErrorMessage="Image Required!"
                                                    ForeColor="Red"
                                                    CssClass="ml-2" 
													Display="Dynamic"
													Font-Size="14px" />
											</div>
										</div>
										<div class="col-md-12"> 
											<div class="form-group">
												<label class="label" for="txtName">Product Name</label>
												<asp:TextBox runat="server" CssClass="form-control" id="txtName" placeholder="Apple Pie with Peanut" />
												<asp:RequiredFieldValidator
                                                    ID="ProductNameRequiredFieldValidator"
                                                    runat="server"
                                                    ControlToValidate="txtName"
                                                    ErrorMessage="Required Field!"
                                                    ForeColor="Red"
                                                    CssClass="ml-2" 
													Display="Dynamic"
													Font-Size="14px" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="txtPrice">Price</label>
												<div class="input-group">
                                                    <asp:TextBox runat="server" CssClass="form-control w-5" ID="txtCurrency" Text="RM" Enabled="False" />
													<asp:TextBox runat="server" CssClass="form-control w-75" ID="txtPrice" placeholder="10.0" />
												</div>
												<asp:RequiredFieldValidator
                                                    ID="PriceFieldValidator"
                                                    runat="server"
                                                    ControlToValidate="txtPrice"
                                                    ErrorMessage="Required Field!"
                                                    ForeColor="Red"
                                                    CssClass="ml-2" 
													Display="Dynamic"
													Font-Size="14px" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="txtPassword">Category</label>
												<asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
													<asp:ListItem>Burger</asp:ListItem>
													<asp:ListItem>Chicken</asp:ListItem>
													<asp:ListItem>Drink</asp:ListItem>
													<asp:ListItem>Side</asp:ListItem>
												</asp:DropDownList>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<asp:Button ID="btnRegister" Text="Register Product" CssClass="btn btn-primary btn-block" runat="server" OnClick="BtnRegister_Click" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
                                                <asp:Label runat="server" ID="lblFeedback" Text="Register Successful!" ForeColor="ForestGreen" Visible="False" />
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<a href="ManageProduct.aspx" style="transition: none; color: inherit;">
													<p>
														<span class="fa fa-arrow-left"></span>
														Previous
													</p>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
