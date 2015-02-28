.class public final Lorg/apache/james/mime4j/field/datetime/parser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/d;


# static fields
.field static cEZ:I

.field static final cFb:[J

.field static final cFc:[I

.field public static final cFd:[Ljava/lang/String;

.field public static final cFe:[Ljava/lang/String;

.field public static final cFf:[I

.field static final cFg:[J

.field static final cFh:[J

.field static final cFi:[J

.field static final cFj:[J


# instance fields
.field public cFa:Ljava/io/PrintStream;

.field private final cFl:[I

.field private final cFm:[I

.field cFn:Ljava/lang/StringBuffer;

.field cFo:I

.field cFp:I

.field protected cFq:C

.field cFr:I

.field cFs:I

.field cFt:I

.field cFu:I

.field cFv:I

.field cFw:I

.field protected cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 422
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFb:[J

    .line 635
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFc:[I

    .line 637
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFd:[Ljava/lang/String;

    .line 646
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFe:[Ljava/lang/String;

    .line 651
    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    .line 655
    new-array v0, v5, [J

    const-wide v2, 0x400fffffffffL

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFg:[J

    .line 658
    new-array v0, v5, [J

    const-wide v2, 0x5000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFh:[J

    .line 661
    new-array v0, v5, [J

    const-wide v2, 0x1000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFi:[J

    .line 664
    new-array v0, v5, [J

    const-wide v2, 0x3fa000000000L

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFj:[J

    return-void

    .line 422
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 651
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/f;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFa:Ljava/io/PrintStream;

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFl:[I

    .line 669
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    .line 723
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    .line 724
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFs:I

    .line 677
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    .line 678
    return-void
.end method

.method private final aba()V
    .locals 3

    .prologue
    .line 693
    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    .line 694
    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFl:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 696
    :cond_0
    return-void
.end method

.method private abw()Lorg/apache/james/mime4j/field/datetime/parser/g;
    .locals 3

    .prologue
    .line 712
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/g;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/g;-><init>()V

    .line 713
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFV:I

    .line 714
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFd:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget-object v0, v0, v2

    .line 715
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGa:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abk()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFW:I

    .line 717
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abj()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFX:I

    .line 718
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abi()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFY:I

    .line 719
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abh()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cFZ:I

    .line 720
    return-object v1
.end method

.method private final at(II)I
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x2e

    const/16 v5, 0x24

    const v1, 0x7fffffff

    const-wide/16 v10, 0x0

    .line 299
    .line 300
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    .line 301
    const/4 v0, 0x1

    .line 302
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    aput p1, v3, v2

    move v3, v2

    move v2, v0

    move v0, v1

    .line 306
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    if-ne v6, v1, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->aba()V

    .line 308
    :cond_0
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_8

    .line 310
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    shl-long/2addr v6, v8

    .line 313
    :cond_1
    iget-object v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v8, v8, v2

    packed-switch v8, :pswitch_data_0

    .line 345
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v2, v3, :cond_1

    .line 377
    :goto_2
    if-eq v0, v1, :cond_3

    .line 379
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 380
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    move v0, v1

    .line 383
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 384
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    rsub-int/lit8 v3, v3, 0x4

    if-ne v2, v3, :cond_d

    .line 387
    :goto_3
    return p2

    .line 316
    :pswitch_1
    const-wide/high16 v8, 0x3ff000000000000L

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 318
    if-le v0, v4, :cond_4

    move v0, v4

    .line 320
    :cond_4
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fR(I)V

    goto :goto_1

    .line 322
    :cond_5
    const-wide v8, 0x100000200L

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 324
    if-le v0, v5, :cond_6

    move v0, v5

    .line 326
    :cond_6
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fR(I)V

    goto :goto_1

    .line 328
    :cond_7
    const-wide v8, 0x280000000000L

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 330
    const/16 v8, 0x18

    if-le v0, v8, :cond_2

    .line 331
    const/16 v0, 0x18

    goto :goto_1

    .line 335
    :pswitch_2
    const-wide v8, 0x100000200L

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 338
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fR(I)V

    move v0, v5

    .line 339
    goto :goto_1

    .line 341
    :pswitch_3
    const-wide/high16 v8, 0x3ff000000000000L

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 344
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fR(I)V

    move v0, v4

    goto :goto_1

    .line 350
    :cond_8
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_b

    .line 352
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v6, v8

    .line 355
    :cond_9
    iget-object v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v8, v8, v2

    packed-switch v8, :pswitch_data_1

    .line 363
    :cond_a
    :goto_4
    if-ne v2, v3, :cond_9

    goto :goto_2

    .line 358
    :pswitch_4
    const-wide v8, 0x7fffbfe07fffbfeL

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    .line 359
    const/16 v0, 0x23

    goto :goto_4

    .line 367
    :cond_b
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 368
    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 371
    :cond_c
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    .line 375
    if-ne v2, v3, :cond_c

    goto/16 :goto_2

    .line 386
    :cond_d
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v6

    iput-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private final au(II)I
    .locals 1

    .prologue
    .line 64
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 65
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    .line 66
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final bj(J)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    sparse-switch v1, :sswitch_data_0

    .line 162
    :cond_0
    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/e;->e(IJ)I

    move-result v0

    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v1

    invoke-direct {p0, v6, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/e;->d(IJ)I

    goto :goto_0

    .line 134
    :sswitch_0
    const-wide v0, 0x550000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 136
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 138
    :sswitch_2
    const-wide v0, 0x2a8000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 140
    :sswitch_3
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 141
    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 144
    :sswitch_4
    const-wide/32 v0, 0xaa00

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 146
    :sswitch_5
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 148
    :sswitch_6
    const-wide/32 v0, 0x481040

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 150
    :sswitch_7
    const-wide/16 v0, 0x80

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 152
    :sswitch_8
    const-wide/32 v0, 0x200010

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 154
    :sswitch_9
    const-wide/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 156
    :sswitch_a
    const-wide/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 158
    :sswitch_b
    const-wide/32 v0, 0x70420

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->l(JJ)I

    move-result v0

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_3
        0x61 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x75 -> :sswitch_b
    .end sparse-switch
.end method

.method private final d(IJ)I
    .locals 6

    .prologue
    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 37
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 39
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    goto :goto_0

    .line 44
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    if-nez v0, :cond_0

    .line 48
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final e(IJ)I
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->d(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->at(II)I

    move-result v0

    return v0
.end method

.method private final fR(I)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFl:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    aput p1, v0, v1

    .line 271
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFl:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    aput v1, v0, p1

    .line 273
    :cond_0
    return-void
.end method

.method private final fT(I)I
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/16 v6, 0x2a

    const/16 v5, 0x2d

    .line 549
    .line 550
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    .line 552
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    aput v0, v2, v0

    move v2, v3

    move v4, v0

    move v0, v1

    .line 556
    :goto_0
    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    if-ne v7, v1, :cond_0

    .line 557
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->aba()V

    .line 558
    :cond_0
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    .line 560
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 563
    :cond_1
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    .line 575
    :cond_2
    :goto_1
    if-ne v2, v4, :cond_1

    .line 622
    :goto_2
    if-eq v0, v1, :cond_3

    .line 624
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 625
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    move v0, v1

    .line 628
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 629
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v2, v4, :cond_b

    .line 632
    :goto_3
    return p1

    .line 566
    :pswitch_0
    if-le v0, v5, :cond_2

    move v0, v5

    .line 567
    goto :goto_1

    .line 570
    :pswitch_1
    if-le v0, v6, :cond_2

    move v0, v6

    .line 571
    goto :goto_1

    .line 577
    :cond_4
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_8

    .line 579
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 582
    :cond_5
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_1

    .line 600
    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    .line 585
    :pswitch_2
    if-le v0, v5, :cond_7

    move v0, v5

    .line 587
    :cond_7
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_6

    .line 588
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    aput v3, v7, v8

    goto :goto_4

    .line 591
    :pswitch_3
    if-le v0, v6, :cond_6

    move v0, v6

    .line 592
    goto :goto_4

    .line 595
    :pswitch_4
    if-le v0, v5, :cond_6

    move v0, v5

    .line 596
    goto :goto_4

    .line 604
    :cond_8
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    .line 605
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v8, v10

    .line 608
    :cond_9
    iget-object v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v10, v10, v2

    packed-switch v10, :pswitch_data_2

    .line 620
    :cond_a
    :goto_5
    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 611
    :pswitch_5
    sget-object v10, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v5, :cond_a

    move v0, v5

    .line 612
    goto :goto_5

    .line 615
    :pswitch_6
    sget-object v10, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v6, :cond_a

    move v0, v6

    .line 616
    goto :goto_5

    .line 631
    :cond_b
    :try_start_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v0

    goto :goto_3

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 608
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final fW(I)I
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/16 v6, 0x27

    const/16 v5, 0x29

    .line 428
    .line 429
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    .line 431
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    aput v0, v2, v0

    move v2, v3

    move v4, v0

    move v0, v1

    .line 435
    :goto_0
    iget v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFu:I

    if-ne v7, v1, :cond_0

    .line 436
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->aba()V

    .line 437
    :cond_0
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    .line 439
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 442
    :cond_1
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    .line 454
    :cond_2
    :goto_1
    if-ne v2, v4, :cond_1

    .line 501
    :goto_2
    if-eq v0, v1, :cond_3

    .line 503
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 504
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    move v0, v1

    .line 507
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 508
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v2, v4, :cond_b

    .line 511
    :goto_3
    return p1

    .line 445
    :pswitch_0
    if-le v0, v5, :cond_2

    move v0, v5

    .line 446
    goto :goto_1

    .line 449
    :pswitch_1
    if-le v0, v6, :cond_2

    move v0, v6

    .line 450
    goto :goto_1

    .line 456
    :cond_4
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_8

    .line 458
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    .line 461
    :cond_5
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_1

    .line 479
    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    .line 464
    :pswitch_2
    if-le v0, v5, :cond_7

    move v0, v5

    .line 466
    :cond_7
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_6

    .line 467
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFt:I

    aput v3, v7, v8

    goto :goto_4

    .line 470
    :pswitch_3
    if-le v0, v6, :cond_6

    move v0, v6

    .line 471
    goto :goto_4

    .line 474
    :pswitch_4
    if-le v0, v5, :cond_6

    move v0, v5

    .line 475
    goto :goto_4

    .line 483
    :cond_8
    iget-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    .line 484
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v8, v10

    .line 487
    :cond_9
    iget-object v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v10, v10, v2

    packed-switch v10, :pswitch_data_2

    .line 499
    :cond_a
    :goto_5
    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 490
    :pswitch_5
    sget-object v10, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v5, :cond_a

    move v0, v5

    .line 491
    goto :goto_5

    .line 494
    :pswitch_6
    sget-object v10, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v6, :cond_a

    move v0, v6

    .line 495
    goto :goto_5

    .line 510
    :cond_b
    :try_start_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 511
    :catch_0
    move-exception v0

    goto :goto_3

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 487
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final l(JJ)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x2

    .line 166
    and-long v2, p3, p1

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/e;->e(IJ)I

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    sparse-switch v1, :sswitch_data_0

    .line 264
    :cond_1
    invoke-direct {p0, v8, v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->e(IJ)I

    move-result v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    invoke-direct {p0, v8, v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->d(IJ)I

    goto :goto_0

    .line 176
    :sswitch_0
    const-wide/32 v4, 0x4000000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 177
    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_2
    const-wide/32 v4, 0x8000000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 179
    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 180
    :cond_3
    const-wide/32 v4, 0x10000000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 181
    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_4
    const-wide/32 v4, 0x20000000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 183
    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_5
    const-wide/32 v4, 0x40000000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 185
    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_6
    const-wide v4, 0x80000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    .line 187
    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_7
    const-wide v4, 0x100000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 189
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 190
    :cond_8
    const-wide v4, 0x200000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_9

    .line 191
    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 192
    :cond_9
    const-wide v4, 0x400000000L

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 193
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 196
    :sswitch_1
    const-wide/16 v4, 0x1000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 197
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 200
    :sswitch_2
    const-wide/32 v4, 0x400000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 201
    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 204
    :sswitch_3
    const-wide/16 v4, 0x40

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 205
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 208
    :sswitch_4
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 209
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 212
    :sswitch_5
    const-wide/32 v4, 0x40000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 213
    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 216
    :sswitch_6
    const-wide/16 v4, 0x100

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 217
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 220
    :sswitch_7
    const-wide/32 v4, 0x20000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 221
    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 224
    :sswitch_8
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    .line 225
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 226
    :cond_a
    const-wide/16 v4, 0x400

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b

    .line 227
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 228
    :cond_b
    const-wide/16 v4, 0x800

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    .line 229
    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 230
    :cond_c
    const-wide/32 v4, 0x10000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 231
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 234
    :sswitch_9
    const-wide/32 v4, 0x80000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 235
    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 238
    :sswitch_a
    const-wide/16 v4, 0x2000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_d

    .line 239
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 240
    :cond_d
    const-wide/16 v4, 0x4000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 241
    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 244
    :sswitch_b
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_e

    .line 245
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 246
    :cond_e
    const-wide/32 v4, 0x100000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 247
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 250
    :sswitch_c
    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 251
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 254
    :sswitch_d
    const-wide/32 v4, 0x200000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 255
    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 258
    :sswitch_e
    const-wide/32 v4, 0x8000

    and-long/2addr v4, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 259
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_0
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
        0x76 -> :sswitch_d
        0x79 -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public final abx()Lorg/apache/james/mime4j/field/datetime/parser/g;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 733
    move v0, v3

    move-object v1, v4

    .line 742
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    const/4 v6, -0x1

    iput v6, v2, Lorg/apache/james/mime4j/field/datetime/parser/f;->cFH:I

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v6

    iget v7, v2, Lorg/apache/james/mime4j/field/datetime/parser/f;->cFI:I

    iput v7, v2, Lorg/apache/james/mime4j/field/datetime/parser/f;->cFH:I

    iput-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    iput-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    .line 752
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    .line 756
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    .line 774
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    if-eq v0, v10, :cond_12

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_0

    .line 777
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fX(I)V

    .line 778
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFg:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    .line 780
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->abw()Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    .line 781
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGv:Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 782
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_1

    .line 783
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    .line 784
    :cond_1
    :goto_3
    return-object v0

    .line 746
    :catch_0
    move-exception v0

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 747
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->abw()Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    .line 748
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGv:Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_3

    .line 759
    :pswitch_0
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 760
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    .line 761
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v3, v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->at(II)I

    move-result v0

    :goto_4
    move v2, v0

    .line 762
    goto :goto_2

    .line 761
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_4

    :sswitch_1
    invoke-direct {p0, v3, v5}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_4

    :sswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_4

    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_4

    :sswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_4

    :sswitch_5
    const-wide/32 v6, 0x44000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_6
    const-wide/32 v6, 0x60000000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_7
    const-wide/32 v6, 0x400000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_8
    const-wide/32 v6, 0x18000000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_9
    const-wide/16 v6, 0x1100

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_a
    const-wide/32 v6, 0x4000000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_b
    const-wide/32 v6, 0x30800

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_c
    const-wide v6, 0x18000a010L

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_d
    const-wide/32 v6, 0x200000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_e
    const-wide/32 v6, 0x100000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_f
    const-wide v6, 0x600000000L

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto :goto_4

    :sswitch_10
    const-wide/32 v6, 0x80600

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto/16 :goto_4

    :sswitch_11
    const-wide/16 v6, 0xa0

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto/16 :goto_4

    :sswitch_12
    const-wide/32 v6, 0x2000000

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto/16 :goto_4

    :sswitch_13
    const-wide/16 v6, 0x40

    invoke-direct {p0, v6, v7}, Lorg/apache/james/mime4j/field/datetime/parser/e;->bj(J)I

    move-result v0

    goto/16 :goto_4

    .line 764
    :pswitch_1
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 765
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    .line 766
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fW(I)I

    move-result v0

    :goto_5
    move v2, v0

    .line 767
    goto/16 :goto_2

    .line 766
    :pswitch_2
    const/16 v0, 0x28

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_5

    :pswitch_3
    const/16 v0, 0x26

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_5

    .line 769
    :pswitch_4
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 770
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    .line 771
    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    packed-switch v0, :pswitch_data_2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/e;->fT(I)I

    move-result v0

    :goto_6
    move v2, v0

    goto/16 :goto_2

    :pswitch_5
    const/16 v0, 0x2b

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_6

    :pswitch_6
    const/16 v0, 0x2c

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->au(II)I

    move-result v0

    goto :goto_6

    .line 786
    :cond_2
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFh:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 788
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFi:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_11

    .line 790
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/e;->abw()Lorg/apache/james/mime4j/field/datetime/parser/g;

    move-result-object v0

    .line 791
    if-nez v1, :cond_3

    .line 799
    :goto_7
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v1, v1, v6

    if-eq v1, v11, :cond_13

    .line 800
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v1, v1, v6

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 795
    :cond_3
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGv:Lorg/apache/james/mime4j/field/datetime/parser/g;

    .line 796
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/g;->cGu:Lorg/apache/james/mime4j/field/datetime/parser/g;

    goto :goto_7

    .line 803
    :cond_4
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFv:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFp:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    packed-switch v0, :pswitch_data_3

    .line 804
    :cond_5
    :goto_8
    :pswitch_7
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_6

    .line 805
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    .line 807
    :cond_6
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFw:I

    .line 809
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 810
    goto/16 :goto_1

    .line 803
    :pswitch_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_8

    :pswitch_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    sput v5, Lorg/apache/james/mime4j/field/datetime/parser/e;->cEZ:I

    goto :goto_8

    :pswitch_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    :cond_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :pswitch_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cEZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cEZ:I

    goto/16 :goto_8

    :pswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFo:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cEZ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cEZ:I

    if-nez v0, :cond_5

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move v0, v3

    .line 814
    :goto_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abi()I

    move-result v6

    .line 815
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abh()I

    move-result v2

    .line 818
    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->readChar()C

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fX(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v3

    move v3, v2

    move v2, v6

    .line 829
    :goto_a
    if-nez v1, :cond_c

    .line 830
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/datetime/parser/f;->fX(I)V

    .line 831
    if-gt v0, v5, :cond_10

    const-string v0, ""

    :goto_b
    move-object v4, v0

    .line 833
    :cond_c
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFr:I

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIILjava/lang/String;C)V

    throw v0

    .line 820
    :catch_2
    move-exception v1

    .line 821
    if-gt v0, v5, :cond_e

    const-string v1, ""

    .line 822
    :goto_c
    iget-char v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v7, 0xa

    if-eq v4, v7, :cond_d

    iget-char v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cFq:C

    const/16 v7, 0xd

    if-ne v4, v7, :cond_f

    .line 823
    :cond_d
    add-int/lit8 v2, v6, 0x1

    move-object v4, v1

    move v1, v5

    .line 824
    goto :goto_a

    .line 821
    :cond_e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abl()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 827
    :cond_f
    add-int/lit8 v3, v2, 0x1

    move-object v4, v1

    move v2, v6

    move v1, v5

    goto :goto_a

    .line 831
    :cond_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/e;->cGt:Lorg/apache/james/mime4j/field/datetime/parser/f;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/f;->abl()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_11
    move-object v0, v1

    goto/16 :goto_7

    :cond_12
    move v0, v2

    goto :goto_9

    :cond_13
    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 761
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x28 -> :sswitch_2
        0x2c -> :sswitch_3
        0x3a -> :sswitch_4
        0x41 -> :sswitch_5
        0x43 -> :sswitch_6
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x46 -> :sswitch_9
        0x47 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4d -> :sswitch_c
        0x4e -> :sswitch_d
        0x4f -> :sswitch_e
        0x50 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
    .end sparse-switch

    .line 766
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 771
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 803
    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
