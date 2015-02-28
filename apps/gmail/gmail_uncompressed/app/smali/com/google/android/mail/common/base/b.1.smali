.class public final Lcom/google/android/mail/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/base/b;->max:I

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/base/b;->map:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public final VR()[[C
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/mail/common/base/b;->max:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[C

    .line 107
    iget-object v0, p0, Lcom/google/android/mail/common/base/b;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    .line 110
    :cond_0
    return-object v2
.end method

.method public final VS()Lcom/google/android/mail/common/base/a;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/mail/common/base/c;

    invoke-virtual {p0}, Lcom/google/android/mail/common/base/b;->VR()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/c;-><init>([[C)V

    return-object v0
.end method

.method public final a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/mail/common/base/b;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget v0, p0, Lcom/google/android/mail/common/base/b;->max:I

    if-le p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/google/android/mail/common/base/b;->max:I

    .line 85
    :cond_0
    return-object p0
.end method

.method public final a([CLjava/lang/String;)Lcom/google/android/mail/common/base/b;
    .locals 3

    .prologue
    .line 92
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 93
    invoke-virtual {p0, v2, p2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object p0
.end method
