.class final Lorg/owasp/html/HtmlInputSplitter;
.super Lorg/owasp/html/a;
.source "SourceFile"


# instance fields
.field private final cIr:Ljava/lang/String;

.field private cIs:Z

.field private cIt:Z

.field private cIu:Ljava/lang/String;

.field private cIv:Lorg/owasp/html/HtmlTextEscapingMode;

.field private cIw:Lorg/owasp/html/R;

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Lorg/owasp/html/a;-><init>()V

    .line 282
    iput-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    .line 384
    iput-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIw:Lorg/owasp/html/R;

    .line 287
    iput-object p1, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    .line 288
    return-void
.end method

.method static a(Lorg/owasp/html/R;Lorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;
    .locals 2

    .prologue
    .line 705
    iget v0, p0, Lorg/owasp/html/R;->start:I

    iget v1, p0, Lorg/owasp/html/R;->end:I

    invoke-static {v0, v1, p1}, Lorg/owasp/html/R;->a(IILorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v0

    return-object v0
.end method

.method private aw(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final abz()Lorg/owasp/html/R;
    .locals 14

    .prologue
    const/16 v12, 0x2f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v11, 0x2d

    const/16 v10, 0x3e

    .line 295
    iget v5, p0, Lorg/owasp/html/HtmlInputSplitter;->offset:I

    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    move-object v3, v1

    .line 296
    :cond_0
    :goto_0
    if-nez v3, :cond_2c

    .line 326
    :goto_1
    return-object v1

    .line 295
    :cond_1
    add-int/lit8 v3, v5, 0x1

    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIs:Z

    if-eqz v0, :cond_11

    if-ne v10, v4, :cond_3

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    iput-boolean v2, p0, Lorg/owasp/html/HtmlInputSplitter;->cIs:Z

    :cond_2
    :goto_2
    :pswitch_0
    if-nez v0, :cond_2b

    :goto_3
    if-ge v3, v6, :cond_2a

    const/16 v0, 0x3c

    iget-object v4, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-ne v12, v4, :cond_5

    if-eq v3, v6, :cond_4

    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v10, v0, :cond_4

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    iput-boolean v2, p0, Lorg/owasp/html/HtmlInputSplitter;->cIs:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    goto :goto_2

    :cond_5
    const/16 v0, 0x3d

    if-ne v0, v4, :cond_6

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    if-eq v0, v4, :cond_7

    const/16 v0, 0x27

    if-ne v0, v4, :cond_9

    :cond_7
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJO:Lorg/owasp/html/HtmlTokenType;

    :goto_4
    if-ge v3, v6, :cond_2

    iget-object v7, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    :goto_5
    if-ge v3, v6, :cond_2

    iget-object v4, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v7, p0, Lorg/owasp/html/HtmlInputSplitter;->cIw:Lorg/owasp/html/R;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/owasp/html/HtmlInputSplitter;->cIw:Lorg/owasp/html/R;

    iget-object v8, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    const-string v9, "="

    invoke-virtual {v7, v8, v9}, Lorg/owasp/html/R;->aC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    if-ne v12, v4, :cond_b

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v6, :cond_b

    iget-object v7, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v10, v7, :cond_2

    :cond_b
    if-eq v10, v4, :cond_2

    const/16 v7, 0x3d

    if-eq v7, v4, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x22

    if-eq v7, v4, :cond_c

    const/16 v7, 0x27

    if-ne v7, v4, :cond_f

    :cond_c
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v6, :cond_f

    iget-object v4, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ltz v4, :cond_d

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    if-eq v4, v10, :cond_e

    if-ne v4, v12, :cond_f

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    :goto_6
    if-ge v3, v6, :cond_2

    iget-object v4, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    const/16 v0, 0x3c

    if-ne v4, v0, :cond_29

    if-ne v3, v6, :cond_12

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v0, 0x41

    if-lt v4, v0, :cond_18

    const/16 v0, 0x7a

    if-gt v4, v0, :cond_18

    const/16 v0, 0x5a

    if-le v4, v0, :cond_13

    const/16 v0, 0x61

    if-lt v4, v0, :cond_18

    :cond_13
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-nez v0, :cond_19

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIz:Lorg/owasp/html/HtmlInputSplitter$State;

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    move-object v0, v1

    :goto_9
    if-eqz v4, :cond_2

    move-object v13, v4

    move v4, v3

    move-object v3, v0

    move-object v0, v13

    :cond_14
    if-ge v4, v6, :cond_16

    iget-object v7, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sget-object v8, Lorg/owasp/html/E;->cIy:[I

    invoke-virtual {v0}, Lorg/owasp/html/HtmlInputSplitter$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_15
    :goto_a
    add-int/lit8 v4, v4, 0x1

    sget-object v7, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    if-ne v7, v0, :cond_14

    :cond_16
    move-object v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v13

    :goto_b
    if-ne v3, v6, :cond_2

    sget-object v7, Lorg/owasp/html/E;->cIy:[I

    invoke-virtual {v4}, Lorg/owasp/html/HtmlInputSplitter$State;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :sswitch_0
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIA:Lorg/owasp/html/HtmlInputSplitter$State;

    goto :goto_8

    :sswitch_1
    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-nez v0, :cond_17

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIB:Lorg/owasp/html/HtmlInputSplitter$State;

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    move-object v0, v1

    goto :goto_9

    :cond_17
    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    invoke-static {v0}, Lorg/owasp/html/HtmlTextEscapingMode;->iy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIL:Lorg/owasp/html/HtmlInputSplitter$State;

    goto :goto_c

    :sswitch_2
    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-nez v0, :cond_32

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cII:Lorg/owasp/html/HtmlInputSplitter$State;

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    move-object v0, v1

    goto :goto_9

    :sswitch_3
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIJ:Lorg/owasp/html/HtmlInputSplitter$State;

    goto :goto_8

    :cond_18
    move v0, v2

    goto :goto_7

    :cond_19
    const/16 v0, 0x3c

    if-ne v0, v4, :cond_31

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    move-object v4, v1

    goto :goto_9

    :pswitch_2
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_1a

    if-eq v10, v7, :cond_1a

    if-eq v12, v7, :cond_1a

    const/16 v8, 0x3c

    if-ne v8, v7, :cond_15

    :cond_1a
    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIr:Ljava/lang/String;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v12, v0, :cond_1b

    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIv:Lorg/owasp/html/HtmlTextEscapingMode;

    sget-object v3, Lorg/owasp/html/HtmlTextEscapingMode;->cJD:Lorg/owasp/html/HtmlTextEscapingMode;

    if-eq v0, v3, :cond_1b

    add-int/lit8 v0, v5, 0x2

    invoke-direct {p0, v0, v4}, Lorg/owasp/html/HtmlInputSplitter;->aw(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v2, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    iput-object v1, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    iput-object v1, p0, Lorg/owasp/html/HtmlInputSplitter;->cIv:Lorg/owasp/html/HtmlTextEscapingMode;

    :cond_1b
    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJP:Lorg/owasp/html/HtmlTokenType;

    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIs:Z

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    move-object v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v13

    goto/16 :goto_b

    :cond_1c
    move v0, v2

    goto :goto_e

    :pswitch_3
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIz:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_1d
    const/16 v8, 0x3c

    if-ne v8, v7, :cond_1e

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    move-object v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v13

    goto/16 :goto_b

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    move-object v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v13

    goto/16 :goto_b

    :pswitch_4
    if-ne v11, v7, :cond_1f

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIC:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_1f
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIG:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_5
    if-ne v11, v7, :cond_20

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cID:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_20
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIG:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_6
    if-ne v11, v7, :cond_15

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIE:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_7
    if-ne v11, v7, :cond_21

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIF:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_21
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIE:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_8
    if-ne v10, v7, :cond_22

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJL:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_a

    :cond_22
    if-ne v11, v7, :cond_23

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIF:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_23
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIE:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_9
    if-ne v10, v7, :cond_15

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJM:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_a
    if-ne v10, v7, :cond_15

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJK:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_b
    const/16 v8, 0x25

    if-ne v8, v7, :cond_15

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIK:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_c
    if-ne v10, v7, :cond_24

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJT:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_24
    const/16 v8, 0x25

    if-eq v8, v7, :cond_15

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIJ:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_d
    if-ne v11, v7, :cond_25

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIM:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_25
    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_e
    if-ne v11, v7, :cond_26

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIP:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_26
    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_f
    if-ne v11, v7, :cond_15

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIO:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_10
    if-ne v11, v7, :cond_27

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIP:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_27
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIN:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_11
    if-ne v10, v7, :cond_28

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :cond_28
    if-eq v11, v7, :cond_15

    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIN:Lorg/owasp/html/HtmlInputSplitter$State;

    goto/16 :goto_a

    :pswitch_12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpectedly DONE while lexing HTML token stream"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_13
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJK:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :pswitch_14
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJL:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :pswitch_15
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJT:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :pswitch_16
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJP:Lorg/owasp/html/HtmlTokenType;

    goto/16 :goto_2

    :cond_29
    move-object v0, v1

    goto/16 :goto_2

    :cond_2a
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    :cond_2b
    iput v3, p0, Lorg/owasp/html/HtmlInputSplitter;->offset:I

    invoke-static {v5, v3, v0}, Lorg/owasp/html/R;->a(IILorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v3

    sget-object v4, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    if-eq v0, v4, :cond_0

    iput-object v3, p0, Lorg/owasp/html/HtmlInputSplitter;->cIw:Lorg/owasp/html/R;

    goto/16 :goto_0

    .line 302
    :cond_2c
    iget-boolean v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    if-eqz v0, :cond_2e

    .line 303
    iget-object v0, v3, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJT:Lorg/owasp/html/HtmlTokenType;

    if-eq v0, v1, :cond_2f

    .line 305
    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIv:Lorg/owasp/html/HtmlTextEscapingMode;

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJC:Lorg/owasp/html/HtmlTextEscapingMode;

    if-ne v0, v1, :cond_2d

    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    :goto_f
    invoke-static {v3, v0}, Lorg/owasp/html/HtmlInputSplitter;->a(Lorg/owasp/html/R;Lorg/owasp/html/HtmlTokenType;)Lorg/owasp/html/R;

    move-result-object v0

    :goto_10
    move-object v1, v0

    .line 326
    goto/16 :goto_1

    .line 305
    :cond_2d
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJN:Lorg/owasp/html/HtmlTokenType;

    goto :goto_f

    .line 311
    :cond_2e
    sget-object v0, Lorg/owasp/html/E;->cIx:[I

    iget-object v1, v3, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    invoke-virtual {v1}, Lorg/owasp/html/HtmlTokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :cond_2f
    :goto_11
    move-object v0, v3

    goto :goto_10

    .line 314
    :pswitch_17
    iget v0, v3, Lorg/owasp/html/R;->start:I

    add-int/lit8 v0, v0, 0x1

    iget v1, v3, Lorg/owasp/html/R;->end:I

    invoke-direct {p0, v0, v1}, Lorg/owasp/html/HtmlInputSplitter;->aw(II)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lorg/owasp/html/HtmlTextEscapingMode;->iz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 318
    iput-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    .line 319
    invoke-static {v0}, Lorg/owasp/html/HtmlTextEscapingMode;->ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIv:Lorg/owasp/html/HtmlTextEscapingMode;

    move-object v0, v3

    goto :goto_10

    .line 325
    :pswitch_18
    iget-object v0, p0, Lorg/owasp/html/HtmlInputSplitter;->cIu:Ljava/lang/String;

    if-eqz v0, :cond_30

    const/4 v2, 0x1

    :cond_30
    iput-boolean v2, p0, Lorg/owasp/html/HtmlInputSplitter;->cIt:Z

    goto :goto_11

    :cond_31
    move-object v0, v1

    goto/16 :goto_8

    :cond_32
    move-object v0, v1

    goto/16 :goto_d

    :cond_33
    move-object v0, v1

    goto/16 :goto_c

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x25 -> :sswitch_3
        0x2f -> :sswitch_0
        0x3f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 311
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
