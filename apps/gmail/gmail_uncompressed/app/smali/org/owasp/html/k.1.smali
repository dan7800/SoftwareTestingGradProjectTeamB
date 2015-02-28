.class final Lorg/owasp/html/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cHa:[I


# direct methods
.method private constructor <init>([I)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lorg/owasp/html/k;->cHa:[I

    .line 254
    return-void
.end method

.method synthetic constructor <init>([IB)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/owasp/html/k;-><init>([I)V

    return-void
.end method


# virtual methods
.method final ge(I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 258
    const/4 v2, 0x0

    iget-object v1, p0, Lorg/owasp/html/k;->cHa:[I

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    sub-int v1, v2, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    iget-object v4, p0, Lorg/owasp/html/k;->cHa:[I

    shl-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_0

    .line 259
    :goto_1
    if-gez v1, :cond_3

    .line 260
    :goto_2
    return v0

    .line 258
    :cond_0
    if-ge v4, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 260
    :cond_3
    iget-object v0, p0, Lorg/owasp/html/k;->cHa:[I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_2
.end method
