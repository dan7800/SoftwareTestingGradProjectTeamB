.class public final Lcom/google/android/mail/common/html/parser/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cue:Ljava/lang/String;

.field private final cuk:Lcom/google/android/mail/common/html/parser/a;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 780
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/j;->cuk:Lcom/google/android/mail/common/html/parser/a;

    .line 781
    iput-object p2, p0, Lcom/google/android/mail/common/html/parser/j;->value:Ljava/lang/String;

    .line 782
    iput-object p3, p0, Lcom/google/android/mail/common/html/parser/j;->cue:Ljava/lang/String;

    .line 783
    return-void

    .line 779
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/j;-><init>(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Wk()Lcom/google/android/mail/common/html/parser/a;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/j;->cuk:Lcom/google/android/mail/common/html/parser/a;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/j;->cuk:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/a;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/j;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/j;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/j;->cuk:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/j;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
