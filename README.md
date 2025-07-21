# NorthWind_DB
SQL Server Project


## 🧾 Resumen general del negocio

Northwind es una empresa mayorista ficticia que **compra productos a proveedores y los vende a clientes** en distintos lugares del mundo. La empresa tiene empleados que procesan los pedidos, y utiliza compañías de transporte para entregar los productos a los clientes.

El modelo representa las operaciones típicas de un negocio de ventas y distribución:

- **Clientes** hacen **pedidos** de productos.
- Cada pedido contiene **uno o más productos**, con cantidades y precios específicos.
- Los **productos** pertenecen a una **categoría** y son suministrados por un **proveedor**.
- Los **empleados** se encargan de gestionar los pedidos.
- La entrega del pedido se realiza a través de un **transportista**.

---

## Modelo Dimensional - Dimensiones

| Dimensión     | Descripción                              |
|---------------|------------------------------------------|
| `DimCustomer` | Información del cliente (`Customers`)    |
| `DimProduct`  | Producto + categoría + proveedor         |
| `DimEmployee` | Datos del empleado (`Employees`)         |
| `DimDate`     | Calendario completo                      |

---

## Tablas de Hechos

### `FactSales` (Ventas)
- **Origen**: `Orders` + `Order Details`
- **Grano**: Línea de pedido (producto por pedido)
- **Medidas**:
  - `Quantity`
  - `UnitPrice`
  - `Discount`
  - `TotalAmount` = `Quantity * UnitPrice * (1 - Discount)`

---

## KPIs (Indicadores Clave de Desempeño)

### Ventas
- Total de ventas
- Ventas por cliente / producto / categoría / región / empleado
- Comparaciones mensuales y anuales (YoY, MoM)