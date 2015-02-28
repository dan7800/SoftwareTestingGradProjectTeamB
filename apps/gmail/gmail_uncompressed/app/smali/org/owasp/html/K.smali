.class public final Lorg/owasp/html/K;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lorg/owasp/html/M;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    if-nez p0, :cond_0

    const-string p0, ""

    .line 105
    :cond_0
    new-instance v4, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;

    invoke-direct {v4, p1}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;-><init>(Lorg/owasp/html/N;)V

    .line 126
    invoke-virtual {v4}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->acj()V

    .line 128
    invoke-virtual {v4}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->abZ()V

    .line 130
    new-instance v5, Lorg/owasp/html/HtmlLexer;

    invoke-direct {v5, p0}, Lorg/owasp/html/HtmlLexer;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->aby()Lorg/owasp/html/R;

    move-result-object v7

    .line 136
    sget-object v0, Lorg/owasp/html/L;->cIx:[I

    iget-object v3, v7, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    invoke-virtual {v3}, Lorg/owasp/html/HtmlTokenType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    iget v0, v7, Lorg/owasp/html/R;->start:I

    iget v3, v7, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/u;->iq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->io(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget v0, v7, Lorg/owasp/html/R;->start:I

    iget v3, v7, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/u;->ir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->io(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget v0, v7, Lorg/owasp/html/R;->start:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    .line 147
    iget v0, v7, Lorg/owasp/html/R;->start:I

    add-int/lit8 v0, v0, 0x2

    iget v3, v7, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->ip(Ljava/lang/String;)V

    .line 150
    :goto_1
    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->aby()Lorg/owasp/html/R;

    move-result-object v0

    iget-object v0, v0, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    sget-object v3, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    move v0, v1

    .line 158
    :goto_2
    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {v5}, Lorg/owasp/html/HtmlLexer;->aby()Lorg/owasp/html/R;

    move-result-object v3

    .line 160
    sget-object v8, Lorg/owasp/html/L;->cIx:[I

    iget-object v9, v3, Lorg/owasp/html/R;->cJH:Lorg/owasp/html/HtmlTokenType;

    invoke-virtual {v9}, Lorg/owasp/html/HtmlTokenType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    .line 162
    :pswitch_3
    if-nez v0, :cond_3

    .line 164
    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_3
    iget v8, v3, Lorg/owasp/html/R;->start:I

    iget v3, v3, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 166
    goto :goto_3

    .line 172
    :pswitch_4
    iget v0, v3, Lorg/owasp/html/R;->start:I

    iget v3, v3, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x22

    if-eq v0, v9, :cond_4

    const/16 v9, 0x27

    if-ne v0, v9, :cond_5

    :cond_4
    if-eq v8, v1, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v0, v9, :cond_9

    move v0, v1

    :goto_4
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lorg/owasp/html/u;->iq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 175
    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 172
    goto :goto_5

    .line 182
    :cond_6
    :pswitch_5
    if-nez v0, :cond_7

    .line 183
    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_7
    iget v0, v7, Lorg/owasp/html/R;->start:I

    add-int/lit8 v0, v0, 0x1

    iget v3, v7, Lorg/owasp/html/R;->end:I

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->b(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 198
    :cond_8
    invoke-virtual {v4}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->aca()V

    .line 199
    return-void

    :cond_9
    move v0, v2

    goto :goto_4

    .line 136
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
