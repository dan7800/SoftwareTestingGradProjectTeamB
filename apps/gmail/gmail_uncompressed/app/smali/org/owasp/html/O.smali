.class public Lorg/owasp/html/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/N;


# instance fields
.field private final cJr:Ljava/lang/Appendable;

.field private final cJs:Lorg/owasp/html/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private final cJt:Lorg/owasp/html/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cJu:Ljava/lang/String;

.field private cJv:Ljava/lang/StringBuilder;

.field private cJw:Z


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/io/IOException;",
            ">;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    .line 99
    iput-object p2, p0, Lorg/owasp/html/O;->cJs:Lorg/owasp/html/w;

    .line 100
    iput-object p3, p0, Lorg/owasp/html/O;->cJt:Lorg/owasp/html/w;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/owasp/html/O;-><init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)V

    return-void
.end method

.method public static a(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)Lorg/owasp/html/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/io/IOException;",
            ">;",
            "Lorg/owasp/html/w",
            "<-",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/owasp/html/O;"
        }
    .end annotation

    .prologue
    .line 73
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lorg/owasp/html/Q;

    invoke-direct {v0, p0, p1, p2}, Lorg/owasp/html/Q;-><init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)V

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/owasp/html/O;

    invoke-direct {v0, p0, p1, p2}, Lorg/owasp/html/O;-><init>(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/owasp/html/O;->cJt:Lorg/owasp/html/w;

    sget-object v1, Lorg/owasp/html/w;->cIf:Lorg/owasp/html/w;

    if-eq v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/owasp/html/O;->cJt:Lorg/owasp/html/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/owasp/html/w;->U(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/4 v2, -0x1

    .line 275
    .line 276
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_5

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 278
    packed-switch v4, :pswitch_data_0

    .line 276
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :pswitch_1
    add-int/lit8 v4, v1, 0x3

    if-ge v4, v3, :cond_1

    const/16 v4, 0x21

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_1

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_1

    .line 284
    if-ne v0, v2, :cond_2

    move v0, v1

    .line 285
    goto :goto_1

    .line 289
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_0

    const/16 v4, 0x2f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v4, p0, v5}, Lorg/owasp/html/W;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    if-gez v0, :cond_3

    .line 332
    :cond_2
    :goto_2
    return v1

    .line 299
    :cond_3
    const-string v4, "script"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 318
    :pswitch_2
    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_0

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_0

    .line 319
    if-gez v0, :cond_4

    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    :cond_4
    move v0, v2

    .line 320
    goto :goto_1

    .line 327
    :cond_5
    if-ltz v0, :cond_6

    move v1, v0

    .line 330
    goto :goto_2

    :cond_6
    move v1, v2

    .line 332
    goto :goto_2

    .line 278
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static iv(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 339
    if-nez v4, :cond_1

    move v1, v2

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    const/16 v0, 0x80

    if-le v4, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    move v0, v2

    .line 342
    :goto_1
    if-ge v3, v4, :cond_0

    .line 343
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 344
    sparse-switch v5, :sswitch_data_0

    .line 354
    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    .line 355
    if-eqz v3, :cond_3

    const/16 v6, 0x30

    if-ge v5, v6, :cond_a

    :cond_3
    move v1, v2

    goto :goto_0

    .line 346
    :sswitch_0
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_0

    .line 348
    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v0, v3, 0x1

    if-ne v0, v4, :cond_9

    :cond_5
    move v1, v2

    goto :goto_0

    .line 351
    :sswitch_1
    if-eqz v3, :cond_6

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_a

    :cond_6
    move v1, v2

    goto :goto_0

    .line 356
    :cond_7
    const/16 v6, 0x41

    if-gt v6, v5, :cond_8

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_8

    .line 357
    const/16 v6, 0x5a

    if-ge v6, v5, :cond_a

    const/16 v6, 0x61

    if-ge v5, v6, :cond_a

    move v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    .line 359
    goto :goto_0

    :cond_9
    move v0, v1

    .line 342
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method private static iw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    invoke-static {p0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :sswitch_0
    const-string v1, "xmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "pre"

    goto :goto_0

    .line 381
    :sswitch_1
    const-string v1, "listing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "pre"

    goto :goto_0

    .line 384
    :sswitch_2
    const-string v1, "plaintext"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "pre"

    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final abZ()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    .line 120
    return-void
.end method

.method public final aca()V
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/owasp/html/O;->cJu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/owasp/html/O;->ip(Ljava/lang/String;)V

    .line 127
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    .line 128
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_2

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lorg/owasp/html/O;->cJs:Lorg/owasp/html/w;

    invoke-interface {v1, v0}, Lorg/owasp/html/w;->U(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final ach()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    iget-object v1, p0, Lorg/owasp/html/O;->cJs:Lorg/owasp/html/w;

    invoke-interface {v1, v0}, Lorg/owasp/html/w;->U(Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/owasp/html/O;->iw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/owasp/html/O;->iv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Invalid element name"

    invoke-direct {p0, v0, v2}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v0, "Tag content cannot appear inside CDATA element"

    invoke-direct {p0, v0, v2}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/owasp/html/P;->cJx:[I

    invoke-static {v2}, Lorg/owasp/html/HtmlTextEscapingMode;->ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/owasp/html/HtmlTextEscapingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/O;->iv(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v1, "Invalid attr name"

    invoke-direct {p0, v1, v0}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_0
    iput-object v2, p0, Lorg/owasp/html/O;->cJu:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v4, 0x22

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    invoke-static {v1, v0}, Lorg/owasp/html/u;->a(Ljava/lang/String;Ljava/lang/Appendable;)V

    const/16 v0, 0x60

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lorg/owasp/html/HtmlTextEscapingMode;->iA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const-string v1, " /"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_6
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final io(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    :try_start_0
    iget-boolean v0, p0, Lorg/owasp/html/O;->cJw:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lorg/owasp/html/O;->cJs:Lorg/owasp/html/w;

    invoke-interface {v1, v0}, Lorg/owasp/html/w;->U(Ljava/lang/Object;)V

    .line 262
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    invoke-static {p1, v0}, Lorg/owasp/html/u;->a(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final ip(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 216
    :try_start_0
    invoke-static {p1}, Lorg/owasp/html/O;->iw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/owasp/html/O;->cJw:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    iget-object v1, p0, Lorg/owasp/html/O;->cJs:Lorg/owasp/html/w;

    invoke-interface {v1, v0}, Lorg/owasp/html/w;->U(Ljava/lang/Object;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/O;->iv(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Invalid element name"

    invoke-direct {p0, v1, v0}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/owasp/html/O;->cJu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Tag content cannot appear inside CDATA element"

    invoke-direct {p0, v1, v0}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/owasp/html/O;->cJv:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/owasp/html/u;->e(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lorg/owasp/html/O;->cJu:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/owasp/html/O;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    const-string v1, "plaintext"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lorg/owasp/html/O;->cJr:Ljava/lang/Appendable;

    const-string v2, "</"

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_5
    const-string v3, "Invalid CDATA text content"

    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lorg/owasp/html/O;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
