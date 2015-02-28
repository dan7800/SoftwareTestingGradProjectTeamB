.class public final Lorg/owasp/html/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/b;


# instance fields
.field private final cIe:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    .line 64
    return-void
.end method

.method static it(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 96
    :goto_0
    if-ge v3, v4, :cond_2

    .line 97
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 96
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :sswitch_0
    const/4 v0, 0x1

    .line 101
    goto :goto_1

    .line 103
    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x10

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    move v2, v3

    .line 105
    :goto_2
    if-ge v2, v4, :cond_1

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 107
    packed-switch v3, :pswitch_data_0

    .line 117
    const/16 v6, 0x100

    if-le v3, v6, :cond_0

    if-nez v1, :cond_0

    .line 123
    sparse-switch v3, :sswitch_data_1

    .line 105
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :pswitch_0
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%28"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v0, v2, 0x1

    .line 111
    goto :goto_3

    .line 113
    :pswitch_1
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%29"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v2, 0x1

    .line 115
    goto :goto_3

    .line 125
    :sswitch_2
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%d6%89"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v0, v2, 0x1

    .line 127
    goto :goto_3

    .line 129
    :sswitch_3
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%d7%83"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v0, v2, 0x1

    .line 131
    goto :goto_3

    .line 133
    :sswitch_4
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%e2%88%b6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v0, v2, 0x1

    .line 135
    goto :goto_3

    .line 137
    :sswitch_5
    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%ef%bc%9a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 145
    :cond_1
    invoke-virtual {v5, p0, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    :cond_2
    return-object p0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3f -> :sswitch_0
        0xff1a -> :sswitch_1
    .end sparse-switch

    .line 107
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 123
    :sswitch_data_1
    .sparse-switch
        0x589 -> :sswitch_2
        0x5c3 -> :sswitch_3
        0x2236 -> :sswitch_4
        0xff1a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 70
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :sswitch_0
    const-string v2, "//"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    .line 85
    :cond_1
    :goto_1
    return-object v0

    .line 80
    :sswitch_1
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_2
    invoke-static {p3}, Lorg/owasp/html/v;->it(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    check-cast p1, Lorg/owasp/html/v;

    iget-object v1, p1, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/owasp/html/v;->cIe:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method
