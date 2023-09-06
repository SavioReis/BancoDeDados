CREATE TABLE Fornecedor (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(500),
    Contato CHAR(15)
);
CREATE TABLE Produto (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    FornecedorID INT,
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedor(FornecedorID)
);
CREATE TABLE Cliente (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL
);
CREATE TABLE Venda (
    VendaID INT AUTO_INCREMENT PRIMARY KEY,
    DataVenda DATE NOT NULL,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);
CREATE TABLE ProdutoVenda (
    ProdutoVendaID INT AUTO_INCREMENT PRIMARY KEY,
    VendaID INT,
    ProdutoID INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (VendaID) REFERENCES Venda(VendaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);
