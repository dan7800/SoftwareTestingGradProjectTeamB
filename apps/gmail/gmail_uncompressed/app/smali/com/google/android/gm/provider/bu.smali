.class final Lcom/google/android/gm/provider/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aPd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/bu;->aPd:Ljava/util/Map;

    return-void
.end method

.method private fg(Ljava/lang/String;)Lcom/google/android/gm/provider/bu;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/provider/bu;->aPd:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p0
.end method


# virtual methods
.method public final D([Ljava/lang/String;)Lcom/google/android/gm/provider/bu;
    .locals 3

    .prologue
    .line 29
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 30
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/bu;->fg(Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-object p0
.end method

.method public final HJ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gm/provider/bu;->aPd:Ljava/util/Map;

    return-object v0
.end method

.method public final a([[Ljava/lang/String;)Lcom/google/android/gm/provider/bu;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 44
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 45
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 53
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "unrecognized projection map entry: %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_0
    aget-object v4, v3, v1

    aget-object v3, v3, v7

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gm/provider/bu;->ac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    goto :goto_1

    .line 50
    :pswitch_1
    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/bu;->fg(Ljava/lang/String;)Lcom/google/android/gm/provider/bu;

    goto :goto_1

    .line 58
    :cond_0
    return-object p0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/bu;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gm/provider/bu;->aPd:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object p0
.end method
