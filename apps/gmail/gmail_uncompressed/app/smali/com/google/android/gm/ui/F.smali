.class public final Lcom/google/android/gm/ui/F;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/mail/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final Tz:Ljava/lang/String;

.field private final akd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bbm:Lcom/google/android/gms/common/api/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/google/android/gm/ui/F;->bbm:Lcom/google/android/gms/common/api/n;

    .line 60
    iput-object p3, p0, Lcom/google/android/gm/ui/F;->Tz:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/android/gm/ui/F;->akd:Ljava/util/Set;

    .line 62
    return-void
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/people/z;->c(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    sget-object v2, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    :goto_1
    throw v0

    .line 187
    :catch_1
    move-exception v1

    .line 188
    sget-object v2, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "load contact photos util"

    invoke-static {v0}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 82
    invoke-interface {p0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v1, "Client not connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 85
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v4

    .line 90
    new-instance v0, Lcom/google/android/gms/people/c;

    invoke-direct {v0}, Lcom/google/android/gms/people/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/c;->gy(Ljava/lang/String;)Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UJ()Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UK()Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UL()Lcom/google/android/gms/people/b;

    move-result-object v5

    .line 97
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    const/4 v2, 0x0

    .line 100
    :try_start_0
    const-string v1, "get autocomplete entry"

    invoke-static {v1}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/google/android/gms/people/q;->cgM:Lcom/google/android/gms/people/a;

    invoke-interface {v1, p0, v0, v5}, Lcom/google/android/gms/people/a;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;

    move-result-object v1

    .line 103
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/d;

    .line 106
    invoke-interface {v1}, Lcom/google/android/gms/people/d;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v7

    .line 107
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v8, 0xf

    if-ne v3, v8, :cond_2

    .line 108
    sget-object v3, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v8, "Autocomplete query timed out."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/people/d;->Sb()Lcom/google/android/gms/people/model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 111
    :try_start_1
    sget-object v1, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Autocomplete list loaded: status="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " list="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v3, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/b;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 116
    :cond_3
    new-instance v1, Lcom/android/mail/a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/b;->close()V

    goto :goto_1

    .line 121
    :cond_4
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/data/b;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/b;

    .line 122
    invoke-interface {v1}, Lcom/google/android/gms/people/model/b;->RS()J

    move-result-wide v8

    .line 123
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_5

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 127
    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/people/model/b;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v8

    .line 128
    if-nez v8, :cond_6

    .line 129
    sget-object v1, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v7, "AvatarReference is null."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    new-instance v1, Lcom/android/mail/a;

    invoke-direct {v1, v3}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/b;->close()V

    goto/16 :goto_1

    .line 123
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 135
    :cond_6
    :try_start_3
    const-string v8, "get image result"

    invoke-static {v8}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 136
    new-instance v8, Lcom/google/android/gms/people/l;

    invoke-direct {v8}, Lcom/google/android/gms/people/l;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/people/l;->UP()Lcom/google/android/gms/people/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/people/l;->UQ()Lcom/google/android/gms/people/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/people/l;->UR()Lcom/google/android/gms/people/k;

    move-result-object v8

    .line 140
    sget-object v9, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    invoke-interface {v1}, Lcom/google/android/gms/people/model/b;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v1

    invoke-interface {v9, p0, v1, v8}, Lcom/google/android/gms/people/j;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;

    move-result-object v1

    .line 143
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/m;

    .line 146
    invoke-interface {v1}, Lcom/google/android/gms/people/m;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 147
    invoke-interface {v1}, Lcom/google/android/gms/people/m;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    const/16 v10, 0xf

    if-ne v9, v10, :cond_7

    .line 151
    sget-object v9, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v10, "Image load timed out."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v8, :cond_9

    .line 156
    :cond_8
    sget-object v1, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Image loaded: status="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "  pfd="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    new-instance v1, Lcom/android/mail/a;

    invoke-direct {v1, v3}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/b;->close()V

    goto/16 :goto_1

    .line 161
    :cond_9
    if-eqz p3, :cond_a

    .line 162
    :try_start_4
    const-string v1, "decode bitmap"

    invoke-static {v1}, Lcom/android/a/a/a;->beginSection(Ljava/lang/String;)V

    .line 163
    invoke-static {v8}, Lcom/google/android/gm/ui/F;->a(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 166
    new-instance v7, Lcom/android/mail/a;

    invoke-direct {v7, v3, v1}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    :goto_3
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/b;->close()V

    goto/16 :goto_1

    .line 168
    :cond_a
    :try_start_5
    new-instance v1, Lcom/android/mail/a;

    invoke-static {v8}, Lcom/google/android/gm/ui/F;->b(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lcom/android/mail/a;-><init>(Landroid/net/Uri;[B)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 171
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_b

    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/b;->close()V

    :cond_b
    throw v0

    .line 177
    :cond_c
    invoke-static {}, Lcom/android/a/a/a;->endSection()V

    .line 178
    invoke-static {v4}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method private static b(Landroid/os/ParcelFileDescriptor;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 195
    .line 196
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 199
    const/16 v1, 0x4000

    :try_start_0
    new-array v1, v1, [B

    .line 200
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v5, "Error reading photo input stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 214
    :goto_2
    if-eqz v2, :cond_0

    .line 216
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 223
    :cond_0
    :goto_3
    return-object v0

    .line 205
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 210
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 214
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 217
    :catch_1
    move-exception v1

    .line 218
    sget-object v2, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 211
    :catch_2
    move-exception v1

    .line 212
    sget-object v3, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 211
    :catch_3
    move-exception v1

    .line 212
    sget-object v3, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 217
    :catch_4
    move-exception v1

    .line 218
    sget-object v2, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 209
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 210
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 214
    :goto_6
    if-eqz v2, :cond_2

    .line 216
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 219
    :cond_2
    :goto_7
    throw v0

    .line 211
    :catch_5
    move-exception v1

    .line 212
    sget-object v3, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 217
    :catch_6
    move-exception v1

    .line 218
    sget-object v2, Lcom/google/android/gm/ui/F;->mW:Ljava/lang/String;

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 209
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 206
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gm/ui/F;->akd:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/F;->akd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ui/F;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v1, p0, Lcom/google/android/gm/ui/F;->Tz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ui/F;->akd:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/ui/F;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method
