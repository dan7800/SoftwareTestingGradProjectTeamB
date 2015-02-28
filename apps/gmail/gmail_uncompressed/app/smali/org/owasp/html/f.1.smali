.class final Lorg/owasp/html/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Lorg/owasp/html/h;)V
    .locals 4

    .prologue
    .line 66
    invoke-static {p0}, Lorg/owasp/html/CssTokens;->in(Ljava/lang/String;)Lorg/owasp/html/CssTokens;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/owasp/html/CssTokens;->abD()Lorg/owasp/html/m;

    move-result-object v0

    .line 69
    :goto_0
    invoke-virtual {v0}, Lorg/owasp/html/m;->abX()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v0}, Lorg/owasp/html/m;->abY()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v1

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHl:Lorg/owasp/html/CssTokens$TokenType;

    if-eq v1, v2, :cond_0

    .line 72
    invoke-static {v0}, Lorg/owasp/html/f;->a(Lorg/owasp/html/m;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lorg/owasp/html/m;->next()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lorg/owasp/html/m;->abX()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v0}, Lorg/owasp/html/m;->abV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    :cond_1
    invoke-static {v0}, Lorg/owasp/html/f;->a(Lorg/owasp/html/m;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lorg/owasp/html/m;->advance()V

    .line 85
    invoke-static {v1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/owasp/html/h;->if(Ljava/lang/String;)V

    .line 86
    invoke-static {v0, p1}, Lorg/owasp/html/f;->a(Lorg/owasp/html/m;Lorg/owasp/html/h;)V

    .line 87
    invoke-interface {p1}, Lorg/owasp/html/h;->abC()V

    goto :goto_0

    .line 89
    :cond_3
    return-void
.end method

.method private static a(Lorg/owasp/html/m;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lorg/owasp/html/m;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lorg/owasp/html/g;->cGG:[I

    invoke-virtual {p0}, Lorg/owasp/html/m;->abY()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/owasp/html/CssTokens$TokenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 36
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    goto :goto_0

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    .line 59
    :cond_1
    :goto_2
    return-void

    .line 44
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_1

    .line 49
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 50
    if-gtz v0, :cond_0

    .line 51
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    goto :goto_2

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/owasp/html/m;Lorg/owasp/html/h;)V
    .locals 3

    .prologue
    .line 94
    :goto_0
    invoke-virtual {p0}, Lorg/owasp/html/m;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/owasp/html/m;->abY()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lorg/owasp/html/m;->abV()Ljava/lang/String;

    move-result-object v1

    .line 97
    sget-object v2, Lorg/owasp/html/g;->cGG:[I

    invoke-virtual {v0}, Lorg/owasp/html/CssTokens$TokenType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Lorg/owasp/html/m;->advance()V

    .line 149
    :cond_1
    return-void

    .line 102
    :pswitch_2
    invoke-virtual {p0}, Lorg/owasp/html/m;->abU()Lorg/owasp/html/m;

    move-result-object v0

    .line 103
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->il(Ljava/lang/String;)V

    .line 104
    invoke-static {v0, p1}, Lorg/owasp/html/f;->a(Lorg/owasp/html/m;Lorg/owasp/html/h;)V

    .line 105
    invoke-interface {p1}, Lorg/owasp/html/h;->abB()V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->ih(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 112
    :cond_2
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->ii(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :pswitch_5
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->ij(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :pswitch_6
    invoke-interface {p1}, Lorg/owasp/html/h;->abA()V

    goto :goto_1

    .line 124
    :pswitch_7
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->ig(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :pswitch_8
    invoke-interface {p1, v1}, Lorg/owasp/html/h;->ik(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
