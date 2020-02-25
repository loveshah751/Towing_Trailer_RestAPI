<!-- the line below needs to be an empty line C: (its because kramdown isnt
     that smart and dearly wants an empty line before a heading to be able to
     display it as such, e.g. website) -->

# Aussie RAM Towing Trailer Web Application in Java (Spring Boot) 
[![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/loveshah751/Towing_Trailer_RestAPI/master/LICENSE)

![Project Logo](
https://github.com/loveshah751/Towing_Trailer_RestAPI/blob/master/Spring-Boot-JPA/Images/Ram_towing_truck.png)


# Introduction

## A car’s towing capacity doesn’t always equate how much it can tow.

**So you’ve bought a new vehicle with a 3000kg towing capacity, which means you can tow a 3.0-tonne caravan, right?**

Well, not necessarily. There are other factors that determine how much you can tow, such as the towbar strength and total weight of the tow vehicle.
As well as understanding the different factors, you also need to master towing terminology, some of which seems suited to people with white coats and slide rules

# Getting started

Before you can work out what vehicle you need, you need to be clear on several key towing terms. While this can feel overwhelming, it is not as difficult as it may seem. So, let’s get clarity. The table below shows the key items you need to understand when selecting a tow vehicle and how they relate to each other.

![Project Logo](
https://github.com/loveshah751/Towing_Trailer_RestAPI/blob/master/Spring-Boot-JPA/Images/Project_desc.png)

**Kerb weight**
This is the empty weight of a vehicle with a full tank of fuel, and doesn’t include payload including passengers, luggage and accessories such as bullbars and roof racks. 


**GROSS COMBINATION MASS (GCM)**

This is maximum total weight allowed for both the vehicle and trailer and is the sum the vehicle’s GVM and the trailer’s ATM.

**Gross vehicle mass (GVM)**
The total weight of the tow vehicle – the kerb weight plus payload including passengers, luggage and accessories. 

**Vehicle Payload**
The MAXIMUM weight the vehicle can carry. (EVERYTHING not part of Kerb Weight - people, ‘stuff’, vehicle accessories, tow-ball down weight etc.)

**GTM (Gross Trailer Mass)**
The MAXIMUM weight of the trailer and everything in it when connected to the tow vehicle (when weighed at the axles)

**TTM (Trailer Tare Mass)**
This is the total weight of the trailer, as the manufacturer made it (nothing extra added)

**Trailer Payload**
The MAXIMUM weight that the trailer can carry (Everything not part of TTM)
**TBD (Tow-Ball Down-weight)**
The weight a trailer puts on the tow-ball (tow bar) when connected to the vehicle.

![Project Logo](
https://github.com/loveshah751/Towing_Trailer_RestAPI/blob/master/Spring-Boot-JPA/Images/trailer_explain.png)

****

Now that you’ve got some clarity on the terms, now you need to get specific on what you need – by the numbers, not just the names. When considering a tow vehicle there are two parts to getting specific:

**A. Get specific on the vehicles maximum capacities – Towing vs Payload (and GCM)**
****
Few vehicles on the road can tow their Maximum Towing Capacity at their Maximum Payload (GVM). Because of this you will need to balance towing capacity against the amount of payload you need to carry in the vehicle. So, grab the vehicle specification sheet, a picture of the trailer compliance plate (or website) and work out the numbers.

To work out how much you can tow at the maximum payload (GVM) 

**use Formula 1**

**• GCM (minus – ) GVM = The maximum you can tow with the vehicle at its maximum weight or GVM.**
 
To work out how much vehicle payload is available at maximum tow capacity use

 **Formula 2**

**• GCM (minus – ) MAX GTM (minus – ) Kerb Weight (minus – ) TBD = The amount of payload you have at maximum towing capacity before you reach your GCM (Be sure to subtract the drivers’ weight from this before you add extras)**

****
**The three main maximums (GCM, GVM & GTM) are where people tend to run out of capacity when they try to ‘have it all’. The solution is to get specific with what YOU need.**

**B. Get specific on the what YOU really need to tow and carry.**

Balancing your towing requirements against your payload needs when choosing a vehicle can be a challenge. Knowing specifically what YOU will be carrying will make this choice easier.

**Using Formula 2**

**[GCM (minus – ) Trailer GTM (minus – ) Kerb Weight (minus – ) TBD]**

This identifies how much weight is available till you hit your GCM. This weight can be distributed between the GTM or the GVM until you reach their maximum numbers. 

**Remember that**:

• Just because there is a maximum number doesn’t mean that you will need to operate at it.

• Adding to towing (eg: getting a bigger trailer/boat/caravan) will also affect payload and visa-versa.

**Part of the being specific is first ensuring you have enough capacity (payload or towing) for what YOU need to do, and then consider a bit of ‘breathing space’ for any future demands.**




# Get What YOU Need
Ram trucks are the go-to tow vehicle in Australia. Nothing tows Like a Ram Truck. Nothing. Ram trucks give you More – More Space, More Power, and More Towing capability than anyone else on the market. Now you know your numbers and what you need to tow, you can be sure you’ll find exactly what you need in a Ram Truck.

![Project Logo](
https://github.com/loveshah751/Towing_Trailer_RestAPI/blob/master/Spring-Boot-JPA/Images/RAM_Aussie.png)

# Software Requirements 
1.) **JAVA 1.8 (version 8)**. Check your java version by simpling typing command java -Version on CMD (Windows), Terminal(MAC/Linux).

2.) [![Maven](https://img.shields.io/maven-metadata/v/http/central.maven.org/maven2/com/google/code/gson/gson/maven-metadata.xml.svg?style=flat-square)](http://www.mkyong.com/maven/how-to-install-maven-in-windows/) **Maven** Check the maven Version by typing command maven -v or maven --version. If nothing happens click on the icon for the instruction.


# License

This project is licensed under the terms of the MIT license.
