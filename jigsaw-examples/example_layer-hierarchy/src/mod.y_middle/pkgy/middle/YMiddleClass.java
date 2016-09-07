package pkgy.middle;

import java.lang.reflect.Layer;

import pkglayer.LayerHierarchy;

public class YMiddleClass extends pkgy.top.YTopClass {
    @Override
    public String doIt() {
        Layer myLayer = this.getClass().getModule().getLayer();
        String layerName  = LayerHierarchy.getLayerName(myLayer);
        String layerLevel = LayerHierarchy.getLayerLevel(myLayer);

        return "\t" + this.toString() + " [ " + YMiddleClass.class
            + ", module " + this.getClass().getModule().getName() 
            + ", layer '" + layerName + "' on level '" + layerLevel + "' (" + myLayer + ") ]"

            + "\n\tplus " + super.doIt();
    }
}
