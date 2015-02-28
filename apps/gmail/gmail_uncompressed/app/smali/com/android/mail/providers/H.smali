.class public final Lcom/android/mail/providers/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    if-eqz v0, :cond_2

    .line 92
    :goto_2
    return-object p0

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid projection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p0, p1

    .line 90
    goto :goto_2
.end method

.method public static n([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/mail/providers/E;->aCu:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/mail/providers/E;->aCz:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mail/providers/H;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
