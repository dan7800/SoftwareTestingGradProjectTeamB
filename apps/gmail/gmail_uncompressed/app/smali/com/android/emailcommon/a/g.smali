.class final Lcom/android/emailcommon/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/c;


# instance fields
.field private final Wr:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic Ws:Lcom/android/emailcommon/a/f;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/a/f;)V
    .locals 1

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/emailcommon/a/g;->Ws:Lcom/android/emailcommon/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    .line 543
    return-void
.end method

.method private b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal stack error: Expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/james/mime4j/a;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 611
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 612
    invoke-virtual {p1}, Lorg/apache/james/mime4j/a;->Cq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/emailcommon/a/i;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/c;

    move-result-object v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/j;->a(Lcom/android/emailcommon/mail/c;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ac(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 581
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 583
    :try_start_0
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/j;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 646
    const-class v0, Lcom/android/emailcommon/a/h;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 650
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method

.method public final e(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 658
    const-class v0, Lcom/android/emailcommon/a/h;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 662
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 665
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/a/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/a/h;->ad(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final kX()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/emailcommon/a/g;->Ws:Lcom/android/emailcommon/a/f;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 559
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/a/f;

    invoke-direct {v1}, Lcom/android/emailcommon/a/f;-><init>()V

    .line 560
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/j;->a(Lcom/android/emailcommon/mail/c;)V

    .line 561
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final kY()V
    .locals 1

    .prologue
    .line 570
    const-class v0, Lcom/android/emailcommon/a/f;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 571
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 572
    return-void
.end method

.method public final kZ()V
    .locals 1

    .prologue
    .line 576
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 577
    return-void
.end method

.method public final la()V
    .locals 1

    .prologue
    .line 592
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 593
    return-void
.end method

.method public final lb()V
    .locals 3

    .prologue
    .line 597
    const-class v0, Lcom/android/emailcommon/mail/j;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 599
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/j;

    .line 601
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/a/h;

    invoke-interface {v0}, Lcom/android/emailcommon/mail/j;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/a/h;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/j;->a(Lcom/android/emailcommon/mail/c;)V

    .line 603
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final lc()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 623
    return-void
.end method

.method public final ld()V
    .locals 2

    .prologue
    .line 627
    const-class v0, Lcom/android/emailcommon/a/h;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 630
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/a/c;

    invoke-direct {v1}, Lcom/android/emailcommon/a/c;-><init>()V

    .line 631
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/a/h;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/a/h;->a(Lcom/android/emailcommon/mail/d;)V

    .line 632
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final le()V
    .locals 1

    .prologue
    .line 640
    const-class v0, Lcom/android/emailcommon/mail/d;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/g;->b(Ljava/lang/Class;)V

    .line 641
    iget-object v0, p0, Lcom/android/emailcommon/a/g;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public final lf()V
    .locals 2

    .prologue
    .line 673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
