.class public Lorg/apache/james/mime4j/a/d;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static cDh:Lorg/apache/james/mime4j/f;


# instance fields
.field private cDZ:Ljava/io/InputStream;

.field cEa:Lorg/apache/james/mime4j/a/b;

.field cEb:Lorg/apache/james/mime4j/a/b;

.field private cEc:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/james/mime4j/a/b;

    invoke-direct {v0}, Lorg/apache/james/mime4j/a/b;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    .line 42
    new-instance v0, Lorg/apache/james/mime4j/a/b;

    invoke-direct {v0}, Lorg/apache/james/mime4j/a/b;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    .line 46
    iput-object p1, p0, Lorg/apache/james/mime4j/a/d;->cDZ:Ljava/io/InputStream;

    .line 47
    return-void
.end method

.method private static d(B)B
    .locals 3

    .prologue
    .line 213
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 214
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 218
    :goto_0
    return v0

    .line 215
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 216
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 217
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    .line 218
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 224
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/a/d;->cDZ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    return-void
.end method

.method public read()I
    .locals 9

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x30

    const/16 v6, 0xd

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 59
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->CW()I

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->CW()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->CW()I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cDZ:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    :cond_0
    :goto_3
    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->CW()I

    move-result v2

    if-eqz v2, :cond_e

    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->aaG()B

    move-result v2

    iget-byte v3, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/f;->error(Ljava/lang/Object;)V

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/b;->clear()V

    goto :goto_3

    :sswitch_1
    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEb:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/a/b;->clear()V

    goto :goto_2

    :pswitch_0
    if-eq v2, v5, :cond_2

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    goto :goto_0

    :pswitch_1
    if-ne v2, v6, :cond_3

    const/4 v2, 0x2

    iput-byte v2, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    goto :goto_0

    :cond_3
    if-lt v2, v7, :cond_4

    if-le v2, v8, :cond_6

    :cond_4
    const/16 v3, 0x41

    if-lt v2, v3, :cond_5

    const/16 v3, 0x46

    if-le v2, v3, :cond_6

    :cond_5
    const/16 v3, 0x61

    if-lt v2, v3, :cond_7

    const/16 v3, 0x66

    if-gt v2, v3, :cond_7

    :cond_6
    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    move v0, v2

    goto/16 :goto_0

    :cond_7
    if-ne v2, v5, :cond_8

    sget-object v2, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    sget-object v2, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    const-string v2, "Malformed MIME; got =="

    invoke-static {v2}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/a/b;->c(B)V

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed MIME; expected 10, got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/a/b;->c(B)V

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v6}, Lorg/apache/james/mime4j/a/b;->c(B)V

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto/16 :goto_0

    :pswitch_3
    if-lt v2, v7, :cond_a

    if-le v2, v8, :cond_c

    :cond_a
    const/16 v3, 0x41

    if-lt v2, v3, :cond_b

    const/16 v3, 0x46

    if-le v2, v3, :cond_c

    :cond_b
    const/16 v3, 0x61

    if-lt v2, v3, :cond_d

    const/16 v3, 0x66

    if-gt v2, v3, :cond_d

    :cond_c
    invoke-static {v0}, Lorg/apache/james/mime4j/a/d;->d(B)B

    move-result v3

    invoke-static {v2}, Lorg/apache/james/mime4j/a/d;->d(B)B

    move-result v2

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    iget-object v4, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto/16 :goto_0

    :cond_d
    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    sget-object v3, Lorg/apache/james/mime4j/a/d;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed MIME; expected [0-9A-Z], got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    iput-byte v1, p0, Lorg/apache/james/mime4j/a/d;->cEc:B

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/a/b;->c(B)V

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/a/b;->c(B)V

    iget-object v3, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/a/b;->c(B)V

    goto/16 :goto_0

    .line 60
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/a/b;->CW()I

    move-result v0

    if-nez v0, :cond_10

    .line 61
    const/4 v0, -0x1

    .line 67
    :cond_f
    :goto_4
    return v0

    .line 63
    :cond_10
    iget-object v0, p0, Lorg/apache/james/mime4j/a/d;->cEa:Lorg/apache/james/mime4j/a/b;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/a/b;->aaG()B

    move-result v0

    .line 64
    if-gez v0, :cond_f

    .line 67
    and-int/lit16 v0, v0, 0xff

    goto :goto_4

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
