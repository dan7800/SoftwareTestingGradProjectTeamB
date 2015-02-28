.class public final Lcom/android/emailcommon/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-object p0

    .line 38
    :cond_0
    if-nez p0, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static b(Ljava/util/ArrayList;)Lcom/android/emailcommon/b/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/j;",
            ">;)",
            "Lcom/android/emailcommon/b/d;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    new-instance v3, Lcom/android/emailcommon/b/d;

    invoke-direct {v3}, Lcom/android/emailcommon/b/d;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    .line 71
    invoke-static {v0}, Lcom/android/emailcommon/a/i;->b(Lcom/android/emailcommon/mail/j;)Ljava/lang/String;

    move-result-object v5

    .line 73
    const-string v6, "text/html"

    invoke-interface {v0}, Lcom/android/emailcommon/mail/j;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-static {v2, v5}, Lcom/android/emailcommon/b/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v1, v5}, Lcom/android/emailcommon/b/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iput-object v0, v3, Lcom/android/emailcommon/b/d;->abf:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lcom/android/emailcommon/b/r;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/emailcommon/b/d;->abh:Ljava/lang/String;

    .line 89
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    iput-object v0, v3, Lcom/android/emailcommon/b/d;->abg:Ljava/lang/String;

    .line 92
    iget-object v1, v3, Lcom/android/emailcommon/b/d;->abh:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 93
    invoke-static {v0}, Lcom/android/emailcommon/b/r;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/emailcommon/b/d;->abh:Ljava/lang/String;

    .line 96
    :cond_3
    return-object v3
.end method
