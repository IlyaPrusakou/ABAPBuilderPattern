# ABAPBuilderPattern

In this repository you can find implementation of Builder Pattern in ABAP.
The main point is the realisation of pattern is mad on special version of ABAP - ABAP for Cloud Development.
So that there is 100% cloud compitibility.

## Introduction

The Builder pattern is one of the classic creational design pattern. The main idea of the one is to separate process of creation of some class (Product, Car, Car Schema and etc.)
A logic for creation of Product class is handled to Builder class.

## Types of the Builder pattern

### 1. Simple Builder:
   
   ```mermaid
    graph LR;
    B[Builder class]-->C[Product class];
   ```
   
### 2. Builder with Director

   ```mermaid
    graph LR;
    A[Director class]-->B[Builder Class]-->C[Product class];
   ```

### 3. Builder with Direct and Interfaces
   
   ```mermaid
    graph LR;
    A[Director class]-->B[Builder A Interface]-->C[Product A Interface];
    D[Director class]-->E[Builder B Interface]-->F[Product B Interface];
    H[Director class]-->G[...]-->J[...];
   ```

## Semantical structure of pattern

All classes and interfaces can play roles of: 
1. Director 
2. Builder 
3. Product.

Regarding of Product role I would like to underline destinction of at least two type of specialization:

### 1. Factual specialization.

   Factual specialization means that all instances of product has the same class or interface, but they differs by data preserved into.
   The example:
   | Class type and components  | First Instance | Second Instance |
   | -------------------------- | ------------- | ------------- |
   | Class  | Car  | Car  |
   | Qualifield Atributes  | Model = 'BMW'  | Model = 'Porsche'  |
   | Fields  | price = '100 000'  | price = '100 000' |
   | Fields  | engine = 'V8'  | engine = 'V8' |

   ```mermaid
    graph TD;
    A[Car class]-->B[BMW instance];
    A[Car class]-->C[Porsche instance];
   ```

As you can see there are two instances of class Car, but they are distincted with qualified field model, which can be read-only field, set inside constructor.

### 2. Type specialization
   
   As you can guessed that type of specialization is based on usage of not only the same class with different values of qualified fields, but also different classes or interfaces.
   Moreover, there is room for implification of interfaces arised.
   The same example:
      | Class type and components  | First Instance | Second Instance |
   | -------------------------- | ------------- | ------------- |
   | Class  | BMW  |  Porsche |
   | Qualifield Atributes  | NO MATTER  | NO MATTER  |
   | Fields  | price = '100 000'  | price = '100 000' |
   | Fields  | engine = 'V8'  | engine = 'V8' |

   ```mermaid
    graph TD;
    A[BMW class]-->B[BMW instance];
    C[Porsche class]-->D[Porsche instance];
   ```
Regarding Builder role I would lucidate that method Build. The method create an instance of product and set all data, preserved in Builder instance, into product instance.
We can set up builder once with set of data. All the data will be plugged in product instance. Each invocation of Build creates new instnace of product with data from Builder.
The builder is a source of data, and product is recipient. Moreover, there is space for implementation of specialization of product. For instance, Builder can have multiple build methods(buildProductA, buildProductB and etc.), returning different instance setup or different class types.  

Director role is just next layer of separation of procees of creation. When Builder is a distinct layer for creation of Products, but Director is a layer to create or setup of Builders.
And there specialization arise again. For example, we can make multiple methods for setup of different Builders. 
          
## Simple Builder

Schema 1.
![Builder 1 UML schema](https://github.com/user-attachments/assets/61c22d64-9573-4770-a761-ef72d9f87204)

## Builder with Director

Schema 2.
![Builder 2 UML schema](https://github.com/user-attachments/assets/bab3ad04-2d51-468c-a995-2d9a77d17b86)

## Builder With Director and Interfaces

Schema 3.
![Builder 3 UML schema](https://github.com/user-attachments/assets/a1edd3a8-01ae-4281-8b2c-1f8d1aa4d05f)

## Implementation Details

### Simple Builders

1. Car class has private constructor an establish firendship with Car Builder class.
2. Car class has only getters methods to receive data from.
3. Car class has constructor taking all data to setup it as class attributes.
4. Builder contains only setter methods to setup builder data as class attributes.
5. Builder has build method, returning instance of Car class.
6. Builder's build method passes all data from Builder instance into constructor of Car class.

### Simple Builders Usage pattern

```
    " Create mercedes builder
    " pass mandatory fields
    DATA(lo_mercedes_builder) = NEW zpru_cl_bld1_car_builder( iv_id    = '1'
                                                              iv_brand = 'MERCEDES'
                                                              iv_model = 'C 180 T-Model' ).
    " pass optional fields into builder
    lo_mercedes_builder->set_price('100000' )->set_multimedia( 'AVANTGARDE' )->set_equipment( 'Memory Package' )->set_assistance_system('Driving Assistance Package Plus' ).

    " construct final object of mercedes
    DATA(lo_mercedes_c_180) = lo_mercedes_builder->build( ).
```

### Builder with Director

1. 1 - 6 points for Simple Builder are true
2. Director class has specialized methods, e.g. buildMercedes, buildPorcshe and etc.
3. Director's specialized methods has importing parameter of type of Builder class(Builder Interface) to inject Builder instance
4. Director's methods provide distinguish setup for different Builders' instances.

### Builder with Director Usage pattern

```
    DATA(lo_director) = NEW zpru_cl_bld2_car_director( ).
    DATA(lo_mercedes_builder) = NEW zpru_cl_bld2_car_builder( iv_brand = 'MERCEDES'
                                                              iv_model = 'C 180 T-Model' ).
    lo_director->build_mercedes( io_builder = lo_mercedes_builder ).

    lo_mercedes_builder->set_color( 'BLUE' ).
    lo_mercedes_builder->set_id( '1' ).
    DATA(lo_mercedes_c180_1_blue) = lo_mercedes_builder->build( ).
```

### Builder With Director and Interfaces

1. Basically, 1 - 6 points for Simple Builder are true.
2. Create common interface for all Product class(Car class and Car Schema class).
3. Create product specialized interfaces for Car entity and Car Schema entity.
4. Create common interface for Builder classes(Car Builder class and Car Schema class).
5. Create Builder specialized interfaces for Car Builder entity and Car Schema Builder entity.
6. Rework friendship inside Car and Car Schema classes, make it point onto Builder common interface.
7. use type of product specialized interface as returning type of Builder's build methods.
8. use type of builder specialized interface as importing type of Director's build methods.

```
    DATA lo_mercedes_builder_car TYPE REF TO zpru_if_bld3_builder_car.
    DATA lo_mercedes_builder_schema TYPE REF TO zpru_if_bld3_builder_schema.
    DATA lo_director TYPE REF TO zpru_cl_bld3_car_director.

    lo_director = NEW zpru_cl_bld3_car_director( ).
    lo_mercedes_builder_car = NEW zpru_cl_bld3_car_builder( iv_brand = 'MERCEDES'
                                                            iv_model = 'C 180 T-Model' ).
    lo_director->build_mercedes_car( io_builder = lo_mercedes_builder_car ).

    lo_mercedes_builder_car->zpru_if_bld3_builder~set_id( '1' ).
    DATA(lo_mercedes_c180_car) = lo_mercedes_builder_car->build( ).

    lo_mercedes_builder_schema = NEW zpru_cl_bld3_schema_builder( iv_brand = 'MERCEDES'
                                                                  iv_model = 'C 180 T-Model' ).

    lo_director->build_mercedes_schema( io_builder = lo_mercedes_builder_schema ).
    lo_mercedes_builder_schema->zpru_if_bld3_builder~set_id( '2' ).
    DATA(lo_mercedes_c180_schema) = lo_mercedes_builder_schema->build( ).
```
