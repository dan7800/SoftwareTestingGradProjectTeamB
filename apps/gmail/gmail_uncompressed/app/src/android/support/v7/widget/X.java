package android.support.v7.widget;

final class x
{
    public final B Db;
    public final D Dc;
    public boolean Dd;
    
    public x(final B db, final D dc) {
        this.Dd = true;
        this.Db = db;
        this.Dc = dc;
    }
    
    @Override
    public final String toString() {
        final StringBuilder append = new StringBuilder().append(this.Db).append(" ");
        String s;
        if (!this.Dd) {
            s = "+>";
        }
        else {
            s = "->";
        }
        return append.append(s).append(" ").append(this.Dc).toString();
    }
}
