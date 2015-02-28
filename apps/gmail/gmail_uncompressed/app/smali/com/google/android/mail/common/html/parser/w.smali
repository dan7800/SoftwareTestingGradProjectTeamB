.class final Lcom/google/android/mail/common/html/parser/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cvn:I

.field final synthetic cvo:Lcom/google/android/mail/common/html/parser/v;

.field private state:I


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/html/parser/v;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/w;->cvo:Lcom/google/android/mail/common/html/parser/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    return-void
.end method

.method private Wy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    if-eq v0, v3, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvo:Lcom/google/android/mail/common/html/parser/v;

    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crB:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v1}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/v;Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    .line 286
    sget-object v0, Lcom/google/android/mail/common/html/parser/b;->crB:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v2, v2, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvo:Lcom/google/android/mail/common/html/parser/v;

    invoke-static {v1}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 289
    iput v3, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method final c(Lcom/google/android/mail/common/html/parser/k;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 256
    iget v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/w;->Wy()V

    .line 261
    :cond_0
    return-void

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method final d(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 234
    iget v3, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 236
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crB:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crH:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crE:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 248
    :goto_0
    iput v1, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    .line 251
    :cond_1
    return-void

    .line 242
    :cond_2
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqo:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crz:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 247
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    .line 248
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 246
    goto :goto_1
.end method

.method final e(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getType()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 199
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crz:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/w;->Wy()V

    .line 203
    :cond_0
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvo:Lcom/google/android/mail/common/html/parser/v;

    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->crz:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v1, v2}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/v;Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crz:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v1, v3, v3, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/w;->cvo:Lcom/google/android/mail/common/html/parser/v;

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    iget v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    .line 211
    :cond_3
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crB:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crE:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    :cond_4
    iput v4, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    goto :goto_0

    .line 215
    :cond_5
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqo:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    goto :goto_0

    .line 220
    :cond_6
    iget v1, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-lez v1, :cond_1

    .line 224
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqE:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/w;->Wy()V

    goto :goto_0
.end method

.method final finish()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->cvn:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 265
    iget v0, p0, Lcom/google/android/mail/common/html/parser/w;->state:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 266
    return-void

    :cond_0
    move v0, v2

    .line 264
    goto :goto_0

    :cond_1
    move v1, v2

    .line 265
    goto :goto_1
.end method
