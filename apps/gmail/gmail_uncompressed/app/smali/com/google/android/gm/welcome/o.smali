.class public final Lcom/google/android/gm/welcome/o;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private bsn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private IT()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 164
    const-string v1, "error-dialog-tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/google/android/gm/welcome/c;

    invoke-direct {v1}, Lcom/google/android/gm/welcome/c;-><init>()V

    .line 166
    const-string v2, "error-dialog-tag"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 154
    if-ne p1, v0, :cond_0

    .line 155
    if-ne p2, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/google/android/gm/welcome/o;->IT()V

    .line 159
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 117
    const v1, 0x7f0d024e

    if-eq v0, v1, :cond_0

    const v1, 0x7f0d0252

    if-eq v0, v1, :cond_0

    const v1, 0x7f0d024f

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aN(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/google/android/gm/welcome/o;->IT()V

    .line 123
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "play_video"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "gmail_new_user"

    iget-boolean v2, p0, Lcom/google/android/gm/welcome/o;->bsn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/welcome/o;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome_tour"

    const-string v2, "click_button"

    const-string v3, "play_video"

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0d0252

    const/16 v8, 0x8

    const v7, 0x7f0d024f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "tour-highest-version-seen"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/welcome/o;->bsn:Z

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gm/welcome/o;->bsn:Z

    if-eqz v0, :cond_2

    .line 49
    const v3, 0x7f0903b6

    .line 50
    const v0, 0x7f0903b7

    move v4, v3

    move v3, v0

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 57
    const v0, 0x7f0400cc

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 59
    const v0, 0x7f0d0250

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f0d0251

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f0d024e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/support/v4/view/ad;->c(Landroid/view/View;I)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gmail_welcome_tour_video_enabled"

    invoke-static {v3, v4, v1}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    :cond_0
    :goto_2
    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    :goto_3
    return-object v6

    :cond_1
    move v0, v2

    .line 47
    goto :goto_0

    .line 52
    :cond_2
    const v3, 0x7f0903b8

    .line 53
    const v0, 0x7f0903b9

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/o;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d024f

    if-ne v0, v1, :cond_0

    .line 143
    check-cast p1, Landroid/widget/ImageView;

    .line 144
    if-eqz p2, :cond_1

    .line 145
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method
