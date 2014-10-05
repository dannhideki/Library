package br.com.library.tests;


/**
 *
 * @author Daniel Hideki
 * @since 18/08/2014
 */
public class TestFacade {

    
    public static void main(String[] args) {
        new TestFacade().init();
        
    }
    
    public void init(){
        Facade facade = new Facade();
        facade.initialize();
        facade.generate();
    }
    
    
}
