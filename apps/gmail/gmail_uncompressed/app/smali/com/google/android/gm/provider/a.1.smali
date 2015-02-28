.class public final Lcom/google/android/gm/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private account:Landroid/accounts/Account;

.field private bcb:Landroid/content/Context;

.field private bcc:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gm/provider/a;->bcb:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/google/android/gm/provider/a;->account:Landroid/accounts/Account;

    .line 28
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gm/provider/a;->bcc:Landroid/net/ConnectivityManager;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/a/a/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 37
    iget-object v2, p0, Lcom/google/android/gm/provider/a;->bcb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->c(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 91
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1, v1, v1}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 43
    new-instance v2, Lcom/google/common/a/a/a;

    sget-object v3, Lcom/google/android/gm/provider/a/a;->bnx:Lcom/google/common/a/a/b;

    invoke-direct {v2, v3}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    .line 44
    invoke-virtual {v2, v1, v1}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 45
    invoke-virtual {v2, v4, v1}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 46
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/common/a/a/a;->a(ILcom/google/common/a/a/a;)V

    .line 48
    iget-object v2, p0, Lcom/google/android/gm/provider/a;->bcc:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/google/android/gm/provider/a;->bcc:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 61
    invoke-virtual {p1, v4, v0}, Lcom/google/common/a/a/a;->setInt(II)V

    .line 66
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 70
    :cond_1
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gm/provider/a;->account:Landroid/accounts/Account;

    const-string v4, "gmail-ls"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 73
    iget-object v2, p0, Lcom/google/android/gm/provider/a;->bcb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/a;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v3

    const-string v4, "^sq_ig_i_promo"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v2

    const-string v3, "^sq_ig_i_promo"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 77
    :cond_3
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 79
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gm/provider/a;->bcb:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gm/persistence/b;->bP(Landroid/content/Context;)Lcom/google/android/gm/provider/aU;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/a;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gm/provider/aU;->dK(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/a/a/a;->q(IZ)V

    .line 83
    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/a/a/a;->setString(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/provider/a;->bcb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 89
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 90
    const/16 v2, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/common/a/a/a;->setInt(II)V

    goto/16 :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p1, v4, v4}, Lcom/google/common/a/a/a;->setInt(II)V

    goto/16 :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {p1, v4, v1}, Lcom/google/common/a/a/a;->setInt(II)V

    goto/16 :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
