.class public final Lcom/android/mail/utils/R;
.super Lcom/google/android/mail/common/html/parser/u;
.source "SourceFile"


# static fields
.field private static final aQl:Lcom/google/android/mail/common/html/parser/a;

.field private static final aQm:Lcom/google/android/mail/common/html/parser/i;


# instance fields
.field private aQn:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1949
    new-instance v0, Lcom/google/android/mail/common/html/parser/a;

    const-string v1, "class"

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mail/utils/R;->aQl:Lcom/google/android/mail/common/html/parser/a;

    .line 1952
    sget-object v0, Lcom/google/android/mail/common/html/parser/b;->cqm:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v2, v2, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->b(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/R;->aQm:Lcom/google/android/mail/common/html/parser/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/u;-><init>()V

    .line 1955
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/utils/R;->aQn:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/mail/common/html/parser/i;II)V
    .locals 4

    .prologue
    .line 1960
    iget v0, p0, Lcom/android/mail/utils/R;->aQn:I

    if-ge p2, v0, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget v0, p0, Lcom/android/mail/utils/R;->aQn:I

    if-ne p2, v0, :cond_2

    .line 1963
    sget-object v0, Lcom/android/mail/utils/R;->aQm:Lcom/google/android/mail/common/html/parser/i;

    invoke-super {p0, v0, p2, p3}, Lcom/google/android/mail/common/html/parser/u;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    goto :goto_0

    .line 1968
    :cond_2
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v0, :cond_4

    .line 1969
    const/4 v1, 0x0

    move-object v0, p1

    .line 1970
    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1971
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 1972
    const-string v3, "div"

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1974
    sget-object v2, Lcom/android/mail/utils/R;->aQl:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->b(Lcom/google/android/mail/common/html/parser/a;)Ljava/util/List;

    move-result-object v0

    .line 1976
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/j;

    .line 1977
    const-string v3, "elided-text"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1980
    iput p3, p0, Lcom/android/mail/utils/R;->aQn:I

    .line 1981
    const/4 v0, 0x1

    .line 1987
    :goto_1
    if-nez v0, :cond_0

    .line 1992
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/u;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
