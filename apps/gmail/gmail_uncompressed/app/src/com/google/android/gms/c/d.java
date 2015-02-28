package com.google.android.gms.c;

import android.os.*;
import java.lang.reflect.*;

public final class d<T> extends b
{
    private final T bJz;
    
    private d(final T bJz) {
        this.bJz = bJz;
    }
    
    public static <T> T a(final a a) {
        if (a instanceof d) {
            return (T)((d)a).bJz;
        }
        final IBinder binder = a.asBinder();
        final Field[] declaredFields = binder.getClass().getDeclaredFields();
        if (declaredFields.length == 1) {
            final Field field = declaredFields[0];
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T)field.get(binder);
                }
                catch (NullPointerException ex) {
                    throw new IllegalArgumentException("Binder object is null.", ex);
                }
                catch (IllegalArgumentException ex2) {
                    throw new IllegalArgumentException("remoteBinder is the wrong class.", ex2);
                }
                catch (IllegalAccessException ex3) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", ex3);
                }
            }
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    
    public static <T> a ag(final T t) {
        return new d<Object>(t);
    }
}
