.class public Lorg/apache/james/mime4j/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cDh:Lorg/apache/james/mime4j/f;

.field private static cDy:Ljava/util/BitSet;


# instance fields
.field private cDA:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/a;",
            ">;"
        }
    .end annotation
.end field

.field private cDB:Lorg/apache/james/mime4j/c;

.field private cDC:Z

.field private cDD:Z

.field private cDz:Lorg/apache/james/mime4j/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/h;->cDh:Lorg/apache/james/mime4j/f;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    .line 62
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    .line 63
    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v1, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lorg/apache/james/mime4j/h;->cDz:Lorg/apache/james/mime4j/i;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    .line 57
    iput-object v2, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    .line 58
    iput-boolean v1, p0, Lorg/apache/james/mime4j/h;->cDC:Z

    .line 59
    iput-boolean v1, p0, Lorg/apache/james/mime4j/h;->cDD:Z

    .line 75
    return-void
.end method

.method private j(Ljava/io/InputStream;)V
    .locals 14

    .prologue
    .line 137
    new-instance v6, Lorg/apache/james/mime4j/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v6, v0}, Lorg/apache/james/mime4j/a;-><init>(Lorg/apache/james/mime4j/a;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->kZ()V

    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDz:Lorg/apache/james/mime4j/i;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/i;->getLineNumber()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v13, v0

    move v0, v2

    move v2, v1

    move v1, v13

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v1, v4, :cond_c

    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/a;

    goto :goto_0

    :cond_4
    int-to-char v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_7

    sget-object v4, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    invoke-virtual {v7, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v1, 0x2

    const/16 v2, 0x3a

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v2, 0x0

    const/4 v5, -0x1

    if-eq v9, v5, :cond_8

    sget-object v5, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_15

    sget-object v11, Lorg/apache/james/mime4j/h;->cDy:Ljava/util/BitSet;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    iget-object v5, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v5, v8}, Lorg/apache/james/mime4j/c;->ac(Ljava/lang/String;)V

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v5}, Lorg/apache/james/mime4j/a;->aA(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_9

    sget-object v2, Lorg/apache/james/mime4j/h;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    sget-object v2, Lorg/apache/james/mime4j/h;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Line "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Ignoring invalid field: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    :cond_9
    move v0, v3

    move v2, v4

    :cond_a
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->la()V

    .line 139
    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aaw()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->lb()V

    .line 144
    new-instance v0, Lorg/apache/james/mime4j/g;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aax()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/g;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    new-instance v2, Lorg/apache/james/mime4j/b;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/c;->e(Ljava/io/InputStream;)V

    .line 147
    invoke-virtual {v0}, Lorg/apache/james/mime4j/g;->aaD()V

    .line 149
    :cond_d
    invoke-virtual {v0}, Lorg/apache/james/mime4j/g;->aaB()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    new-instance v0, Lorg/apache/james/mime4j/g;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aax()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/g;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    iget-boolean v1, p0, Lorg/apache/james/mime4j/h;->cDC:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    new-instance v2, Lorg/apache/james/mime4j/b;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1}, Lorg/apache/james/mime4j/c;->lf()V

    .line 152
    :goto_6
    invoke-virtual {v0}, Lorg/apache/james/mime4j/g;->aaD()V

    .line 153
    invoke-virtual {v0}, Lorg/apache/james/mime4j/g;->aaC()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/h;->cDD:Z

    .line 161
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    new-instance v1, Lorg/apache/james/mime4j/b;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/c;->d(Ljava/io/InputStream;)V

    .line 167
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->lc()V

    .line 169
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 191
    :cond_f
    :goto_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 193
    return-void

    .line 151
    :cond_10
    iget-object v1, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v1}, Lorg/apache/james/mime4j/c;->ld()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/h;->j(Ljava/io/InputStream;)V

    iget-object v1, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v1}, Lorg/apache/james/mime4j/c;->le()V

    goto :goto_6

    .line 171
    :cond_11
    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aav()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aay()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    sget-object v0, Lorg/apache/james/mime4j/h;->cDh:Lorg/apache/james/mime4j/f;

    const-string v0, "base64 encoded message/rfc822 detected"

    invoke-static {v0}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    .line 174
    new-instance v0, Lorg/apache/james/mime4j/d;

    new-instance v1, Lorg/apache/james/mime4j/a/a;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/a/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/d;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 181
    :cond_12
    :goto_8
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/h;->k(Ljava/io/InputStream;)V

    .line 183
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_7

    .line 176
    :cond_13
    invoke-virtual {v6}, Lorg/apache/james/mime4j/a;->aaz()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    sget-object v0, Lorg/apache/james/mime4j/h;->cDh:Lorg/apache/james/mime4j/f;

    const-string v0, "quoted-printable encoded message/rfc822 detected"

    invoke-static {v0}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lorg/apache/james/mime4j/d;

    new-instance v1, Lorg/apache/james/mime4j/a/d;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/a/d;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/d;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_8

    .line 185
    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    new-instance v1, Lorg/apache/james/mime4j/b;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v6, v1}, Lorg/apache/james/mime4j/c;->a(Lorg/apache/james/mime4j/a;Ljava/io/InputStream;)V

    goto :goto_7

    :cond_15
    move v2, v5

    goto/16 :goto_5
.end method

.method private k(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/apache/james/mime4j/h;->cDC:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    new-instance v1, Lorg/apache/james/mime4j/b;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->lf()V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->kX()V

    .line 200
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/h;->j(Ljava/io/InputStream;)V

    .line 201
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    invoke-interface {v0}, Lorg/apache/james/mime4j/c;->kY()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/apache/james/mime4j/c;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/apache/james/mime4j/h;->cDB:Lorg/apache/james/mime4j/c;

    .line 322
    return-void
.end method

.method public final aaF()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/james/mime4j/h;->cDD:Z

    return v0
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lorg/apache/james/mime4j/i;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/i;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/h;->cDz:Lorg/apache/james/mime4j/i;

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/h;->cDz:Lorg/apache/james/mime4j/i;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/h;->k(Ljava/io/InputStream;)V

    .line 86
    return-void
.end method
