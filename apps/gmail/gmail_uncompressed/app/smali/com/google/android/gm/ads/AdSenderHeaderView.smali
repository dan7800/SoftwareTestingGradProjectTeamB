.class public Lcom/google/android/gm/ads/AdSenderHeaderView;
.super Lcom/android/mail/browse/aU;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aZq:Lcom/google/android/gm/ads/c;

.field private aZr:Landroid/widget/ImageView;

.field private aZs:Landroid/widget/TextView;

.field private aZt:Z

.field private final aZu:Lcom/google/android/gm/provider/e;

.field private final aZv:Lcom/google/android/gm/provider/e;

.field private ark:Lcom/android/mail/browse/StarView;

.field private ast:Landroid/view/View;

.field private asu:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ads/AdSenderHeaderView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/browse/aU;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    new-instance v0, Lcom/google/android/gm/ads/d;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/d;-><init>(Lcom/google/android/gm/ads/AdSenderHeaderView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZu:Lcom/google/android/gm/provider/e;

    .line 194
    new-instance v0, Lcom/google/android/gm/ads/e;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/e;-><init>(Lcom/google/android/gm/ads/AdSenderHeaderView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZv:Lcom/google/android/gm/provider/e;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZt:Z

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdSenderHeaderView;)Lcom/google/android/gm/ads/c;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    return-object v0
.end method

.method private b(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ark:Lcom/android/mail/browse/StarView;

    iget-boolean v1, p1, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/StarView;->aD(Z)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ark:Lcom/android/mail/browse/StarView;

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p1, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900a1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/StarView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 176
    :cond_0
    const v0, 0x7f0900a0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/m;Ljava/util/Map;Lcom/android/mail/browse/aH;Lcom/android/mail/b;Lcom/android/mail/utils/aj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/browse/aH;",
            "Lcom/android/mail/b;",
            "Lcom/android/mail/utils/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method public final a(Lcom/google/android/gm/ads/c;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    if-ne v0, p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    .line 104
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/c;->Dg()Lcom/google/android/gm/provider/Advertisement;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZr:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZr:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->asu:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZs:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->b(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ast:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZt:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final c(Lcom/android/mail/browse/V;)Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 123
    const v3, 0x7f0d00e0

    if-ne v2, v3, :cond_2

    .line 124
    iget-object v2, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    invoke-virtual {v2}, Lcom/google/android/gm/ads/c;->Dg()Lcom/google/android/gm/provider/Advertisement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Lcom/google/android/gm/provider/Advertisement;)V

    iget-boolean v3, v2, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZu:Lcom/google/android/gm/provider/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZu:Lcom/google/android/gm/provider/e;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lcom/google/android/gm/ads/AdSenderHeaderView;->b(Lcom/google/android/gm/provider/Advertisement;)V

    .line 130
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const v3, 0x7f0d00e1

    if-ne v2, v3, :cond_3

    .line 126
    iget-object v1, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    invoke-virtual {v1}, Lcom/google/android/gm/ads/c;->Dg()Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZv:Lcom/google/android/gm/provider/e;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v2, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZv:Lcom/google/android/gm/provider/e;

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "refAdEventId"

    iget-object v3, v1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    invoke-virtual {v3}, Lcom/google/android/gm/ads/c;->oN()Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v1, v5}, Lcom/android/mail/compose/g;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v2}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 127
    :cond_3
    const v3, 0x7f0d00df

    if-ne v2, v3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    invoke-virtual {v2}, Lcom/google/android/gm/ads/c;->Dg()Lcom/google/android/gm/provider/Advertisement;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/Advertisement;->E(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "create_new_tab"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x80000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/android/gm/ads/AdSenderHeaderView;->mW:Ljava/lang/String;

    const-string v4, "Failed to open redirect url: %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/gm/provider/Advertisement;->bci:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/mail/browse/aU;->onFinishInflate()V

    .line 87
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZr:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->asu:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZs:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/StarView;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ark:Lcom/android/mail/browse/StarView;

    .line 91
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ast:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->ark:Lcom/android/mail/browse/StarView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/StarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public final ov()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZq:Lcom/google/android/gm/ads/c;

    .line 229
    return-void
.end method

.method public final rJ()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdSenderHeaderView;->aZt:Z

    .line 219
    return-void
.end method

.method public final refresh()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
