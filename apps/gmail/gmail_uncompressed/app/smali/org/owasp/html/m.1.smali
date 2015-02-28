.class public final Lorg/owasp/html/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cHi:I

.field private final cHj:I

.field final synthetic cHk:Lorg/owasp/html/CssTokens;


# direct methods
.method constructor <init>(Lorg/owasp/html/CssTokens;I)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/owasp/html/m;->cHi:I

    .line 97
    iput p2, p0, Lorg/owasp/html/m;->cHj:I

    .line 98
    return-void
.end method

.method private abW()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lorg/owasp/html/m;->cHi:I

    iget v1, p0, Lorg/owasp/html/m;->cHj:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final abU()Lorg/owasp/html/m;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/owasp/html/m;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    iget-object v0, v0, Lorg/owasp/html/CssTokens;->cGQ:Lorg/owasp/html/k;

    iget v1, p0, Lorg/owasp/html/m;->cHi:I

    invoke-virtual {v0, v1}, Lorg/owasp/html/k;->ge(I)I

    move-result v1

    .line 113
    if-gez v1, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :cond_1
    new-instance v0, Lorg/owasp/html/m;

    iget-object v2, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    invoke-direct {v0, v2, v1}, Lorg/owasp/html/m;-><init>(Lorg/owasp/html/CssTokens;I)V

    .line 117
    iget v2, p0, Lorg/owasp/html/m;->cHi:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/owasp/html/m;->cHi:I

    .line 118
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/owasp/html/m;->cHi:I

    goto :goto_0
.end method

.method public final abV()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    iget-object v0, v0, Lorg/owasp/html/CssTokens;->cGP:Ljava/lang/String;

    iget-object v1, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    invoke-static {v1}, Lorg/owasp/html/CssTokens;->a(Lorg/owasp/html/CssTokens;)[I

    move-result-object v1

    iget v2, p0, Lorg/owasp/html/m;->cHi:I

    aget v1, v1, v2

    iget-object v2, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    invoke-static {v2}, Lorg/owasp/html/CssTokens;->a(Lorg/owasp/html/CssTokens;)[I

    move-result-object v2

    iget v3, p0, Lorg/owasp/html/m;->cHi:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final abX()Z
    .locals 2

    .prologue
    .line 143
    :goto_0
    invoke-direct {p0}, Lorg/owasp/html/m;->abW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lorg/owasp/html/m;->abY()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_1
    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final abY()Lorg/owasp/html/CssTokens$TokenType;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/owasp/html/m;->cHk:Lorg/owasp/html/CssTokens;

    invoke-static {v0}, Lorg/owasp/html/CssTokens;->b(Lorg/owasp/html/CssTokens;)[Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    iget v1, p0, Lorg/owasp/html/m;->cHi:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final advance()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/owasp/html/m;->abW()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 161
    :cond_0
    iget v0, p0, Lorg/owasp/html/m;->cHi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/m;->cHi:I

    .line 162
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/owasp/html/m;->abW()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/owasp/html/m;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/owasp/html/m;->abV()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    .line 107
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
