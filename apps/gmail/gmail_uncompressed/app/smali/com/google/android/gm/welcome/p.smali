.class final Lcom/google/android/gm/welcome/p;
.super Lcom/android/mail/utils/q;
.source "SourceFile"


# instance fields
.field final synthetic bsz:Lcom/google/android/gm/welcome/WelcomeTourActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/WelcomeTourActivity;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/gm/welcome/p;->bsz:Lcom/google/android/gm/welcome/WelcomeTourActivity;

    .line 407
    invoke-direct {p0, p2}, Lcom/android/mail/utils/q;-><init>(Landroid/app/FragmentManager;)V

    .line 408
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/WelcomeTourActivity;Landroid/app/FragmentManager;B)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/welcome/p;-><init>(Lcom/google/android/gm/welcome/WelcomeTourActivity;Landroid/app/FragmentManager;)V

    return-void
.end method

.method private ek(I)I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/gm/welcome/p;->bsz:Lcom/google/android/gm/welcome/WelcomeTourActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->a(Lcom/google/android/gm/welcome/WelcomeTourActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/p;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 446
    :cond_0
    return p1
.end method


# virtual methods
.method public final cc(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/p;->ek(I)I

    move-result v0

    .line 431
    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 433
    :pswitch_0
    new-instance v0, Lcom/google/android/gm/welcome/o;

    invoke-direct {v0}, Lcom/google/android/gm/welcome/o;-><init>()V

    goto :goto_0

    .line 435
    :pswitch_1
    new-instance v0, Lcom/google/android/gm/welcome/i;

    invoke-direct {v0}, Lcom/google/android/gm/welcome/i;-><init>()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/gm/welcome/p;->bsz:Lcom/google/android/gm/welcome/WelcomeTourActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->b(Lcom/google/android/gm/welcome/WelcomeTourActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final w(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/p;->ek(I)I

    move-result v0

    .line 417
    packed-switch v0, :pswitch_data_0

    .line 423
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 419
    :pswitch_0
    const-string v0, "welcome"

    goto :goto_0

    .line 421
    :pswitch_1
    const-string v0, "sectioned_inbox"

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
