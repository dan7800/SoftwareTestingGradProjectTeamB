.class abstract Lcom/google/android/mail/common/base/g;
.super Lcom/google/android/mail/common/base/a;
.source "SourceFile"


# instance fields
.field protected final coG:I

.field protected final coH:C

.field protected final coI:C

.field protected final coo:[[C


# direct methods
.method public constructor <init>([[C)V
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/google/android/mail/common/base/a;-><init>()V

    .line 901
    iput-object p1, p0, Lcom/google/android/mail/common/base/g;->coo:[[C

    .line 902
    array-length v0, p1

    iput v0, p0, Lcom/google/android/mail/common/base/g;->coG:I

    .line 903
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/google/android/mail/common/base/g;->coH:C

    .line 904
    const/16 v0, 0x7e

    iput-char v0, p0, Lcom/google/android/mail/common/base/g;->coI:C

    .line 905
    return-void
.end method


# virtual methods
.method public final gF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 910
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 911
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 912
    iget v3, p0, Lcom/google/android/mail/common/base/g;->coG:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/base/g;->coo:[[C

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    :cond_0
    iget-char v3, p0, Lcom/google/android/mail/common/base/g;->coH:C

    if-lt v2, v3, :cond_1

    iget-char v3, p0, Lcom/google/android/mail/common/base/g;->coI:C

    if-le v2, v3, :cond_3

    .line 914
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/g;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 917
    :cond_2
    return-object p1

    .line 910
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
