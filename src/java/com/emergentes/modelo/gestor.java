/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.modelo;

/**
 *
 * @author angela
 */

import java.util.ArrayList;
import java.util.Iterator;

public class gestor {
    private ArrayList<vacunasACA> lista;
    
    public gestor()
    {
        lista = new ArrayList<vacunasACA>();
    }

    public ArrayList<vacunasACA> getLista() {
        return lista;
    }

    public void setLista(ArrayList<vacunasACA> lista) {
        this.lista = lista;
    }
    
     public void insertarP(vacunasACA item){
        lista.add(item);
    }
    public void modificarP(int pos,vacunasACA item){
        lista.set(pos, item);
    }
    public void eliminarP(int pos){
        lista.remove(pos);
    }
    public int obtieneId(){
        int idaux = 0;
        
        for (vacunasACA item : lista){
            idaux = item.getId();
        }
        return idaux +1 ;
    }
    public int ubicarP(int id){
        int pos = -1;
        Iterator<vacunasACA> it = lista.iterator();
        
        while (it.hasNext()){
            ++pos;
            vacunasACA aux = it.next();
            
            if(aux.getId() == id){
                break;
            }
        }
        return pos; 
    }
}