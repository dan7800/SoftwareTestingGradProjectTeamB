.class public final Lorg/apache/james/mime4j/field/datetime/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/d;


# static fields
.field private static cEK:[I

.field private static cEL:[I


# instance fields
.field private cED:I

.field private cEI:I

.field private final cEJ:[I

.field private cEQ:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private cER:[I

.field private cES:I

.field public cGn:Lorg/apache/james/mime4j/field/datetime/parser/e;

.field cGo:Lorg/apache/james/mime4j/field/datetime/parser/f;

.field public cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

.field public cGq:Lorg/apache/james/mime4j/field/datetime/parser/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 418
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEK:[I

    .line 419
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEL:[I

    .line 420
    return-void

    .line 418
    :array_0
    .array-data 4
        0x2
        0x7f0
        0x7f0
        0x7ff800
        0x800000
        -0x1000000
        -0x2000000
    .end array-data

    .line 419
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    .line 524
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    .line 526
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cES:I

    .line 453
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/datetime/parser/f;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGo:Lorg/apache/james/mime4j/field/datetime/parser/f;

    .line 454
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/e;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGo:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/e;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/f;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGn:Lorg/apache/james/mime4j/field/datetime/parser/e;

    .line 455
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/g;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/g;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 456
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    .line 457
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    .line 458
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method private static a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final aaZ()I
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGq:Lorg/apache/james/mime4j/field/datetime/parser/g;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGn:Lorg/apache/james/mime4j/field/datetime/parser/e;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->abx()Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    .line 521
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGq:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_0
.end method

.method private final gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/16 v7, 0x31

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 488
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 490
    :goto_0
    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    .line 491
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFV:I

    if-ne v2, p1, :cond_1

    .line 492
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    .line 493
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    return-object v0

    .line 489
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGn:Lorg/apache/james/mime4j/field/datetime/parser/e;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->abx()Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_0

    .line 495
    :cond_1
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 496
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cES:I

    .line 497
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_2

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cES:I

    if-ltz v1, :cond_3

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cES:I

    aput-boolean v6, v3, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cES:I

    :cond_3
    move v2, v0

    :goto_2
    const/4 v1, 0x7

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    if-ne v1, v4, :cond_6

    move v1, v0

    :goto_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_6

    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEK:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    aput-boolean v6, v3, v1

    :cond_4
    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEL:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    add-int/lit8 v4, v1, 0x20

    aput-boolean v6, v3, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_4
    if-ge v1, v7, :cond_9

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_8

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cER:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cER:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cER:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    sget-object v3, Lorg/apache/james/mime4j/field/datetime/parser/a;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/g;[[I[Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final abt()Lorg/apache/james/mime4j/field/datetime/a;
    .locals 10

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v2, -0x1

    .line 133
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v3, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v4, v3, v1

    :goto_1
    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I

    move-result v4

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v3, v2, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v3, v1, v0

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v3, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    const/4 v1, 0x2

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v3, v0, v1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    :goto_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cGp:Lorg/apache/james/mime4j/field/datetime/parser/g;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :pswitch_4
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :pswitch_5
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :pswitch_6
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :pswitch_7
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_4

    :cond_2
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_2

    :pswitch_8
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move v0, v1

    :goto_5
    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    new-instance v5, Lorg/apache/james/mime4j/field/datetime/parser/b;

    invoke-direct {v5, v3, v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/b;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I

    move-result v4

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I

    move-result v6

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v0

    :goto_6
    packed-switch v0, :pswitch_data_3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    const/4 v3, 0x4

    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v7, v0, v3

    move v0, v8

    :goto_7
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v3, v2, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v3

    :goto_8
    packed-switch v3, :pswitch_data_4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    const/4 v1, 0x5

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v3, v0, v1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :pswitch_9
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v0, 0x2

    goto :goto_5

    :pswitch_a
    const/16 v3, 0xd

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_5

    :pswitch_b
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v0, 0x4

    goto :goto_5

    :pswitch_c
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v0, 0x5

    goto :goto_5

    :pswitch_d
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v0, 0x6

    goto :goto_5

    :pswitch_e
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v0, 0x7

    goto :goto_5

    :pswitch_f
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/16 v0, 0x8

    goto :goto_5

    :pswitch_10
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/16 v0, 0x9

    goto/16 :goto_5

    :pswitch_11
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/16 v0, 0xa

    goto/16 :goto_5

    :pswitch_12
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/16 v0, 0xb

    goto/16 :goto_5

    :pswitch_13
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/16 v0, 0xc

    goto/16 :goto_5

    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_6

    :pswitch_14
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I

    move-result v0

    goto :goto_7

    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_8

    :pswitch_15
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/james/mime4j/field/datetime/parser/a;->a(Lorg/apache/james/mime4j/field/datetime/parser/g;)I

    move-result v7

    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    mul-int/2addr v1, v7

    :goto_9
    new-instance v7, Lorg/apache/james/mime4j/field/datetime/parser/c;

    invoke-direct {v7, v4, v6, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/c;-><init>(IIII)V

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/a;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/datetime/parser/b;->abu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/datetime/parser/b;->getMonth()I

    move-result v2

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/datetime/parser/b;->getDay()I

    move-result v3

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/c;->getHour()I

    move-result v4

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/c;->getMinute()I

    move-result v5

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/c;->getSecond()I

    move-result v6

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/c;->abv()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/a;-><init>(Ljava/lang/String;IIIIII)V

    .line 134
    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 135
    return-object v0

    .line 133
    :pswitch_16
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/a;->aaZ()I

    move-result v1

    :goto_a
    packed-switch v1, :pswitch_data_5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEJ:[I

    const/4 v1, 0x6

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cEI:I

    aput v3, v0, v1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :cond_6
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/a;->cED:I

    goto :goto_a

    :pswitch_17
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move v1, v8

    :goto_b
    mul-int/lit8 v1, v1, 0x64

    goto :goto_9

    :pswitch_18
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move v1, v8

    goto :goto_b

    :pswitch_19
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x5

    goto :goto_b

    :pswitch_1a
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x4

    goto :goto_b

    :pswitch_1b
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x6

    goto :goto_b

    :pswitch_1c
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x5

    goto :goto_b

    :pswitch_1d
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x7

    goto :goto_b

    :pswitch_1e
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x6

    goto :goto_b

    :pswitch_1f
    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x8

    goto :goto_b

    :pswitch_20
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    const/4 v1, -0x7

    goto :goto_b

    :pswitch_21
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/a;->gc(I)Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move v1, v8

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x19
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
