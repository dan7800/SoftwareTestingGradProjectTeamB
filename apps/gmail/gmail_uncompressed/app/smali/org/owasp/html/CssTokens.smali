.class final Lorg/owasp/html/CssTokens;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final cGT:[I

.field private static final cGU:[Lorg/owasp/html/CssTokens$TokenType;

.field private static final cGV:Lorg/owasp/html/k;

.field private static final cGW:Lorg/owasp/html/CssTokens;

.field private static final cGX:[Z

.field private static final cGY:Lorg/owasp/html/ab;

.field private static final cGZ:[Z

.field private static final coF:[C


# instance fields
.field public final cGP:Ljava/lang/String;

.field public final cGQ:Lorg/owasp/html/k;

.field private final cGR:[I

.field private final cGS:[Lorg/owasp/html/CssTokens$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 281
    new-array v0, v6, [I

    sput-object v0, Lorg/owasp/html/CssTokens;->cGT:[I

    .line 283
    new-array v0, v6, [Lorg/owasp/html/CssTokens$TokenType;

    sput-object v0, Lorg/owasp/html/CssTokens;->cGU:[Lorg/owasp/html/CssTokens$TokenType;

    .line 285
    new-instance v0, Lorg/owasp/html/k;

    sget-object v1, Lorg/owasp/html/CssTokens;->cGT:[I

    invoke-direct {v0, v1, v6}, Lorg/owasp/html/k;-><init>([IB)V

    sput-object v0, Lorg/owasp/html/CssTokens;->cGV:Lorg/owasp/html/k;

    .line 287
    new-instance v0, Lorg/owasp/html/CssTokens;

    const-string v1, ""

    sget-object v2, Lorg/owasp/html/CssTokens;->cGV:Lorg/owasp/html/k;

    sget-object v3, Lorg/owasp/html/CssTokens;->cGT:[I

    sget-object v4, Lorg/owasp/html/CssTokens;->cGU:[Lorg/owasp/html/CssTokens$TokenType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/owasp/html/CssTokens;-><init>(Ljava/lang/String;Lorg/owasp/html/k;[I[Lorg/owasp/html/CssTokens$TokenType;)V

    sput-object v0, Lorg/owasp/html/CssTokens;->cGW:Lorg/owasp/html/CssTokens;

    .line 1381
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lorg/owasp/html/CssTokens;->cGX:[Z

    .line 1383
    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/owasp/html/CssTokens;->cGX:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/owasp/html/CssTokens;->cGX:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1385
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/owasp/html/CssTokens;->cGX:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1386
    :cond_2
    sget-object v0, Lorg/owasp/html/CssTokens;->cGX:[Z

    const/16 v1, 0x5f

    aput-boolean v5, v0, v1

    .line 1387
    sget-object v0, Lorg/owasp/html/CssTokens;->cGX:[Z

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    .line 1426
    new-instance v0, Lorg/owasp/html/ab;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "em"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "ex"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "ch"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "rem"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "vh"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "vw"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "vmin"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "vmax"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "px"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "mm"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "cm"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "in"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "pt"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "pc"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "deg"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "rad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "grad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "turn"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "s"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "ms"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "hz"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "khz"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "dpi"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "dpcm"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    const-string v2, "dppx"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/owasp/html/ab;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/owasp/html/CssTokens;->cGY:Lorg/owasp/html/ab;

    .line 1470
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    .line 1474
    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    sget-object v1, Lorg/owasp/html/CssTokens;->cGZ:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1475
    :cond_3
    const/16 v0, 0x61

    :goto_4
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_4

    sget-object v1, Lorg/owasp/html/CssTokens;->cGZ:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1476
    :cond_4
    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    sget-object v1, Lorg/owasp/html/CssTokens;->cGZ:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1477
    :cond_5
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    .line 1478
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x2e

    aput-boolean v5, v0, v1

    .line 1479
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x5f

    aput-boolean v5, v0, v1

    .line 1480
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x7e

    aput-boolean v5, v0, v1

    .line 1482
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x3a

    aput-boolean v5, v0, v1

    .line 1483
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x2f

    aput-boolean v5, v0, v1

    .line 1484
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x3f

    aput-boolean v5, v0, v1

    .line 1485
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x23

    aput-boolean v5, v0, v1

    .line 1486
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x5b

    aput-boolean v5, v0, v1

    .line 1487
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x5d

    aput-boolean v5, v0, v1

    .line 1488
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x40

    aput-boolean v5, v0, v1

    .line 1491
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x21

    aput-boolean v5, v0, v1

    .line 1492
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x24

    aput-boolean v5, v0, v1

    .line 1493
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    .line 1500
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x2b

    aput-boolean v5, v0, v1

    .line 1501
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x2c

    aput-boolean v5, v0, v1

    .line 1502
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x3b

    aput-boolean v5, v0, v1

    .line 1503
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x3d

    aput-boolean v5, v0, v1

    .line 1505
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    const/16 v1, 0x25

    aput-boolean v5, v0, v1

    .line 1508
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/owasp/html/CssTokens;->coF:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/owasp/html/k;[I[Lorg/owasp/html/CssTokens$TokenType;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/owasp/html/CssTokens;->cGP:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lorg/owasp/html/CssTokens;->cGQ:Lorg/owasp/html/k;

    .line 179
    iput-object p3, p0, Lorg/owasp/html/CssTokens;->cGR:[I

    .line 180
    iput-object p4, p0, Lorg/owasp/html/CssTokens;->cGS:[Lorg/owasp/html/CssTokens$TokenType;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/owasp/html/k;[I[Lorg/owasp/html/CssTokens$TokenType;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/owasp/html/CssTokens;-><init>(Ljava/lang/String;Lorg/owasp/html/k;[I[Lorg/owasp/html/CssTokens$TokenType;)V

    return-void
.end method

.method static synthetic a(Lorg/owasp/html/CssTokens;)[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/owasp/html/CssTokens;->cGR:[I

    return-object v0
.end method

.method static synthetic abE()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/owasp/html/CssTokens;->cGT:[I

    return-object v0
.end method

.method static synthetic abF()Lorg/owasp/html/CssTokens;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/owasp/html/CssTokens;->cGW:Lorg/owasp/html/CssTokens;

    return-object v0
.end method

.method static synthetic abG()[Lorg/owasp/html/CssTokens$TokenType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/owasp/html/CssTokens;->cGU:[Lorg/owasp/html/CssTokens$TokenType;

    return-object v0
.end method

.method static synthetic abH()[Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/owasp/html/CssTokens;->cGZ:[Z

    return-object v0
.end method

.method static synthetic abI()[C
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/owasp/html/CssTokens;->coF:[C

    return-object v0
.end method

.method static synthetic b([II)[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    sget-object p0, Lorg/owasp/html/CssTokens;->cGT:[I

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-eq p1, v0, :cond_0

    new-array v0, p1, [I

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method static synthetic b([III)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    add-int v0, p1, p2

    array-length v1, p0

    if-lt v1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method static synthetic b(Lorg/owasp/html/CssTokens;)[Lorg/owasp/html/CssTokens$TokenType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/owasp/html/CssTokens;->cGS:[Lorg/owasp/html/CssTokens$TokenType;

    return-object v0
.end method

.method static e(Ljava/lang/CharSequence;II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1456
    if-ne p1, p2, :cond_0

    move v0, v1

    .line 1463
    :goto_0
    return v0

    .line 1457
    :cond_0
    sget-object v0, Lorg/owasp/html/CssTokens;->cGY:Lorg/owasp/html/ab;

    move-object v2, v0

    .line 1458
    :goto_1
    if-ge p1, p2, :cond_3

    .line 1459
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1460
    const/16 v3, 0x41

    if-gt v3, v0, :cond_1

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    or-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_1
    invoke-virtual {v2, v0}, Lorg/owasp/html/ab;->q(C)Lorg/owasp/html/ab;

    move-result-object v0

    .line 1461
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 1458
    :cond_2
    add-int/lit8 p1, p1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 1463
    :cond_3
    invoke-virtual {v2}, Lorg/owasp/html/ab;->acl()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic gd(I)Z
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x80

    if-lt p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xfeff

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/owasp/html/CssTokens;->cGX:[Z

    aget-boolean v0, v0, p0

    goto :goto_0
.end method

.method public static in(Ljava/lang/String;)Lorg/owasp/html/CssTokens;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/owasp/html/l;

    invoke-direct {v0, p0}, Lorg/owasp/html/l;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lorg/owasp/html/l;->abK()V

    .line 88
    invoke-virtual {v0}, Lorg/owasp/html/l;->abJ()Lorg/owasp/html/CssTokens;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(C)Z
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    const/16 v1, 0x20

    if-ge p0, v1, :cond_0

    shl-int v1, v0, p0

    and-int/lit16 v1, v1, 0x3400

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final abD()Lorg/owasp/html/m;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lorg/owasp/html/m;

    iget-object v1, p0, Lorg/owasp/html/CssTokens;->cGS:[Lorg/owasp/html/CssTokens$TokenType;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lorg/owasp/html/m;-><init>(Lorg/owasp/html/CssTokens;I)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/owasp/html/CssTokens;->abD()Lorg/owasp/html/m;

    move-result-object v0

    return-object v0
.end method
