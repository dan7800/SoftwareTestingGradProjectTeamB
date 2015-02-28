.class public Lcom/google/android/gm/welcome/WelcomeTourActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/aM;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/welcome/x;


# static fields
.field private static bsy:Landroid/content/Intent;


# instance fields
.field private aGq:Landroid/support/v4/view/ViewPager;

.field private bso:Lcom/google/android/gm/ui/CirclePageIndicator;

.field private bsp:Lcom/android/mail/ui/ao;

.field private bsq:Landroid/view/View;

.field private bsr:Landroid/view/View;

.field private bss:Landroid/view/View;

.field private bst:Landroid/view/View;

.field private bsu:I

.field private bsv:Lcom/google/android/gm/welcome/WelcomeTourState;

.field private bsw:Lcom/android/mail/a/d;

.field private bsx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 404
    return-void
.end method

.method private IU()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/welcome/SetupAddressesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsx:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "pending-changes"

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsv:Lcom/google/android/gm/welcome/WelcomeTourState;

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "tour-state"

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsv:Lcom/google/android/gm/welcome/WelcomeTourState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    return-void
.end method

.method private IV()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsq:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bst:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bst:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    invoke-virtual {v1}, Lcom/android/mail/ui/ao;->xT()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsr:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bss:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsr:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bss:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private IW()Z
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/WelcomeTourActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/welcome/WelcomeTourActivity;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IW()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 130
    const-string v1, "launched-from-welcome-tour"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v4

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gmail_welcome_tour_debug_mode"

    invoke-static {v1, v3, v2}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 140
    invoke-virtual {v4, p0}, Lcom/google/android/gm/persistence/b;->bS(Landroid/content/Context;)I

    move-result v3

    .line 143
    if-eq v1, v2, :cond_2

    .line 144
    const-string v3, "WelcomeTour"

    const-string v4, "Displaying welcome tour because debug flag was set"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v1

    move v1, v2

    .line 161
    :goto_1
    if-eqz v1, :cond_1

    .line 162
    sput-object p1, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsy:Landroid/content/Intent;

    const-string v4, "WelcomeTour"

    const-string v5, "Retained pendingIntent %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    invoke-static {v4, v5, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    const-string v2, "WelcomeTour"

    const-string v4, "Starting welcome tour"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/welcome/WelcomeTourActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v2, "tour-highest-version-seen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v2, "source"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0

    .line 146
    :cond_2
    const/4 v1, -0x2

    if-ne v3, v1, :cond_3

    .line 147
    const-string v1, "WelcomeTour"

    const-string v3, "Shared pref was absent :-( Defaulting to welcome tour for returning user"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    move v3, v0

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    if-gtz v3, :cond_4

    .line 151
    const-string v1, "WelcomeTour"

    const-string v4, "Displaying welcome tour because seen version %d is less than current %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v4, p0}, Lcom/google/android/gm/persistence/b;->bT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    const-string v1, "WelcomeTour"

    const-string v4, "Force display welcome tour pref was set"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    goto :goto_1

    .line 158
    :cond_5
    const-string v1, "WelcomeTour"

    const-string v4, "Welcome tour not required"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    goto :goto_1
.end method

.method private ej(I)V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "page"

    iget-object v3, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/view/U;->w(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 397
    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->ej(I)V

    .line 330
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ui/CirclePageIndicator;->D(I)V

    .line 331
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IV()V

    .line 332
    return-void
.end method

.method public final E(I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ui/CirclePageIndicator;->E(I)V

    .line 337
    return-void
.end method

.method public final a(IFI)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/ui/CirclePageIndicator;->a(IFI)V

    .line 342
    return-void
.end method

.method public final a(Lcom/google/android/gm/welcome/WelcomeTourState;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsv:Lcom/google/android/gm/welcome/WelcomeTourState;

    .line 402
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/google/android/gm/persistence/b;->o(Landroid/content/Context;I)V

    invoke-virtual {v0, p0, v3}, Lcom/google/android/gm/persistence/b;->c(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gm/welcome/q;

    invoke-direct {v0, p0}, Lcom/google/android/gm/welcome/q;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->setResult(I)V

    sget-object v0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsy:Landroid/content/Intent;

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsy:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "launched-from-welcome-tour"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "WelcomeTour"

    const-string v1, "Started pending intent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->finish()V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string v0, "pending-changes"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsx:Ljava/util/ArrayList;

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    invoke-virtual {v1}, Lcom/android/mail/ui/ao;->xS()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    invoke-virtual {v1}, Lcom/android/mail/ui/ao;->xU()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->y(I)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 247
    const v1, 0x7f0d024b

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    invoke-virtual {v1}, Lcom/android/mail/ui/ao;->xV()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->y(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "next"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const v1, 0x7f0d0248

    if-ne v0, v1, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IU()V

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "skip"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 253
    :cond_2
    const v1, 0x7f0d024a

    if-ne v0, v1, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IU()V

    .line 255
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "done"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 256
    :cond_3
    const v1, 0x7f0d024c

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IU()V

    .line 258
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "got_it"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tour-highest-version-seen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsu:I

    .line 181
    const-string v1, "WelcomeTour"

    const-string v2, "Welcome tour started (%s user, version: %d)"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IW()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "new"

    :goto_0
    aput-object v0, v3, v6

    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x15

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-static {p0, v3, p0}, Lcom/google/android/gm/welcome/v;->a(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/gm/welcome/x;)Lcom/android/mail/ui/Q;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 191
    const v0, 0x7f0400ca

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->setContentView(I)V

    .line 192
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tour-highest-version-seen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsu:I

    .line 197
    const v0, 0x7f0d0246

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    .line 198
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/aM;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/google/android/gm/welcome/p;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/google/android/gm/welcome/p;-><init>(Lcom/google/android/gm/welcome/WelcomeTourActivity;Landroid/app/FragmentManager;B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/U;)V

    .line 200
    const v0, 0x7f0d0249

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/CirclePageIndicator;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    .line 202
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ui/CirclePageIndicator;->e(Landroid/support/v4/view/ViewPager;)V

    .line 204
    new-instance v0, Lcom/android/mail/ui/ao;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1}, Lcom/android/mail/ui/ao;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    .line 206
    const v0, 0x7f0d0247

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsq:Landroid/view/View;

    .line 207
    const v0, 0x7f0d024b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsr:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsr:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f0d024a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bss:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bss:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0d024c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bst:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bst:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f0d0248

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bso:Lcom/google/android/gm/ui/CirclePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ui/CirclePageIndicator;->setVisibility(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/view/ad;->d(Landroid/view/View;I)V

    .line 224
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->aGq:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsp:Lcom/android/mail/ui/ao;

    invoke-virtual {v1}, Lcom/android/mail/ui/ao;->xS()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->y(I)V

    .line 226
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IV()V

    .line 228
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->IW()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "new"

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "launcher"

    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    const-string v1, "welcome_tour"

    const-string v2, "start_ww"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v6}, Lcom/google/android/gm/welcome/WelcomeTourActivity;->ej(I)V

    .line 229
    return-void

    .line 181
    :cond_1
    const-string v0, "upgrading"

    goto/16 :goto_0

    .line 228
    :cond_2
    const-string v0, "upgrading"

    goto :goto_1

    :cond_3
    const-string v3, "other"

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourActivity;->bsw:Lcom/android/mail/a/d;

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 242
    return-void
.end method
