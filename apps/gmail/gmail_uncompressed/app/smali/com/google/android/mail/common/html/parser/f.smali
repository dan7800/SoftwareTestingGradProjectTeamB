.class public final Lcom/google/android/mail/common/html/parser/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/m;


# instance fields
.field private final cuc:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    .line 1222
    return-void
.end method

.method private aw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    sget-object v1, Lcom/google/android/mail/common/base/j;->coW:Lcom/google/android/mail/common/base/j;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/base/j;->C(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/mail/common/html/parser/e;)V
    .locals 2

    .prologue
    .line 1232
    const-string v0, "COMMENT"

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/e;->We()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/mail/common/html/parser/f;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/k;)V
    .locals 2

    .prologue
    .line 1228
    const-string v0, "TEXT"

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/mail/common/html/parser/f;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void
.end method

.method public final b(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 5

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wg()Ljava/util/List;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_1

    .line 1250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/j;

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1254
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1257
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1258
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1263
    return-void
.end method

.method public final b(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 3

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/f;->cuc:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==</"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method public final finish()V
    .locals 0

    .prologue
    .line 1270
    return-void
.end method

.method public final start()V
    .locals 0

    .prologue
    .line 1225
    return-void
.end method
