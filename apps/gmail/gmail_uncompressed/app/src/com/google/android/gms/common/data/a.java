package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.safeparcel.*;
import android.graphics.*;
import android.util.*;
import android.os.*;
import java.nio.*;
import java.io.*;

public class a implements SafeParcelable
{
    public static final Parcelable$Creator<a> CREATOR;
    ParcelFileDescriptor bEi;
    private Bitmap bEj;
    private boolean bEk;
    private File bEl;
    final int btV;
    final int bwX;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    a(final int btV, final ParcelFileDescriptor bEi, final int bwX) {
        this.btV = btV;
        this.bEi = bEi;
        this.bwX = bwX;
        this.bEj = null;
        this.bEk = false;
    }
    
    private FileOutputStream KO() {
        if (this.bEl == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        File file;
        try {
            final File tempFile;
            file = (tempFile = File.createTempFile("teleporter", ".tmp", this.bEl));
            final FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            final a a = this;
            final File file2 = file;
            final int n = 268435456;
            final ParcelFileDescriptor parcelFileDescriptor = ParcelFileDescriptor.open(file2, n);
            a.bEi = parcelFileDescriptor;
            final File file3 = file;
            file3.delete();
            return fileOutputStream;
        }
        catch (IOException ex) {
            throw new IllegalStateException("Could not create temporary file", ex);
        }
        try {
            final File tempFile = file;
            final FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            final a a = this;
            final File file2 = file;
            final int n = 268435456;
            final ParcelFileDescriptor parcelFileDescriptor = ParcelFileDescriptor.open(file2, n);
            a.bEi = parcelFileDescriptor;
            final File file3 = file;
            file3.delete();
            return fileOutputStream;
        }
        catch (FileNotFoundException ex2) {
            throw new IllegalStateException("Temporary file is somehow already deleted");
        }
    }
    
    private static void a(final Closeable closeable) {
        try {
            closeable.close();
        }
        catch (IOException ex) {
            Log.w("BitmapTeleporter", "Could not close stream", (Throwable)ex);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        Label_0102: {
            if (this.bEi != null) {
                break Label_0102;
            }
            final Bitmap bEj = this.bEj;
            final ByteBuffer allocate = ByteBuffer.allocate(bEj.getRowBytes() * bEj.getHeight());
            bEj.copyPixelsToBuffer((Buffer)allocate);
            final byte[] array = allocate.array();
            final DataOutputStream dataOutputStream = new DataOutputStream(this.KO());
            try {
                dataOutputStream.writeInt(array.length);
                dataOutputStream.writeInt(bEj.getWidth());
                dataOutputStream.writeInt(bEj.getHeight());
                dataOutputStream.writeUTF(bEj.getConfig().toString());
                dataOutputStream.write(array);
                a(dataOutputStream);
                f.a(this, parcel, n);
            }
            catch (IOException ex) {
                throw new IllegalStateException("Could not write into unlinked file", ex);
            }
            finally {
                a(dataOutputStream);
            }
        }
    }
}
