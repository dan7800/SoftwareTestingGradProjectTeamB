.class final Lcom/google/android/mail/common/base/q;
.super Lcom/google/android/mail/common/base/j;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/mail/common/base/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 143
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final i(C)Z
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method
