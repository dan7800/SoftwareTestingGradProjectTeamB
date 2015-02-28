.class public final Lcom/google/android/mail/common/html/parser/HtmlDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->cub:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method public static a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/mail/common/html/parser/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/g;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;B)V

    return-object v0
.end method

.method public static a(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 162
    new-instance v0, Lcom/google/android/mail/common/html/parser/j;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/mail/common/html/parser/j;-><init>(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;B)V

    return-object v0

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public static au(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/mail/common/html/parser/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/l;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method public static av(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/mail/common/html/parser/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/h;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method public static b(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/mail/common/html/parser/m;)V
    .locals 2

    .prologue
    .line 206
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/m;->start()V

    .line 207
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/i;

    .line 208
    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/i;->a(Lcom/google/android/mail/common/html/parser/m;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/m;->finish()V

    .line 211
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 92
    new-instance v1, Lcom/google/android/mail/common/html/parser/f;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lcom/google/android/mail/common/html/parser/f;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/m;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
