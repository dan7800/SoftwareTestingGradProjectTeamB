package org.apache.james.mime4j.field.address;

public final class i extends g
{
    private String name;
    
    public i(final String name, final g g) {
        super(g.aaM(), g.getLocalPart(), g.getDomain());
        this.name = name;
    }
    
    @Override
    public final String cr(final boolean b) {
        final StringBuilder sb = new StringBuilder();
        String string;
        if (this.name == null) {
            string = "";
        }
        else {
            string = this.name + " ";
        }
        return sb.append(string).append(super.cr(b)).toString();
    }
}
