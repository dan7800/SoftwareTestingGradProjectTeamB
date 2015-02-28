package android.support.v4.content;

import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

final class m implements ThreadFactory
{
    private final AtomicInteger fh;
    
    m() {
        this.fh = new AtomicInteger(1);
    }
    
    @Override
    public final Thread newThread(final Runnable runnable) {
        return new Thread(runnable, "ModernAsyncTask #" + this.fh.getAndIncrement());
    }
}
