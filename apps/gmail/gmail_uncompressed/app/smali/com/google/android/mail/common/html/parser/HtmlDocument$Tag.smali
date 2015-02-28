.class public final Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
.super Lcom/google/android/mail/common/html/parser/i;
.source "SourceFile"


# instance fields
.field private final cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

.field private cug:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;"
        }
    .end annotation
.end field

.field private final cuh:Z

.field private final cui:Ljava/lang/String;

.field private final cuj:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/i;-><init>()V

    .line 538
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 539
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 540
    iput-object p2, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    .line 541
    iput-boolean p3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cuh:Z

    .line 542
    iput-object p4, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cui:Ljava/lang/String;

    .line 543
    iput-object p5, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cuj:Ljava/lang/String;

    .line 544
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 503
    invoke-direct/range {p0 .. p5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    return-object v0
.end method

.method public final Wg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    return-object v0
.end method

.method public final Wh()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cuh:Z

    return v0
.end method

.method public final Wi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cui:Ljava/lang/String;

    return-object v0
.end method

.method public final Wj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cuj:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/j;

    .line 580
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->Wk()Lcom/google/android/mail/common/html/parser/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/m;)V
    .locals 0

    .prologue
    .line 622
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/m;->b(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 623
    return-void
.end method

.method public final b(Lcom/google/android/mail/common/html/parser/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/j;

    .line 596
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->Wk()Lcom/google/android/mail/common/html/parser/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/mail/common/html/parser/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    :cond_1
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    const-string v0, "Start Tag: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->cug:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/j;

    .line 612
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
