.class public abstract Lcom/google/android/gm/provider/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field protected final bdA:I

.field protected final bdz:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/gm/provider/x;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 23
    iput-object p2, p0, Lcom/google/android/gm/provider/x;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/x;->bdA:I

    .line 25
    return-void
.end method

.method private dK(I)I
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/x;->dM(I)I

    move-result v1

    .line 57
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/x;->dL(I)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    const/4 v0, 0x0

    .line 61
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/provider/x;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to invoke upgrade Method"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :cond_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private dL(I)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upgradeDbTo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing upgrade to version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract DU()V
.end method

.method final dJ(I)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/gm/provider/x;->bdA:I

    .line 43
    :goto_0
    if-ge v0, p1, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/x;->dK(I)I

    move-result v0

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method dM(I)I
    .locals 1

    .prologue
    .line 98
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
