.class final Lcom/android/mail/browse/aI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aqQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final aqS:Lcom/android/mail/utils/aj;

.field private final aqT:Landroid/support/v4/e/a;

.field private final atb:Ljava/lang/String;

.field private final atm:Ljava/lang/String;

.field private final atn:Ljava/lang/CharSequence;

.field ato:I

.field atp:Z

.field private final gJ:Ljava/lang/StringBuilder;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/utils/aj;",
            "Landroid/support/v4/e/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/aI;->ato:I

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/aI;->atp:Z

    .line 742
    iput-object p1, p0, Lcom/android/mail/browse/aI;->mContext:Landroid/content/Context;

    .line 743
    iput-object p2, p0, Lcom/android/mail/browse/aI;->atm:Ljava/lang/String;

    .line 744
    iput-object p3, p0, Lcom/android/mail/browse/aI;->atb:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/android/mail/browse/aI;->mContext:Landroid/content/Context;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aI;->atn:Ljava/lang/CharSequence;

    .line 746
    iput-object p4, p0, Lcom/android/mail/browse/aI;->aqQ:Ljava/util/Map;

    .line 747
    iput-object p5, p0, Lcom/android/mail/browse/aI;->aqS:Lcom/android/mail/utils/aj;

    .line 748
    iput-object p6, p0, Lcom/android/mail/browse/aI;->aqT:Landroid/support/v4/e/a;

    .line 749
    return-void
.end method

.method private static a([Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 822
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final i([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 752
    iget v0, p0, Lcom/android/mail/browse/aI;->ato:I

    rsub-int/lit8 v3, v0, 0x32

    .line 753
    invoke-static {p1, v3}, Lcom/android/mail/browse/aI;->a([Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 754
    :goto_0
    if-eqz v0, :cond_0

    .line 755
    iget v0, p0, Lcom/android/mail/browse/aI;->ato:I

    array-length v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/browse/aI;->ato:I

    .line 757
    :cond_0
    return-void

    .line 753
    :cond_1
    array-length v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    iget-object v0, p0, Lcom/android/mail/browse/aI;->aqQ:Ljava/util/Map;

    aget-object v5, p1, v2

    invoke-static {v0, v5}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mail/browse/aI;->aqS:Lcom/android/mail/utils/aj;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mail/browse/aI;->aqS:Lcom/android/mail/utils/aj;

    invoke-virtual {v6, v5}, Lcom/android/mail/utils/aj;->cM(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/aI;->mContext:Landroid/content/Context;

    const v5, 0x7f09017b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-boolean v5, p0, Lcom/android/mail/browse/aI;->atp:Z

    if-eqz v5, :cond_5

    iput-boolean v1, p0, Lcom/android/mail/browse/aI;->atp:Z

    :goto_3
    iget-object v5, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/mail/browse/aI;->aqT:Landroid/support/v4/e/a;

    invoke-virtual {v6, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->li()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/mail/browse/aI;->atm:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/android/mail/browse/aI;->atb:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->li()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/mail/browse/aI;->atn:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final j([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 760
    iget v0, p0, Lcom/android/mail/browse/aI;->ato:I

    rsub-int/lit8 v0, v0, 0x32

    .line 761
    invoke-static {p1, v0}, Lcom/android/mail/browse/aI;->a([Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    iget-boolean v0, p0, Lcom/android/mail/browse/aI;->atp:Z

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mail/browse/aI;->atn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/aI;->atp:Z

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mail/browse/aI;->mContext:Landroid/content/Context;

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/aI;->i([Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public final rP()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/mail/browse/aI;->mContext:Landroid/content/Context;

    const v1, 0x7f09010e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/browse/aI;->gJ:Ljava/lang/StringBuilder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
