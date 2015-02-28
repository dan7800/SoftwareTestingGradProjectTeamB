.class final Lcom/google/android/gms/people/accountswitcherview/q;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final GN:I

.field final synthetic chE:Lcom/google/android/gms/people/accountswitcherview/o;

.field final chF:Lcom/google/android/gms/people/accountswitcherview/p;

.field final chG:Landroid/os/ParcelFileDescriptor;

.field final chH:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/accountswitcherview/o;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chF:Lcom/google/android/gms/people/accountswitcherview/p;

    .line 233
    iput-object p3, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    .line 234
    iput-object p4, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chH:Landroid/graphics/Bitmap;

    .line 235
    iput p5, p0, Lcom/google/android/gms/people/accountswitcherview/q;->GN:I

    .line 236
    return-void
.end method

.method private varargs UV()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/people/z;->c(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    invoke-static {v1}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Lcom/google/android/gms/people/accountswitcherview/o;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chH:Landroid/graphics/Bitmap;

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/h;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/o;->d(Lcom/google/android/gms/people/accountswitcherview/o;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chF:Lcom/google/android/gms/people/accountswitcherview/p;

    iget-object v2, v2, Lcom/google/android/gms/people/accountswitcherview/p;->acw:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    :cond_1
    :goto_1
    return-object v1

    .line 250
    :cond_2
    if-nez v0, :cond_3

    .line 251
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chH:Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_0

    .line 253
    :cond_3
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->GN:I

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    invoke-static {v2}, Lcom/google/android/gms/people/accountswitcherview/o;->b(Lcom/google/android/gms/people/accountswitcherview/o;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    invoke-static {v3}, Lcom/google/android/gms/people/accountswitcherview/o;->c(Lcom/google/android/gms/people/accountswitcherview/o;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v2, "OwnersImageManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    .line 260
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chG:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    :cond_4
    :goto_2
    throw v0

    .line 261
    :catch_1
    move-exception v1

    .line 262
    const-string v2, "OwnersImageManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/q;->UV()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 225
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chF:Lcom/google/android/gms/people/accountswitcherview/p;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chF:Lcom/google/android/gms/people/accountswitcherview/p;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chE:Lcom/google/android/gms/people/accountswitcherview/o;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/q;->chF:Lcom/google/android/gms/people/accountswitcherview/p;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Lcom/google/android/gms/people/accountswitcherview/o;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
