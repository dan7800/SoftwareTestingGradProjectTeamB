.class public final Lcom/google/android/gms/f/a;
.super Ljava/lang/Object;


# instance fields
.field private final bXl:Lcom/google/android/gms/internal/cM;

.field private cjR:Lcom/google/android/gms/internal/qu;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/google/android/gms/f/b;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/f/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/f/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/f/b;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/qu;

    const/4 v6, 0x1

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/qu;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/f/a;->cjR:Lcom/google/android/gms/internal/qu;

    new-instance v0, Lcom/google/android/gms/internal/cM;

    new-instance v1, Lcom/google/android/gms/internal/cK;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/cK;-><init>(Lcom/google/android/gms/f/b;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cM;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cK;)V

    iput-object v0, p0, Lcom/google/android/gms/f/a;->bXl:Lcom/google/android/gms/internal/cM;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/f/b;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/f/a;-><init>(Landroid/content/Context;ILcom/google/android/gms/f/b;)V

    return-void
.end method


# virtual methods
.method public final varargs g(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/f/a;->bXl:Lcom/google/android/gms/internal/cM;

    iget-object v7, p0, Lcom/google/android/gms/f/a;->cjR:Lcom/google/android/gms/internal/qu;

    new-instance v1, Lcom/google/android/gms/internal/qq;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/qq;-><init>(JLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/cM;->b(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/f/a;->bXl:Lcom/google/android/gms/internal/cM;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cM;->start()V

    return-void
.end method
