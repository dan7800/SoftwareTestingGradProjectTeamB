.class public final Lcom/google/android/gm/photo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/g/a;


# static fields
.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/mail/utils/Q;
    .locals 11

    .prologue
    .line 54
    new-instance v3, Lcom/android/mail/utils/Q;

    invoke-direct {v3}, Lcom/android/mail/utils/Q;-><init>()V

    .line 56
    new-instance v2, Lcom/google/android/gms/people/t;

    invoke-direct {v2}, Lcom/google/android/gms/people/t;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/people/t;->US()Lcom/google/android/gms/people/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/people/t;->UT()Lcom/google/android/gms/people/s;

    move-result-object v2

    .line 58
    new-instance v4, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/people/q;->cgG:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v5

    .line 62
    const/4 v4, 0x0

    .line 64
    :try_start_0
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->Kw()Lcom/google/android/gms/common/a;

    .line 66
    new-instance v2, Lcom/google/android/gms/people/c;

    invoke-direct {v2}, Lcom/google/android/gms/people/c;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/people/c;->gy(Ljava/lang/String;)Lcom/google/android/gms/people/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/people/c;->UJ()Lcom/google/android/gms/people/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/people/c;->UK()Lcom/google/android/gms/people/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/people/c;->UL()Lcom/google/android/gms/people/b;

    move-result-object v2

    .line 73
    sget-object v6, Lcom/google/android/gms/people/q;->cgM:Lcom/google/android/gms/people/a;

    invoke-interface {v6, v5, p3, v2}, Lcom/google/android/gms/people/a;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;

    move-result-object v2

    .line 75
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/people/d;

    .line 78
    invoke-interface {v2}, Lcom/google/android/gms/people/d;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_0

    .line 80
    sget-object v7, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    const-string v8, "Autocomplete query timed out."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/people/d;->Sb()Lcom/google/android/gms/people/model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 83
    :try_start_1
    sget-object v2, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Autocomplete list loaded: status="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " list="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/b;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gtz v2, :cond_3

    .line 133
    :cond_1
    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/b;->close()V

    .line 136
    :cond_2
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->disconnect()V

    move-object v2, v3

    :goto_0
    return-object v2

    .line 90
    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/data/b;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/people/model/b;

    .line 93
    invoke-interface {v2}, Lcom/google/android/gms/people/model/b;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v7

    .line 94
    if-nez v7, :cond_5

    .line 95
    sget-object v2, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    const-string v6, "AvatarReference is null."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    if-eqz v4, :cond_4

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/b;->close()V

    .line 136
    :cond_4
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->disconnect()V

    move-object v2, v3

    goto :goto_0

    .line 100
    :cond_5
    :try_start_3
    new-instance v7, Lcom/google/android/gms/people/l;

    invoke-direct {v7}, Lcom/google/android/gms/people/l;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/gms/people/l;->UP()Lcom/google/android/gms/people/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/people/l;->UQ()Lcom/google/android/gms/people/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/people/l;->UR()Lcom/google/android/gms/people/k;

    move-result-object v7

    .line 104
    sget-object v8, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    invoke-interface {v2}, Lcom/google/android/gms/people/model/b;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v2

    invoke-interface {v8, v5, v2, v7}, Lcom/google/android/gms/people/j;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;

    move-result-object v2

    .line 106
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v7}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/people/m;

    .line 109
    invoke-interface {v2}, Lcom/google/android/gms/people/m;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 110
    invoke-interface {v2}, Lcom/google/android/gms/people/m;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v8

    const/16 v9, 0xf

    if-ne v8, v9, :cond_6

    .line 112
    sget-object v8, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    const-string v9, "Image load timed out."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v7, :cond_9

    .line 117
    :cond_7
    sget-object v2, Lcom/google/android/gm/photo/a;->mW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Image loaded: status="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  pfd="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    if-eqz v4, :cond_8

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/b;->close()V

    .line 136
    :cond_8
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->disconnect()V

    move-object v2, v3

    goto/16 :goto_0

    .line 121
    :cond_9
    :try_start_4
    invoke-static {v7}, Lcom/google/android/gm/ui/F;->a(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p5

    if-ge v6, v0, :cond_a

    .line 124
    const/4 v6, 0x1

    move/from16 v0, p5

    invoke-static {v2, p4, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Lcom/android/mail/utils/Q;->aQj:Landroid/graphics/Bitmap;

    .line 126
    const/4 v6, 0x1

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v2, v0, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v3, Lcom/android/mail/utils/Q;->aQk:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :cond_a
    if-eqz v4, :cond_b

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/b;->close()V

    .line 136
    :cond_b
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->disconnect()V

    move-object v2, v3

    goto/16 :goto_0

    .line 133
    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_c

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/b;->close()V

    .line 136
    :cond_c
    invoke-interface {v5}, Lcom/google/android/gms/common/api/n;->disconnect()V

    throw v2

    .line 133
    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method
