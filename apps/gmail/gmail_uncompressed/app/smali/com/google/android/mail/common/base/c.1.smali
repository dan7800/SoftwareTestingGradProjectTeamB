.class final Lcom/google/android/mail/common/base/c;
.super Lcom/google/android/mail/common/base/a;
.source "SourceFile"


# instance fields
.field private final coo:[[C

.field private final cop:I


# direct methods
.method constructor <init>([[C)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/mail/common/base/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/mail/common/base/c;->coo:[[C

    .line 41
    array-length v0, p1

    iput v0, p0, Lcom/google/android/mail/common/base/c;->cop:I

    .line 42
    return-void
.end method


# virtual methods
.method protected final g(C)[C
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/mail/common/base/c;->cop:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/base/c;->coo:[[C

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 50
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 52
    iget-object v3, p0, Lcom/google/android/mail/common/base/c;->coo:[[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/mail/common/base/c;->coo:[[C

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/c;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_0
    return-object p1

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
