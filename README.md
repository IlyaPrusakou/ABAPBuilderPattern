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

All classes and interfaces can play roles of Director, Builder and Product.
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

          
## Simple Builder

Schema 1.
![Builder 1 UML schema](https://github.com/user-attachments/assets/61c22d64-9573-4770-a761-ef72d9f87204)

## Builder with Director

Schema 2.
![Builder 2 UML schema](https://github.com/user-attachments/assets/bab3ad04-2d51-468c-a995-2d9a77d17b86)

## Builder With Director and Interfaces

Schema 3.
![Builder 3 UML schema](https://github.com/user-attachments/assets/a1edd3a8-01ae-4281-8b2c-1f8d1aa4d05f)

