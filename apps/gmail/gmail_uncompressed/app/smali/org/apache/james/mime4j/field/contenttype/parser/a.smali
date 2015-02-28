.class public final Lorg/apache/james/mime4j/field/contenttype/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/b;


# static fields
.field private static cEK:[I


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

.field private cGd:Ljava/lang/String;

.field private cGe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cGf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cGg:Lorg/apache/james/mime4j/field/contenttype/parser/c;

.field cGh:Lorg/apache/james/mime4j/field/contenttype/parser/d;

.field public cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

.field public cGj:Lorg/apache/james/mime4j/field/contenttype/parser/e;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEK:[I

    .line 124
    return-void

    .line 123
    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x280000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGe:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGf:Ljava/util/ArrayList;

    .line 120
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEJ:[I

    .line 225
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    .line 227
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cES:I

    .line 154
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/d;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGh:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    .line 155
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/c;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGh:Lorg/apache/james/mime4j/field/contenttype/parser/d;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/c;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/d;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGg:Lorg/apache/james/mime4j/field/contenttype/parser/c;

    .line 156
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/e;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 157
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    .line 158
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    .line 159
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEJ:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private final aaZ()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGj:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGg:Lorg/apache/james/mime4j/field/contenttype/parser/c;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->abs()Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    .line 222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGj:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    goto :goto_0
.end method

.method private final ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 191
    :goto_0
    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    .line 192
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v2, v2, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFV:I

    if-ne v2, p1, :cond_1

    .line 193
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    .line 194
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    return-object v0

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGg:Lorg/apache/james/mime4j/field/contenttype/parser/c;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/c;->abs()Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    goto :goto_0

    .line 196
    :cond_1
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 197
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cES:I

    .line 198
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_2

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cES:I

    if-ltz v1, :cond_3

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cES:I

    aput-boolean v6, v3, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cES:I

    :cond_3
    move v2, v0

    :goto_2
    const/4 v1, 0x3

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEJ:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    if-ne v1, v4, :cond_5

    move v1, v0

    :goto_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_5

    sget-object v4, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEK:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    aput-boolean v6, v3, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_4
    if-ge v1, v7, :cond_8

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_7

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cER:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cER:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cER:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGi:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    sget-object v3, Lorg/apache/james/mime4j/field/contenttype/parser/a;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/e;[[I[Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final abn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGd:Ljava/lang/String;

    return-object v0
.end method

.method public final abo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGe:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final abp()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGf:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final abq()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x15

    .line 60
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->type:Ljava/lang/String;

    iget-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGd:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->aaZ()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEJ:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    aput v2, v0, v1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 62
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->aaZ()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEJ:[I

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cEI:I

    aput v2, v0, v1

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cED:I

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    :goto_3
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGe:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->cGf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->ga(I)Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/a;->type:Ljava/lang/String;

    return-object v0
.end method
