.class public final Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/m;
.implements Lorg/apache/james/mime4j/field/address/parser/o;


# static fields
.field private static cEK:[I

.field private static cEL:[I


# instance fields
.field cEA:Lorg/apache/james/mime4j/field/address/parser/s;

.field public cEB:Lorg/apache/james/mime4j/field/address/parser/u;

.field public cEC:Lorg/apache/james/mime4j/field/address/parser/u;

.field private cED:I

.field private cEE:Lorg/apache/james/mime4j/field/address/parser/u;

.field private cEF:Lorg/apache/james/mime4j/field/address/parser/u;

.field private cEG:I

.field public cEH:Z

.field private cEI:I

.field private final cEJ:[I

.field private final cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

.field private cEN:Z

.field private cEO:I

.field private final cEP:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

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

.field private cET:[I

.field private cEU:I

.field protected cEy:Lorg/apache/james/mime4j/field/address/parser/q;

.field public cEz:Lorg/apache/james/mime4j/field/address/parser/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 711
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEK:[I

    .line 712
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEL:[I

    .line 713
    return-void

    .line 711
    nop

    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data

    .line 712
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/q;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    .line 704
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEH:Z

    .line 707
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/l;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    .line 721
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEN:Z

    .line 722
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEO:I

    .line 816
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(B)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEP:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    .line 864
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cES:I

    .line 865
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cET:[I

    .line 752
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/s;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/parser/s;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEA:Lorg/apache/james/mime4j/field/address/parser/s;

    .line 753
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/n;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEA:Lorg/apache/james/mime4j/field/address/parser/s;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/n;-><init>(Lorg/apache/james/mime4j/field/address/parser/s;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEz:Lorg/apache/james/mime4j/field/address/parser/n;

    .line 754
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/u;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 755
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    .line 756
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    move v1, v0

    .line 757
    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/l;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/l;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 759
    :cond_1
    return-void
.end method

.method private a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/t;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fP(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/t;->cFy:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 49
    return-void
.end method

.method private aaO()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 136
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/b;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/parser/b;-><init>()V

    .line 138
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 139
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 141
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 187
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 165
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v1, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v1

    .line 166
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 167
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    :try_start_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_a

    .line 178
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    move v2, v3

    :goto_2
    if-eqz v2, :cond_1

    .line 186
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 187
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_1
    throw v0

    .line 144
    :cond_2
    :try_start_4
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_1

    .line 146
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaQ()V

    goto :goto_0

    .line 185
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 150
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaR()V

    .line 151
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v1, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v1

    .line 160
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 161
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0

    .line 151
    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_3

    .line 153
    :pswitch_1
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/f;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/f;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x4

    :try_start_5
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_4
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v1, 0x7

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v0, v1

    :goto_5
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_6
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0x8

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v0, v1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :cond_4
    :try_start_7
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_4

    :sswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaP()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move v1, v3

    :goto_7
    if-eqz v1, :cond_5

    :try_start_a
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_5
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_6
    :try_start_b
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_8
    sparse-switch v0, :sswitch_data_2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0x9

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_7

    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_8

    :sswitch_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaP()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :cond_8
    :try_start_c
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_9

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_9
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 154
    :pswitch_3
    :try_start_d
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaQ()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 180
    :cond_a
    :try_start_e
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_b

    .line 181
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    .line 183
    :cond_b
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 151
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 153
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_3
        0xe -> :sswitch_3
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method private aaP()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 194
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/h;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/parser/h;-><init>()V

    .line 196
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 197
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 199
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 233
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v1, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v1

    .line 212
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 213
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    :try_start_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 224
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    move v2, v3

    :goto_2
    if-eqz v2, :cond_1

    .line 232
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 233
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_1
    throw v0

    .line 202
    :cond_2
    :try_start_4
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_1

    .line 204
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaQ()V

    goto :goto_0

    .line 231
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 208
    :sswitch_1
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/i;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/i;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaR()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaQ()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move v1, v3

    :goto_3
    if-eqz v1, :cond_3

    :try_start_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_3
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :try_start_a
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 226
    :cond_6
    :try_start_b
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_7

    .line 227
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    .line 229
    :cond_7
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 208
    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_3

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method private aaQ()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 334
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/d;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/parser/d;-><init>()V

    .line 336
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 337
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 339
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 340
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 343
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v1

    .line 348
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaS()V

    .line 349
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 365
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 367
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 340
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0

    .line 342
    :pswitch_0
    new-instance v5, Lorg/apache/james/mime4j/field/address/parser/k;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/parser/k;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x8

    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaT()V

    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_3
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0xb

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v0, v1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    :try_start_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 355
    :try_start_5
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_7

    .line 358
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    move v2, v3

    :goto_4
    if-eqz v2, :cond_1

    .line 366
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 367
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_1
    throw v0

    .line 342
    :cond_2
    :try_start_6
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    :sswitch_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_5
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0xc

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v0, v1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaT()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move v1, v3

    :goto_6
    if-eqz v1, :cond_3

    :try_start_9
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_3
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 365
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 342
    :cond_4
    :try_start_a
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :cond_5
    :try_start_b
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 360
    :cond_7
    :try_start_c
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_8

    .line 361
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    .line 363
    :cond_8
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 342
    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_6

    .line 340
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private aaR()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 432
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/j;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/j;-><init>()V

    .line 433
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 435
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 439
    :sswitch_0
    :try_start_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 447
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v3, v0, v2

    .line 448
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 449
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 464
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    throw v0

    .line 439
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0

    .line 441
    :sswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 451
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_1

    .line 457
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 464
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 444
    :sswitch_2
    const/16 v0, 0x1f

    :try_start_2
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_1

    .line 451
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 439
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 451
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private aaS()V
    .locals 9

    .prologue
    const/16 v8, 0x1f

    const/4 v7, -0x1

    .line 471
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/a;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/a;-><init>()V

    .line 472
    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 474
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 476
    :try_start_0
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/g;

    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/parser/g;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v2, 0xf

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    :try_start_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V

    .line 482
    const/4 v1, 0x0

    .line 484
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_7

    .line 487
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 494
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 496
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_0
    throw v0

    .line 476
    :cond_1
    :try_start_4
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v2, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v2, 0x10

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 477
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 478
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaT()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 494
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 496
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 476
    :sswitch_1
    const/16 v0, 0x1f

    :try_start_6
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_2

    :sswitch_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v2, v7, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v2

    :goto_3
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v5, 0x11

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v6, v2, v5

    :goto_4
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_3

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cFV:I

    if-ne v0, v8, :cond_5

    :cond_3
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v2, "Words in local part must be separated by \'.\'"

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_3

    :pswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v7, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v2, 0x12

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0

    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_5

    :sswitch_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_4
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    .line 489
    :cond_7
    :try_start_7
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v2, :cond_8

    .line 490
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    .line 492
    :cond_8
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 476
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method private aaT()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 565
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/e;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/e;-><init>()V

    .line 566
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    .line 568
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 570
    :try_start_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 601
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0x15

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v3, v0, v1

    .line 602
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 603
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :catchall_0
    move-exception v0

    .line 607
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 608
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    throw v0

    .line 570
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0

    .line 572
    :sswitch_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    .line 575
    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v1

    :goto_2
    sparse-switch v1, :sswitch_data_1

    .line 581
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v1, 0x13

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    :goto_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    .line 608
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    return-void

    .line 575
    :cond_1
    :try_start_2
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_2

    .line 584
    :sswitch_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v1, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v1

    :goto_4
    packed-switch v1, :pswitch_data_0

    .line 589
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v4, v1, v3

    .line 592
    :goto_5
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    .line 593
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v1, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_4

    .line 586
    :pswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    goto :goto_5

    .line 594
    :cond_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    goto :goto_1

    .line 598
    :sswitch_2
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 575
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 584
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private final aaU()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const v3, 0x7fffffff

    const/4 v1, 0x0

    .line 614
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 615
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaX()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 617
    :goto_0
    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 615
    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    throw v0
.end method

.method private final aaV()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 621
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 622
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaY()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 624
    :goto_0
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    :goto_1
    return v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->as(II)V

    throw v0
.end method

.method private final aaW()Z
    .locals 8

    .prologue
    const/16 v5, 0x1f

    const/16 v7, 0x9

    const/16 v6, 0xe

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 648
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 651
    :cond_0
    :goto_1
    return v0

    .line 648
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_1

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_2

    .line 649
    :cond_4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_3
    if-eqz v2, :cond_8

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_4
    if-nez v2, :cond_0

    move v0, v1

    .line 651
    goto :goto_1

    .line 650
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    :cond_6
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fO(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_5
    if-eqz v2, :cond_5

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    move v2, v1

    goto :goto_4
.end method

.method private final aaX()Z
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final aaY()Z
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final aaZ()I
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEC:Lorg/apache/james/mime4j/field/address/parser/u;

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEz:Lorg/apache/james/mime4j/field/address/parser/n;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/n;->abc()Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    .line 859
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEC:Lorg/apache/james/mime4j/field/address/parser/u;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cFV:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0
.end method

.method private ar(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 869
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_2

    .line 871
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cET:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    aput p1, v0, v1

    goto :goto_0

    .line 872
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    if-eqz v0, :cond_0

    .line 873
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    move v0, v1

    .line 874
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    if-ge v0, v2, :cond_3

    .line 875
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cET:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move v2, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 880
    array-length v3, v0

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    array-length v5, v5

    if-ne v3, v5, :cond_9

    .line 881
    const/4 v3, 0x1

    move v2, v1

    .line 882
    :goto_3
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 883
    aget v5, v0, v2

    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    aget v6, v6, v2

    if-eq v5, v6, :cond_4

    move v0, v1

    .line 888
    :goto_4
    if-nez v0, :cond_6

    :goto_5
    move v2, v0

    .line 890
    goto :goto_2

    .line 882
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v0, v2

    .line 891
    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 892
    :cond_7
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cET:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    add-int/lit8 v1, p2, -0x1

    aput p1, v0, v1

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5
.end method

.method private final as(II)V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 962
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    aget-object v0, v0, p1

    .line 963
    :goto_0
    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEV:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    if-le v1, v2, :cond_0

    .line 964
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEY:Lorg/apache/james/mime4j/field/address/parser/l;

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/l;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/l;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEY:Lorg/apache/james/mime4j/field/address/parser/l;

    move-object v0, v1

    .line 967
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    add-int/2addr v1, v3

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEV:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEW:Lorg/apache/james/mime4j/field/address/parser/u;

    iput v3, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEX:I

    .line 968
    return-void

    .line 965
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/l;->cEY:Lorg/apache/james/mime4j/field/address/parser/l;

    goto :goto_0
.end method

.method private b(Lorg/apache/james/mime4j/field/address/parser/r;)V
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/t;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fP(I)Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/t;->cFz:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 53
    return-void
.end method

.method private final fN(I)Lorg/apache/james/mime4j/field/address/parser/u;
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 795
    :goto_0
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    .line 796
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cFV:I

    if-ne v2, p1, :cond_4

    .line 797
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    .line 798
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEO:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 799
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEO:I

    .line 800
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 801
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    aget-object v1, v1, v0

    .line 802
    :goto_2
    if-eqz v1, :cond_2

    .line 803
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEV:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEW:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 804
    :cond_0
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEY:Lorg/apache/james/mime4j/field/address/parser/l;

    goto :goto_2

    .line 794
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEz:Lorg/apache/james/mime4j/field/address/parser/n;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/n;->abc()Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_0

    .line 800
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 808
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    return-object v0

    .line 810
    :cond_4
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 811
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cES:I

    .line 812
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_5

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cES:I

    if-ltz v1, :cond_6

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cES:I

    aput-boolean v6, v3, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cES:I

    :cond_6
    move v2, v0

    :goto_4
    const/16 v1, 0x16

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    if-ne v1, v4, :cond_9

    move v1, v0

    :goto_5
    const/16 v4, 0x20

    if-ge v1, v4, :cond_9

    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEK:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    aput-boolean v6, v3, v1

    :cond_7
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEL:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    add-int/lit8 v4, v1, 0x20

    aput-boolean v6, v3, v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_a
    move v1, v0

    :goto_6
    if-ge v1, v7, :cond_c

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_b

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cER:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEU:I

    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEN:Z

    move v2, v0

    :goto_7
    const/4 v1, 0x2

    if-ge v2, v1, :cond_f

    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEM:[Lorg/apache/james/mime4j/field/address/parser/l;

    aget-object v1, v1, v2

    :cond_d
    iget v3, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEV:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    if-le v3, v4, :cond_e

    iget v3, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEX:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    iget-object v3, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEW:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    packed-switch v2, :pswitch_data_0

    :cond_e
    :goto_8
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/l;->cEY:Lorg/apache/james/mime4j/field/address/parser/l;

    if-nez v1, :cond_d

    :goto_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaX()Z

    goto :goto_8

    :catch_0
    move-exception v1

    goto :goto_9

    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaY()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_f
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEN:Z

    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ar(II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEQ:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_10
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    sget-object v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/u;[[I[Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final fO(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 818
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    if-ne v1, v2, :cond_1

    .line 819
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    .line 820
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    if-nez v1, :cond_0

    .line 821
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEz:Lorg/apache/james/mime4j/field/address/parser/n;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/n;->abc()Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 828
    :goto_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEN:Z

    if-eqz v1, :cond_3

    .line 829
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    move v2, v0

    .line 830
    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    if-eq v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_1

    .line 823
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_0

    .line 826
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_0

    .line 831
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ar(II)V

    .line 833
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget v1, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cFV:I

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    .line 835
    :cond_4
    return v0

    .line 834
    :cond_5
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEG:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEF:Lorg/apache/james/mime4j/field/address/parser/u;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEP:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v0
.end method

.method private fP(I)Lorg/apache/james/mime4j/field/address/parser/u;
    .locals 3

    .prologue
    .line 847
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEE:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 848
    :goto_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 849
    iget-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 848
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 847
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEB:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEz:Lorg/apache/james/mime4j/field/address/parser/n;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/n;->abc()Lorg/apache/james/mime4j/field/address/parser/u;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    goto :goto_2

    .line 852
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final aaN()Lorg/apache/james/mime4j/field/address/parser/c;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 39
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/c;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/c;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abg()V

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lorg/apache/james/mime4j/field/address/parser/r;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v6, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v4

    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/q;->abd()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/c;
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 39
    :cond_0
    :try_start_3
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaO()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/q;->abf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_1

    :try_start_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEy:Lorg/apache/james/mime4j/field/address/parser/q;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/q;->c(Lorg/apache/james/mime4j/field/address/parser/r;)V

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lorg/apache/james/mime4j/field/address/parser/r;)V

    :cond_1
    throw v0
    :try_end_6
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_6 .. :try_end_6} :catch_1

    .line 41
    :catch_1
    move-exception v0

    .line 42
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_2
    :try_start_7
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->fN(I)Lorg/apache/james/mime4j/field/address/parser/u;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaZ()I

    move-result v0

    :goto_4
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEJ:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cEI:I

    aput v5, v0, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->cED:I

    goto :goto_4

    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->aaO()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_4
    :try_start_8
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_5
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method
