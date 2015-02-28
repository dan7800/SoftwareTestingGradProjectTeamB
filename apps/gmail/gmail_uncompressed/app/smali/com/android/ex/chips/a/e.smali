.class final Lcom/android/ex/chips/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/a/a;


# instance fields
.field private final adT:Ljava/lang/Long;

.field private final afD:Ljava/lang/CharSequence;

.field private final afE:Ljava/lang/CharSequence;

.field private final afF:Lcom/android/ex/chips/ae;

.field private afG:Z

.field private afH:Ljava/lang/CharSequence;

.field private final afu:J

.field private final afv:J

.field private final afz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/ae;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/a/e;->afG:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a/e;->afD:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a/e;->afE:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/a/e;->afu:J

    .line 46
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mY()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a/e;->adT:Ljava/lang/Long;

    .line 47
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a/e;->afz:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/a/e;->afv:J

    .line 49
    iput-object p1, p0, Lcom/android/ex/chips/a/e;->afF:Lcom/android/ex/chips/ae;

    .line 50
    return-void
.end method


# virtual methods
.method public final aP(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/ex/chips/a/e;->afH:Ljava/lang/CharSequence;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/a/e;->afH:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/ex/chips/a/e;->afG:Z

    return v0
.end method

.method public final mX()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/ex/chips/a/e;->afu:J

    return-wide v0
.end method

.method public final mY()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->adT:Ljava/lang/Long;

    return-object v0
.end method

.method public final mZ()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/ex/chips/a/e;->afv:J

    return-wide v0
.end method

.method public final nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afz:Ljava/lang/String;

    return-object v0
.end method

.method public final ne()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afE:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final nf()Lcom/android/ex/chips/ae;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afF:Lcom/android/ex/chips/ae;

    return-object v0
.end method

.method public final ng()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afH:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afH:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/a/e;->afF:Lcom/android/ex/chips/ae;

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setSelected(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/ex/chips/a/e;->afG:Z

    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/a/e;->afD:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/a/e;->afE:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
