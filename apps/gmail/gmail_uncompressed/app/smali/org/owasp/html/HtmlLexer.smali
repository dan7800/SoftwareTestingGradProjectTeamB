.class final Lorg/owasp/html/HtmlLexer;
.super Lorg/owasp/html/a;
.source "SourceFile"


# static fields
.field private static final cIU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cIR:Lorg/owasp/html/HtmlInputSplitter;

.field private cIS:Lorg/owasp/html/HtmlLexer$State;

.field private final cIT:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/owasp/html/R;",
            ">;"
        }
    .end annotation
.end field

.field private final cIr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 252
    const-string v0, "checked"

    const-string v1, "compact"

    const-string v2, "declare"

    const-string v3, "defer"

    const-string v4, "disabled"

    const-string v5, "ismap"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "multiple"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "nohref"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "noresize"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "noshade"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "nowrap"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "readonly"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "selected"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/HtmlLexer;->cIU:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/owasp/html/a;-><init>()V

    .line 49
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIW:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    .line 52
    iput-object p1, p0, Lorg/owasp/html/HtmlLexer;->cIr:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter;

    invoke-direct {v0, p1}, Lorg/owasp/html/HtmlInputSplitter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIR:Lorg/owasp/html/HtmlInputSplitter;

    .line 54
    return-void
.end method

.method private acd()Lorg/owasp/html/R;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/R;

    .line 229
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIR:Lorg/owasp/html/HtmlInputSplitter;

    invoke-virtual {v0}, Lorg/owasp/html/HtmlInputSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIR:Lorg/owasp/html/HtmlInputSplitter;

    invoke-virtual {v0}, Lorg/owasp/html/HtmlInputSplitter;->aby()Lorg/owasp/html/R;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gg(I)Lorg/owasp/html/R;
    .locals 2

    .prologue
    .line 234
    :goto_0
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIR:Lorg/owasp/html/HtmlInputSplitter;

    invoke-virtual {v0}, Lorg/owasp/html/HtmlInputSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/owasp/html/HtmlLexer;->cIR:Lorg/owasp/html/HtmlInputSplitter;

    invoke-virtual {v1}, Lorg/owasp/html/HtmlInputSplitter;->aby()Lorg/owasp/html/R;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/R;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static iu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected final abz()Lorg/owasp/html/R;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 84
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lorg/owasp/html/HtmlLexer;->acd()Lorg/owasp/html/R;

    move-result-object v1

    .line 85
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 163
    :cond_0
    :goto_1
    return-object v1

    .line 87
    :cond_1
    sget-object v0, Lorg/owasp/html/F;->cIx:[I

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    invoke-virtual {v3}, Lorg/owasp/html/HtmlTokenType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 113
    sget-object v0, Lorg/owasp/html/F;->cIV:[I

    iget-object v3, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    invoke-virtual {v3}, Lorg/owasp/html/HtmlLexer$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 115
    :pswitch_1
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-eq v0, v3, :cond_2

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJN:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v3, :cond_0

    :cond_2
    move-object v0, v1

    .line 117
    :goto_2
    invoke-direct {p0, v2}, Lorg/owasp/html/HtmlLexer;->gg(I)Lorg/owasp/html/R;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    iget-object v5, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v4, v5, :cond_4

    iget v4, v0, Lorg/owasp/html/R;->start:I

    iget v3, v3, Lorg/owasp/html/R;->end:I

    iget-object v0, v0, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v4, v3, v0}, Lorg/owasp/html/R;->a(IILorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v0

    invoke-direct {p0}, Lorg/owasp/html/HtmlLexer;->acd()Lorg/owasp/html/R;

    goto :goto_2

    .line 91
    :pswitch_2
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto :goto_1

    .line 94
    :pswitch_3
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    sget-object v2, Lorg/owasp/html/HtmlLexer$State;->cIZ:Lorg/owasp/html/HtmlLexer$State;

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    iget-object v2, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v2, :cond_3

    .line 97
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIT:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    .line 99
    iget v0, v1, Lorg/owasp/html/R;->start:I

    iget v1, v1, Lorg/owasp/html/R;->start:I

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJJ:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v0, v1, v2}, Lorg/owasp/html/R;->a(IILorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v1

    goto :goto_1

    .line 103
    :cond_3
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIW:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 117
    goto :goto_1

    .line 121
    :pswitch_4
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    iget-object v2, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIr:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v0, v2}, Lorg/owasp/html/R;->aC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJI:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v1, v0}, Lorg/owasp/html/HtmlInputSplitter;->a(Lorg/owasp/html/R;Lorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v1

    .line 126
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIY:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto/16 :goto_1

    .line 130
    :pswitch_5
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v3, :cond_6

    .line 131
    iget-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIr:Ljava/lang/String;

    const-string v3, "="

    invoke-virtual {v1, v0, v3}, Lorg/owasp/html/R;->aC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIZ:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto/16 :goto_0

    .line 137
    :cond_5
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJI:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v1, v0}, Lorg/owasp/html/HtmlInputSplitter;->a(Lorg/owasp/html/R;Lorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v1

    goto/16 :goto_1

    .line 141
    :cond_6
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto/16 :goto_1

    .line 145
    :pswitch_6
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-eq v0, v3, :cond_7

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJO:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v3, :cond_0

    .line 147
    :cond_7
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    iget-object v3, v1, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    if-ne v0, v3, :cond_c

    move v0, v2

    .line 151
    :goto_3
    invoke-direct {p0, v0}, Lorg/owasp/html/HtmlLexer;->gg(I)Lorg/owasp/html/R;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v2, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v4, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    if-ne v3, v4, :cond_a

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/owasp/html/HtmlLexer;->gg(I)Lorg/owasp/html/R;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v2, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v4, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lorg/owasp/html/HtmlLexer;->cIr:Ljava/lang/String;

    iget v4, v2, Lorg/owasp/html/R;->start:I

    iget v2, v2, Lorg/owasp/html/R;->end:I

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/owasp/html/HtmlLexer;->cIU:Ljava/util/Set;

    invoke-static {v2}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lorg/owasp/html/HtmlLexer;->gg(I)Lorg/owasp/html/R;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, v2, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v4, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    if-ne v3, v4, :cond_8

    add-int/lit8 v2, v0, 0x3

    invoke-direct {p0, v2}, Lorg/owasp/html/HtmlLexer;->gg(I)Lorg/owasp/html/R;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_b

    iget-object v3, p0, Lorg/owasp/html/HtmlLexer;->cIr:Ljava/lang/String;

    const-string v4, "="

    invoke-virtual {v2, v3, v4}, Lorg/owasp/html/R;->aC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v2, v2, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    if-eq v2, v3, :cond_9

    :cond_b
    if-nez v0, :cond_d

    .line 154
    :cond_c
    :goto_4
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJJ:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v1, v0}, Lorg/owasp/html/HtmlInputSplitter;->a(Lorg/owasp/html/R;Lorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v1

    .line 156
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    iput-object v0, p0, Lorg/owasp/html/HtmlLexer;->cIS:Lorg/owasp/html/HtmlLexer$State;

    goto/16 :goto_1

    .line 151
    :cond_d
    iget v2, v1, Lorg/owasp/html/R;->end:I

    :cond_e
    invoke-direct {p0}, Lorg/owasp/html/HtmlLexer;->acd()Lorg/owasp/html/R;

    move-result-object v2

    iget v2, v2, Lorg/owasp/html/R;->end:I

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_e

    iget v0, v1, Lorg/owasp/html/R;->start:I

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    invoke-static {v0, v2, v1}, Lorg/owasp/html/R;->a(IILorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v1

    goto :goto_4

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
