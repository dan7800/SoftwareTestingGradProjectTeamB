.class public final Lorg/apache/james/mime4j/field/contenttype/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/b;


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

.field protected cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    .line 602
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFc:[I

    .line 604
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFd:[Ljava/lang/String;

    .line 607
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFe:[Ljava/lang/String;

    .line 613
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    .line 616
    new-array v0, v5, [J

    const-wide/32 v2, 0x38003f

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFg:[J

    .line 619
    new-array v0, v5, [J

    const-wide/16 v2, 0x140

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFh:[J

    .line 622
    new-array v0, v5, [J

    const-wide/16 v2, 0x40

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFi:[J

    .line 625
    new-array v0, v5, [J

    const-wide/32 v2, 0x7fe80

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFj:[J

    return-void

    .line 109
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 613
    :array_1
    .array-data 4
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
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFa:Ljava/io/PrintStream;

    .line 629
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFl:[I

    .line 630
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    .line 684
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    .line 685
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFs:I

    .line 638
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    .line 639
    return-void
.end method

.method private final aba()V
    .locals 3

    .prologue
    .line 654
    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    .line 655
    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFl:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method private abr()Lorg/apache/james/mime4j/field/contenttype/parser/e;
    .locals 3

    .prologue
    .line 673
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/e;-><init>()V

    .line 674
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFV:I

    .line 675
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFd:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget-object v0, v0, v2

    .line 676
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abk()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFW:I

    .line 678
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abj()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFX:I

    .line 679
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abi()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFY:I

    .line 680
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abh()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFZ:I

    .line 681
    return-object v1
.end method

.method private final at(II)I
    .locals 10

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    .line 117
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    .line 119
    const v0, 0x7fffffff

    .line 122
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->aba()V

    .line 124
    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_b

    .line 126
    const-wide/16 v4, 0x1

    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    shl-long/2addr v4, v3

    .line 129
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    .line 170
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 213
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 215
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 216
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 217
    const v0, 0x7fffffff

    .line 219
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 220
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_12

    .line 223
    :goto_3
    return p2

    .line 132
    :pswitch_0
    const-wide v6, 0x3ff6cfafffffdffL

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_7

    .line 134
    const/16 v3, 0x15

    if-le v0, v3, :cond_4

    .line 135
    const/16 v0, 0x15

    .line 136
    :cond_4
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    .line 144
    :cond_5
    :goto_4
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 146
    const/16 v3, 0x14

    if-le v0, v3, :cond_6

    .line 147
    const/16 v0, 0x14

    .line 148
    :cond_6
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_1

    .line 138
    :cond_7
    const-wide v6, 0x100000200L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    .line 140
    const/4 v3, 0x6

    if-le v0, v3, :cond_8

    .line 141
    const/4 v0, 0x6

    .line 142
    :cond_8
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_4

    .line 152
    :pswitch_1
    const-wide v6, 0x100000200L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 153
    const/4 v0, 0x6

    .line 155
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_1

    .line 158
    :pswitch_2
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 159
    const/16 v3, 0x14

    if-le v0, v3, :cond_9

    .line 161
    const/16 v0, 0x14

    .line 162
    :cond_9
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_1

    .line 165
    :pswitch_3
    const-wide v6, 0x3ff6cfafffffdffL

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 166
    const/16 v3, 0x15

    if-le v0, v3, :cond_a

    .line 168
    const/16 v0, 0x15

    .line 169
    :cond_a
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto/16 :goto_1

    .line 175
    :cond_b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_e

    .line 177
    const-wide/16 v4, 0x1

    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v3, v3, 0x3f

    shl-long/2addr v4, v3

    .line 180
    :cond_c
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    .line 188
    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    .line 184
    :pswitch_4
    const-wide/32 v6, -0x38000002

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_d

    .line 185
    const/16 v0, 0x15

    .line 187
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_5

    .line 195
    :cond_e
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    .line 196
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 199
    :cond_f
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    .line 208
    :cond_10
    :goto_6
    if-ne v1, v2, :cond_f

    goto/16 :goto_2

    .line 203
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    .line 204
    const/16 v6, 0x15

    if-le v0, v6, :cond_11

    .line 206
    const/16 v0, 0x15

    .line 207
    :cond_11
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_6

    .line 222
    :cond_12
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 199
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final fQ(I)I
    .locals 1

    .prologue
    .line 45
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method private final fR(I)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFl:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    aput p1, v0, v1

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFl:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    aput v1, v0, p1

    .line 86
    :cond_0
    return-void
.end method

.method private final fT(I)I
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/16 v6, 0xc

    const/16 v5, 0xf

    .line 516
    .line 517
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    .line 519
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    aput v0, v2, v0

    move v2, v3

    move v4, v0

    move v0, v1

    .line 523
    :goto_0
    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    if-ne v7, v1, :cond_0

    .line 524
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->aba()V

    .line 525
    :cond_0
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    .line 527
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    .line 530
    :cond_1
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    .line 542
    :cond_2
    :goto_1
    if-ne v2, v4, :cond_1

    .line 589
    :goto_2
    if-eq v0, v1, :cond_3

    .line 591
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 592
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    move v0, v1

    .line 595
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 596
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v2, v4, :cond_b

    .line 599
    :goto_3
    return p1

    .line 533
    :pswitch_0
    if-le v0, v5, :cond_2

    move v0, v5

    .line 534
    goto :goto_1

    .line 537
    :pswitch_1
    if-le v0, v6, :cond_2

    move v0, v6

    .line 538
    goto :goto_1

    .line 544
    :cond_4
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_8

    .line 546
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    .line 549
    :cond_5
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_1

    .line 567
    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    .line 552
    :pswitch_2
    if-le v0, v5, :cond_7

    move v0, v5

    .line 554
    :cond_7
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_6

    .line 555
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    aput v3, v7, v8

    goto :goto_4

    .line 558
    :pswitch_3
    if-le v0, v6, :cond_6

    move v0, v6

    .line 559
    goto :goto_4

    .line 562
    :pswitch_4
    if-le v0, v5, :cond_6

    move v0, v5

    .line 563
    goto :goto_4

    .line 571
    :cond_8
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    .line 572
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v8, v10

    .line 575
    :cond_9
    iget-object v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v10, v10, v2

    packed-switch v10, :pswitch_data_2

    .line 587
    :cond_a
    :goto_5
    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 578
    :pswitch_5
    sget-object v10, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v5, :cond_a

    move v0, v5

    .line 579
    goto :goto_5

    .line 582
    :pswitch_6
    sget-object v10, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v6, :cond_a

    move v0, v6

    .line 583
    goto :goto_5

    .line 598
    :cond_b
    :try_start_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 599
    :catch_0
    move-exception v0

    goto :goto_3

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final fV(I)I
    .locals 10

    .prologue
    .line 380
    const/4 v2, 0x0

    .line 381
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    .line 382
    const/4 v1, 0x1

    .line 383
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 384
    const v0, 0x7fffffff

    .line 387
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->aba()V

    .line 389
    :cond_0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_5

    .line 391
    const-wide/16 v4, 0x1

    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    shl-long/2addr v4, v3

    .line 394
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    .line 410
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 468
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 470
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 471
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 472
    const v0, 0x7fffffff

    .line 474
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 475
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_f

    .line 478
    :goto_3
    return p1

    .line 398
    :pswitch_0
    const-wide v6, -0x400000001L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 399
    const/16 v3, 0x12

    if-le v0, v3, :cond_4

    .line 401
    const/16 v0, 0x12

    .line 402
    :cond_4
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_1

    .line 405
    :pswitch_1
    const/16 v3, 0x11

    if-le v0, v3, :cond_2

    .line 406
    const/16 v0, 0x11

    goto :goto_1

    .line 412
    :cond_5
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_b

    .line 414
    const-wide/16 v4, 0x1

    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v3, v3, 0x3f

    shl-long/2addr v4, v3

    .line 417
    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_1

    .line 439
    :cond_7
    :goto_4
    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 420
    :pswitch_2
    const-wide/32 v6, -0x10000001

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_9

    .line 422
    const/16 v3, 0x12

    if-le v0, v3, :cond_8

    .line 423
    const/16 v0, 0x12

    .line 424
    :cond_8
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_4

    .line 426
    :cond_9
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_7

    .line 427
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    const/4 v7, 0x1

    aput v7, v3, v6

    goto :goto_4

    .line 430
    :pswitch_3
    const/16 v3, 0x11

    if-le v0, v3, :cond_7

    .line 431
    const/16 v0, 0x11

    goto :goto_4

    .line 434
    :pswitch_4
    const-wide/32 v6, -0x10000001

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_7

    .line 435
    const/16 v3, 0x12

    if-le v0, v3, :cond_a

    .line 437
    const/16 v0, 0x12

    .line 438
    :cond_a
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_4

    .line 446
    :cond_b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    .line 447
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 450
    :cond_c
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_2

    .line 466
    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    .line 454
    :pswitch_5
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    .line 455
    const/16 v6, 0x12

    if-le v0, v6, :cond_e

    .line 457
    const/16 v0, 0x12

    .line 458
    :cond_e
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fR(I)V

    goto :goto_5

    .line 461
    :pswitch_6
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    const/16 v6, 0x11

    if-le v0, v6, :cond_d

    .line 462
    const/16 v0, 0x11

    goto :goto_5

    .line 477
    :cond_f
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final fW(I)I
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/16 v6, 0x9

    const/16 v5, 0xb

    .line 261
    .line 262
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    .line 264
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    aput v0, v2, v0

    move v2, v3

    move v4, v0

    move v0, v1

    .line 268
    :goto_0
    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFu:I

    if-ne v7, v1, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->aba()V

    .line 270
    :cond_0
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    .line 272
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    .line 275
    :cond_1
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    .line 287
    :cond_2
    :goto_1
    if-ne v2, v4, :cond_1

    .line 334
    :goto_2
    if-eq v0, v1, :cond_3

    .line 336
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 337
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    move v0, v1

    .line 340
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 341
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v2, v4, :cond_b

    .line 344
    :goto_3
    return p1

    .line 278
    :pswitch_0
    if-le v0, v5, :cond_2

    move v0, v5

    .line 279
    goto :goto_1

    .line 282
    :pswitch_1
    if-le v0, v6, :cond_2

    move v0, v6

    .line 283
    goto :goto_1

    .line 289
    :cond_4
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_8

    .line 291
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    .line 294
    :cond_5
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_1

    .line 312
    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    .line 297
    :pswitch_2
    if-le v0, v5, :cond_7

    move v0, v5

    .line 299
    :cond_7
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_6

    .line 300
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFt:I

    aput v3, v7, v8

    goto :goto_4

    .line 303
    :pswitch_3
    if-le v0, v6, :cond_6

    move v0, v6

    .line 304
    goto :goto_4

    .line 307
    :pswitch_4
    if-le v0, v5, :cond_6

    move v0, v5

    .line 308
    goto :goto_4

    .line 316
    :cond_8
    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    .line 317
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v8, v10

    .line 320
    :cond_9
    iget-object v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFm:[I

    add-int/lit8 v2, v2, -0x1

    aget v10, v10, v2

    packed-switch v10, :pswitch_data_2

    .line 332
    :cond_a
    :goto_5
    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 323
    :pswitch_5
    sget-object v10, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v5, :cond_a

    move v0, v5

    .line 324
    goto :goto_5

    .line 327
    :pswitch_6
    sget-object v10, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFb:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    if-le v0, v6, :cond_a

    move v0, v6

    .line 328
    goto :goto_5

    .line 343
    :cond_b
    :try_start_0
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v0

    goto :goto_3

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 294
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 320
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final gb(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->at(II)I

    move-result v0

    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final abs()Lorg/apache/james/mime4j/field/contenttype/parser/e;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 694
    move v0, v3

    move-object v1, v4

    .line 703
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    const/4 v6, -0x1

    iput v6, v2, Lorg/apache/james/mime4j/field/contenttype/parser/d;->cFH:I

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v6

    iget v7, v2, Lorg/apache/james/mime4j/field/contenttype/parser/d;->cFI:I

    iput v7, v2, Lorg/apache/james/mime4j/field/contenttype/parser/d;->cFH:I

    iput-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    iput-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    .line 713
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    .line 717
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    .line 740
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    if-eq v0, v10, :cond_15

    .line 742
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_0

    .line 743
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fX(I)V

    .line 744
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFg:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 746
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->abr()Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    .line 747
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGm:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 748
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    packed-switch v1, :pswitch_data_1

    .line 749
    :goto_3
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_1

    .line 750
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    .line 751
    :cond_1
    :goto_4
    return-object v0

    .line 707
    :catch_0
    move-exception v0

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 708
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->abr()Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    .line 709
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGm:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    goto :goto_4

    .line 720
    :pswitch_0
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 721
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 722
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->at(II)I

    move-result v0

    :goto_5
    move v2, v0

    .line 723
    goto :goto_2

    .line 722
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->gb(I)I

    move-result v0

    goto :goto_5

    :sswitch_1
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->gb(I)I

    move-result v0

    goto :goto_5

    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_5

    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_5

    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_5

    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_5

    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_5

    .line 725
    :pswitch_1
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 726
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 727
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    packed-switch v0, :pswitch_data_2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fW(I)I

    move-result v0

    :goto_6
    move v2, v0

    .line 728
    goto/16 :goto_2

    .line 727
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_6

    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_6

    .line 730
    :pswitch_4
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 731
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 732
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    packed-switch v0, :pswitch_data_3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fT(I)I

    move-result v0

    :goto_7
    move v2, v0

    .line 733
    goto/16 :goto_2

    .line 732
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_7

    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_7

    .line 735
    :pswitch_7
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 736
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    .line 737
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    packed-switch v0, :pswitch_data_4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fV(I)I

    move-result v0

    :goto_8
    move v2, v0

    goto/16 :goto_2

    :pswitch_8
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->fQ(I)I

    move-result v0

    goto :goto_8

    .line 748
    :pswitch_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFp:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    goto/16 :goto_3

    .line 753
    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFh:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    .line 755
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFi:[J

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    shr-int/lit8 v6, v6, 0x6

    aget-wide v6, v0, v6

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_14

    .line 757
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->abr()Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    .line 758
    if-nez v1, :cond_4

    .line 766
    :goto_9
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v1, v1, v6

    if-eq v1, v11, :cond_16

    .line 767
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v1, v1, v6

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 762
    :cond_4
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGm:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 763
    iput-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    goto :goto_9

    .line 770
    :cond_5
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFv:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFp:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    packed-switch v0, :pswitch_data_5

    .line 771
    :cond_6
    :goto_a
    :pswitch_a
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_7

    .line 772
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFf:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    .line 774
    :cond_7
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFw:I

    .line 776
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 777
    goto/16 :goto_1

    .line 770
    :pswitch_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    sput v5, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cEZ:I

    goto :goto_a

    :pswitch_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cEZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cEZ:I

    goto/16 :goto_a

    :pswitch_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cEZ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cEZ:I

    if-nez v0, :cond_6

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    goto/16 :goto_a

    :pswitch_10
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fY(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFo:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFn:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move v0, v3

    .line 781
    :goto_b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abi()I

    move-result v6

    .line 782
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abh()I

    move-result v2

    .line 785
    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->readChar()C

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fX(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v3

    move v3, v2

    move v2, v6

    .line 796
    :goto_c
    if-nez v1, :cond_f

    .line 797
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->fX(I)V

    .line 798
    if-gt v0, v5, :cond_13

    const-string v0, ""

    :goto_d
    move-object v4, v0

    .line 800
    :cond_f
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFr:I

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIILjava/lang/String;C)V

    throw v0

    .line 787
    :catch_2
    move-exception v1

    .line 788
    if-gt v0, v5, :cond_11

    const-string v1, ""

    .line 789
    :goto_e
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v7, 0xa

    if-eq v4, v7, :cond_10

    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cFq:C

    const/16 v7, 0xd

    if-ne v4, v7, :cond_12

    .line 790
    :cond_10
    add-int/lit8 v2, v6, 0x1

    move-object v4, v1

    move v1, v5

    .line 791
    goto :goto_c

    .line 788
    :cond_11
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abl()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 794
    :cond_12
    add-int/lit8 v3, v2, 0x1

    move-object v4, v1

    move v2, v6

    move v1, v5

    goto :goto_c

    .line 798
    :cond_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/c;->cGk:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/d;->abl()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    move-object v0, v1

    goto/16 :goto_9

    :cond_15
    move v0, v2

    goto :goto_b

    :cond_16
    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 748
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch

    .line 722
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch

    .line 727
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 732
    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 737
    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_8
    .end packed-switch

    .line 770
    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
