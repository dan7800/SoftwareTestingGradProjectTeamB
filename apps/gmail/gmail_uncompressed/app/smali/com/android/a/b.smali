.class public Lcom/android/a/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/a/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final GA:Lcom/android/a/d;

.field private final GB:Lcom/android/a/h;

.field private final GC:Lcom/android/a/c;

.field private final GD:Lcom/android/a/a;

.field private final GF:Landroid/graphics/BitmapFactory$Options;

.field private GG:Lcom/android/a/i;

.field private final Gz:Lcom/android/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/a/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/a/g;Lcom/android/a/d;Lcom/android/a/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    .line 58
    iput-object v1, p0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    .line 100
    iput-object p1, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    .line 101
    iput-object p2, p0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    .line 102
    iput-object v1, p0, Lcom/android/a/b;->GB:Lcom/android/a/h;

    .line 103
    iput-object v1, p0, Lcom/android/a/b;->GC:Lcom/android/a/c;

    .line 104
    iput-object p3, p0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    .line 105
    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p2, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 469
    const-string v0, "create stream"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 470
    if-nez p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    invoke-interface {v0}, Lcom/android/a/g;->fW()Ljava/io/InputStream;

    move-result-object p1

    .line 481
    :goto_0
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 482
    return-object p1

    .line 472
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 476
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    iget-object v0, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    invoke-interface {v0}, Lcom/android/a/g;->fW()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/a/b;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/a/b;->fT()Lcom/android/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final fT()Lcom/android/a/i;
    .locals 21

    .prologue
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x0

    .line 459
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    const/4 v6, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v3, 0x0

    .line 125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GB:Lcom/android/a/h;

    if-eqz v2, :cond_6

    .line 126
    const-string v2, "create fd"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GB:Lcom/android/a/h;

    invoke-interface {v2}, Lcom/android/a/h;->fX()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_28
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v4

    .line 128
    :try_start_1
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_29
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v5, v4

    .line 139
    :goto_1
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_c

    const/4 v2, 0x1

    move v4, v2

    .line 142
    :goto_2
    if-eqz v4, :cond_2

    .line 143
    const-string v2, "poll for reusable bitmap"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    invoke-interface {v2}, Lcom/android/a/a;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/a/i;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    .line 145
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 148
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_d

    .line 149
    if-eqz v5, :cond_3

    .line 432
    :try_start_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 436
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 438
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 444
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :cond_6
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_28
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v3

    .line 131
    if-nez v3, :cond_9

    .line 132
    if-eqz v3, :cond_7

    .line 438
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 444
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_8

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 134
    :cond_9
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result v2

    if-eqz v2, :cond_58

    .line 135
    if-eqz v3, :cond_a

    .line 438
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 444
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_b

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 139
    :cond_c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_2

    .line 152
    :cond_d
    :try_start_9
    const-string v2, "get bytesize"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 154
    if-eqz v5, :cond_e

    .line 155
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 157
    :cond_e
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 161
    const-string v2, "get orientation"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    .line 164
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    if-eqz v2, :cond_12

    .line 197
    if-eqz v5, :cond_f

    .line 432
    :try_start_a
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 436
    :cond_f
    :goto_7
    if-eqz v3, :cond_10

    .line 438
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 444
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_11

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 200
    :cond_12
    if-nez v5, :cond_1a

    .line 201
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v3

    .line 202
    if-nez v3, :cond_16

    .line 203
    if-eqz v5, :cond_13

    .line 432
    :try_start_d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 436
    :cond_13
    :goto_9
    if-eqz v3, :cond_14

    .line 438
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 444
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_15

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 205
    :cond_16
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v2

    if-eqz v2, :cond_1a

    .line 206
    if-eqz v5, :cond_17

    .line 432
    :try_start_10
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 436
    :cond_17
    :goto_b
    if-eqz v3, :cond_18

    .line 438
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 444
    :cond_18
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_19

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 210
    :cond_1a
    :try_start_12
    const-string v2, "decodeBounds"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    if-eqz v5, :cond_1e

    .line 213
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 217
    :goto_d
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result v2

    if-eqz v2, :cond_21

    .line 220
    if-eqz v5, :cond_1b

    .line 432
    :try_start_13
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 436
    :cond_1b
    :goto_e
    if-eqz v3, :cond_1c

    .line 438
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 444
    :cond_1c
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_1d

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 215
    :cond_1e
    const/4 v2, 0x0

    :try_start_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v2, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_d

    .line 427
    :catch_0
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    :goto_10
    :try_start_16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 430
    if-eqz v5, :cond_1f

    .line 432
    :try_start_17
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_24

    .line 436
    :cond_1f
    :goto_11
    if-eqz v4, :cond_20

    .line 438
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_25

    .line 444
    :cond_20
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    invoke-interface {v3, v4, v2}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-eqz v2, :cond_54

    .line 446
    invoke-virtual {v2}, Lcom/android/a/i;->acquireReference()V

    goto/16 :goto_0

    .line 225
    :cond_21
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 229
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v7, v7, Lcom/android/a/d;->GH:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v8, v8, Lcom/android/a/d;->GI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 239
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v7, v7, Lcom/android/a/d;->GL:I

    packed-switch v7, :pswitch_data_0

    .line 248
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v2, v14

    int-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v2, v12

    .line 251
    :goto_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 257
    if-eqz v4, :cond_26

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-nez v2, :cond_25

    .line 263
    const-string v2, "create reusable bitmap"

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 264
    new-instance v2, Lcom/android/a/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v4, v4, Lcom/android/a/d;->GH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v7, v7, Lcom/android/a/d;->GI:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/a/i;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    .line 267
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-result v2

    if-eqz v2, :cond_25

    .line 270
    if-eqz v5, :cond_22

    .line 432
    :try_start_1a
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 436
    :cond_22
    :goto_14
    if-eqz v3, :cond_23

    .line 438
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 444
    :cond_23
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_24

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 241
    :pswitch_0
    float-to-int v2, v2

    .line 242
    goto :goto_13

    .line 244
    :pswitch_1
    float-to-double v12, v2

    :try_start_1c
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 245
    goto :goto_13

    .line 284
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    iget-object v4, v4, Lcom/android/a/i;->GM:Landroid/graphics/Bitmap;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 287
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-result v2

    if-eqz v2, :cond_2a

    .line 288
    if-eqz v5, :cond_27

    .line 432
    :try_start_1d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 436
    :cond_27
    :goto_16
    if-eqz v3, :cond_28

    .line 438
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 444
    :cond_28
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_29

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 291
    :cond_2a
    if-nez v5, :cond_32

    .line 292
    :try_start_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-result-object v3

    .line 293
    if-nez v3, :cond_2e

    .line 294
    if-eqz v5, :cond_2b

    .line 432
    :try_start_20
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_14

    .line 436
    :cond_2b
    :goto_18
    if-eqz v3, :cond_2c

    .line 438
    :try_start_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    .line 444
    :cond_2c
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_2d

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 296
    :cond_2e
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-result v2

    if-eqz v2, :cond_32

    .line 297
    if-eqz v5, :cond_2f

    .line 432
    :try_start_23
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_16

    .line 436
    :cond_2f
    :goto_1a
    if-eqz v3, :cond_30

    .line 438
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_17

    .line 444
    :cond_30
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_31

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 302
    :cond_32
    const/4 v4, 0x0

    .line 303
    :try_start_25
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 306
    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "decodeCropped"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 311
    if-eqz v5, :cond_36

    .line 312
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v7, 0x1

    invoke-static {v2, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    move-object v8, v2

    .line 319
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 320
    const/4 v2, 0x0

    .line 344
    :goto_1d
    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 363
    :try_start_27
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    move-object v4, v3

    move-object v3, v2

    .line 366
    :goto_1e
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    move-result v2

    if-eqz v2, :cond_44

    .line 367
    if-eqz v5, :cond_33

    .line 432
    :try_start_29
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1c

    .line 436
    :cond_33
    :goto_1f
    if-eqz v4, :cond_34

    .line 438
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1d

    .line 444
    :cond_34
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_35

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 315
    :cond_36
    const/4 v2, 0x1

    :try_start_2b
    invoke-static {v3, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    move-object v8, v2

    goto :goto_1c

    .line 325
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v12, v2, Lcom/android/a/d;->GH:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v13, v2, Lcom/android/a/d;->GI:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v14, v2, Lcom/android/a/d;->GI:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v15, v7, Lcom/android/a/d;->GJ:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GA:Lcom/android/a/d;

    iget v0, v7, Lcom/android/a/d;->GK:F

    move/from16 v16, v0

    if-gtz v2, :cond_57

    const/4 v2, 0x1

    move v7, v2

    :goto_21
    int-to-float v2, v9

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v2, v2, v17

    int-to-float v0, v10

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    div-float v17, v17, v18

    cmpg-float v18, v17, v2

    if-gez v18, :cond_38

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v2, v17, v2

    :cond_38
    int-to-float v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v7, v12

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v12, v13

    mul-float/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v13, v14

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v13, v9, v7

    int-to-float v13, v13

    mul-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v13

    iput v7, v11, Landroid/graphics/Rect;->right:I

    sub-int v7, v10, v2

    int-to-float v13, v10

    mul-float v13, v13, v16

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v7, v12, 0x2

    sub-int/2addr v2, v7

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 339
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-direct {v2, v7, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget v12, v9, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    iget v13, v9, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v7, v9, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v12, v9, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v2, v7, v12, v13, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v10, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v7, v10, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v9, v10, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-virtual {v11, v2, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v8, v11, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    move-result-object v2

    goto/16 :goto_1d

    .line 349
    :catch_1
    move-exception v2

    .line 351
    if-nez v5, :cond_40

    .line 352
    :try_start_2c
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    move-result-object v3

    .line 353
    if-nez v3, :cond_3c

    .line 354
    :try_start_2d
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 430
    if-eqz v5, :cond_39

    .line 432
    :try_start_2e
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_18

    .line 436
    :cond_39
    :goto_22
    if-eqz v3, :cond_3a

    .line 438
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_19

    .line 444
    :cond_3a
    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_3b

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 356
    :cond_3c
    :try_start_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    move-result v7

    if-eqz v7, :cond_40

    .line 357
    :try_start_31
    invoke-static {}, Lcom/android/a/a/a;->endSection()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 430
    if-eqz v5, :cond_3d

    .line 432
    :try_start_32
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_1a

    .line 436
    :cond_3d
    :goto_24
    if-eqz v3, :cond_3e

    .line 438
    :try_start_33
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1b

    .line 444
    :cond_3e
    :goto_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_3f

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_3f
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 361
    :cond_40
    :try_start_34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 363
    :try_start_35
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    .line 364
    goto/16 :goto_1e

    .line 363
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    throw v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_0
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    .line 430
    :catchall_1
    move-exception v2

    :goto_26
    if-eqz v5, :cond_41

    .line 432
    :try_start_36
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_26

    .line 436
    :cond_41
    :goto_27
    if-eqz v3, :cond_42

    .line 438
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_27

    .line 444
    :cond_42
    :goto_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    invoke-interface {v3, v4, v6}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-eqz v6, :cond_55

    .line 446
    invoke-virtual {v6}, Lcom/android/a/i;->acquireReference()V

    .line 456
    :cond_43
    :goto_29
    throw v2

    .line 372
    :cond_44
    if-nez v3, :cond_49

    :try_start_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_3
    .catchall {:try_start_38 .. :try_end_38} :catchall_3

    move-result v2

    if-nez v2, :cond_49

    .line 374
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "decode"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_45

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v7}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    .line 378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 381
    :cond_45
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/a/b;->a(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_39} :catch_2
    .catchall {:try_start_39 .. :try_end_39} :catchall_2

    move-result-object v2

    .line 392
    :try_start_3a
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 395
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/a/b;->isCancelled()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_3
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3

    move-result v3

    if-eqz v3, :cond_4a

    .line 396
    if-eqz v5, :cond_46

    .line 432
    :try_start_3b
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 436
    :cond_46
    :goto_2b
    if-eqz v4, :cond_47

    .line 438
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 444
    :cond_47
    :goto_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_48

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_48
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 382
    :catch_2
    move-exception v2

    .line 383
    :try_start_3d
    sget-object v7, Lcom/android/a/b;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "decode failed: reason=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\' ss="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x1

    if-le v2, v7, :cond_56

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 389
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/a/b;->a(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2

    move-result-object v2

    .line 392
    :goto_2d
    :try_start_3e
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    goto :goto_2a

    .line 427
    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_10

    .line 392
    :catchall_2
    move-exception v2

    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    throw v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_3
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3

    .line 430
    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_26

    :cond_49
    move-object v2, v3

    .line 400
    :cond_4a
    if-nez v2, :cond_4e

    .line 401
    if-eqz v5, :cond_4b

    .line 432
    :try_start_3f
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_20

    .line 436
    :cond_4b
    :goto_2e
    if-eqz v4, :cond_4c

    .line 438
    :try_start_40
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_21

    .line 444
    :cond_4c
    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v2, :cond_4d

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v2, v3}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    :cond_4d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 404
    :cond_4e
    :try_start_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v3, :cond_52

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_3
    .catchall {:try_start_41 .. :try_end_41} :catchall_3

    .line 407
    :try_start_42
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 408
    iget v2, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v6

    invoke-virtual {v3, v2}, Lcom/android/a/i;->aC(I)V

    .line 409
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v6

    invoke-virtual {v3, v2}, Lcom/android/a/i;->aD(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_2b
    .catchall {:try_start_42 .. :try_end_42} :catchall_6

    move-object v2, v3

    .line 422
    :goto_30
    const/4 v3, 0x0

    :try_start_43
    invoke-virtual {v2, v3}, Lcom/android/a/i;->setOrientation(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_2d
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 430
    if-eqz v5, :cond_4f

    .line 432
    :try_start_44
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_22

    .line 436
    :cond_4f
    :goto_31
    if-eqz v4, :cond_50

    .line 438
    :try_start_45
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_23

    .line 444
    :cond_50
    :goto_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    invoke-interface {v3, v4, v2}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-eqz v2, :cond_53

    .line 446
    invoke-virtual {v2}, Lcom/android/a/i;->acquireReference()V

    goto/16 :goto_0

    .line 412
    :cond_51
    :try_start_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v2}, Lcom/android/a/i;->aC(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/a/b;->GF:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v2}, Lcom/android/a/i;->aD(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_2b
    .catchall {:try_start_46 .. :try_end_46} :catchall_6

    move-object v2, v3

    goto :goto_30

    .line 417
    :cond_52
    :try_start_47
    new-instance v3, Lcom/android/a/i;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v7}, Lcom/android/a/i;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_3
    .catchall {:try_start_47 .. :try_end_47} :catchall_3

    .line 418
    :try_start_48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/a/i;->aC(I)V

    .line 420
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/a/i;->aD(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_2c
    .catchall {:try_start_48 .. :try_end_48} :catchall_7

    move-object v2, v3

    goto :goto_30

    .line 451
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v3, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v3, v4}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 451
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v3, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v3, v4}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 451
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-eqz v3, :cond_43

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/a/b;->GD:Lcom/android/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    invoke-interface {v3, v4}, Lcom/android/a/a;->N(Ljava/lang/Object;)V

    goto/16 :goto_29

    :catch_4
    move-exception v2

    goto/16 :goto_5

    :catch_5
    move-exception v2

    goto/16 :goto_6

    :catch_6
    move-exception v2

    goto/16 :goto_3

    :catch_7
    move-exception v2

    goto/16 :goto_4

    :catch_8
    move-exception v2

    goto/16 :goto_7

    :catch_9
    move-exception v2

    goto/16 :goto_8

    :catch_a
    move-exception v2

    goto/16 :goto_9

    :catch_b
    move-exception v2

    goto/16 :goto_a

    :catch_c
    move-exception v2

    goto/16 :goto_b

    :catch_d
    move-exception v2

    goto/16 :goto_c

    :catch_e
    move-exception v2

    goto/16 :goto_e

    :catch_f
    move-exception v2

    goto/16 :goto_f

    :catch_10
    move-exception v2

    goto/16 :goto_14

    :catch_11
    move-exception v2

    goto/16 :goto_15

    :catch_12
    move-exception v2

    goto/16 :goto_16

    :catch_13
    move-exception v2

    goto/16 :goto_17

    :catch_14
    move-exception v2

    goto/16 :goto_18

    :catch_15
    move-exception v2

    goto/16 :goto_19

    :catch_16
    move-exception v2

    goto/16 :goto_1a

    :catch_17
    move-exception v2

    goto/16 :goto_1b

    :catch_18
    move-exception v2

    goto/16 :goto_22

    :catch_19
    move-exception v2

    goto/16 :goto_23

    :catch_1a
    move-exception v2

    goto/16 :goto_24

    :catch_1b
    move-exception v2

    goto/16 :goto_25

    :catch_1c
    move-exception v2

    goto/16 :goto_1f

    :catch_1d
    move-exception v2

    goto/16 :goto_20

    :catch_1e
    move-exception v2

    goto/16 :goto_2b

    :catch_1f
    move-exception v2

    goto/16 :goto_2c

    :catch_20
    move-exception v2

    goto/16 :goto_2e

    :catch_21
    move-exception v2

    goto/16 :goto_2f

    :catch_22
    move-exception v3

    goto/16 :goto_31

    :catch_23
    move-exception v3

    goto/16 :goto_32

    :catch_24
    move-exception v3

    goto/16 :goto_11

    :catch_25
    move-exception v3

    goto/16 :goto_12

    :catch_26
    move-exception v4

    goto/16 :goto_27

    :catch_27
    move-exception v3

    goto/16 :goto_28

    .line 430
    :catchall_4
    move-exception v2

    move-object v5, v4

    goto/16 :goto_26

    :catchall_5
    move-exception v2

    move-object v5, v4

    goto/16 :goto_26

    :catchall_6
    move-exception v2

    move-object v6, v3

    move-object v3, v4

    goto/16 :goto_26

    :catchall_7
    move-exception v2

    move-object v6, v3

    move-object v3, v4

    goto/16 :goto_26

    :catchall_8
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_26

    .line 427
    :catch_28
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_10

    :catch_29
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_10

    :catch_2a
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_10

    :catch_2b
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v3

    move-object/from16 v3, v20

    goto/16 :goto_10

    :catch_2c
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v3

    move-object/from16 v3, v20

    goto/16 :goto_10

    :catch_2d
    move-exception v3

    goto/16 :goto_10

    :cond_56
    move-object v2, v3

    goto/16 :goto_2d

    :cond_57
    move v7, v2

    goto/16 :goto_21

    :cond_58
    move-object v5, v4

    goto/16 :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/android/a/i;

    iget-object v0, p0, Lcom/android/a/b;->GC:Lcom/android/a/c;

    iget-object v0, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/a/i;->releaseReference()V

    iget-object v0, p0, Lcom/android/a/b;->GG:Lcom/android/a/i;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/a/i;->GM:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/a/b;->GC:Lcom/android/a/c;

    iget-object v0, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/a/b;->GC:Lcom/android/a/c;

    iget-object v0, p0, Lcom/android/a/b;->Gz:Lcom/android/a/g;

    return-void
.end method
