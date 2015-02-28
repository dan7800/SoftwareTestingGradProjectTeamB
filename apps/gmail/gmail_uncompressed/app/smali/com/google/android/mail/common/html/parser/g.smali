.class public final Lcom/google/android/mail/common/html/parser/g;
.super Lcom/google/android/mail/common/html/parser/i;
.source "SourceFile"


# instance fields
.field private final cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

.field private final cue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/i;-><init>()V

    .line 712
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 713
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/g;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 714
    iput-object p2, p0, Lcom/google/android/mail/common/html/parser/g;->cue:Ljava/lang/String;

    .line 715
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/g;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/g;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/m;)V
    .locals 0

    .prologue
    .line 736
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/m;->b(Lcom/google/android/mail/common/html/parser/g;)V

    .line 737
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/g;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End Tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/g;->cud:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
