#!/bin/bash

# Desactivar switch s1
ifconfig s1 down 2>/dev/null

# Borrar switch s1
brctl delbr s1 2>/dev/null

##########################################
# Crear configuración para VLAN número 10
##########################################

# 1. Crear interfaz/ces con etiqueta VLAN 10
vconfig add eth3 10

# 2. Activar la/s interfaz/ces con etiqueta VLAN creadas en el paso anterior
ifconfig eth3.10 up

# 3. Crear switch con nombre vs10
brctl addbr vs10

# 4. Añadir las interfaces necesarias al switch
brctl addif vs10 eth0
brctl addif vs10 eth3.10

# 5. Activar el switch
ifconfig vs10 up

##########################################
# Crear configuración para VLAN número 11
##########################################

# 1. Crear interfaz/ces con etiqueta VLAN 11
vconfig add eth3 11

# 2. Activar la/s interfaz/ces con etiqueta VLAN creadas en el paso anterior
ifconfig eth3.11 up

# 3. Crear switch con nombre vs11
brctl addbr vs11

# 4. Añadir las interfaces necesarias al switch
brctl addif vs11 eth1
brctl addif vs11 eth3.11

# 5. Activar el switch
ifconfig vs11 up

##########################################
# Crear configuración para VLAN número 12
##########################################

# 1. Crear interfaz/ces con etiqueta VLAN 12
vconfig add eth3 12

# 2. Activar la/s interfaz/ces con etiqueta VLAN creadas en el paso anterior
ifconfig eth3.12 up

# 3. Crear switch con nombre vs12
brctl addbr vs12

# 4. Añadir las interfaces necesarias al switch
brctl addif vs12 eth2
brctl addif vs12 eth3.12

# 5. Activar el switch
ifconfig vs12 up
