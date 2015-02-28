.class public final Lorg/owasp/html/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a([Lorg/owasp/html/b;)Lorg/owasp/html/b;
    .locals 5

    .prologue
    .line 70
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .line 72
    instance-of v4, v0, Lorg/owasp/html/S;

    if-eqz v4, :cond_1

    .line 73
    check-cast v0, Lorg/owasp/html/S;

    iget-object v0, v0, Lorg/owasp/html/S;->cJV:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_2
    sget-object v0, Lorg/owasp/html/b;->cGF:Lorg/owasp/html/b;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    sget-object v0, Lorg/owasp/html/b;->cGF:Lorg/owasp/html/b;

    .line 86
    :goto_2
    return-object v0

    .line 82
    :cond_3
    sget-object v0, Lorg/owasp/html/b;->cGE:Lorg/owasp/html/b;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Lorg/owasp/html/S;

    invoke-direct {v0, v2}, Lorg/owasp/html/S;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 84
    :pswitch_0
    sget-object v0, Lorg/owasp/html/b;->cGE:Lorg/owasp/html/b;

    goto :goto_2

    .line 85
    :pswitch_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/b;

    goto :goto_2

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
