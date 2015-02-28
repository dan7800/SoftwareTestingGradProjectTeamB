.class final Lcom/google/android/gm/welcome/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field final synthetic btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/gm/welcome/z;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;B)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/z;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V

    return-void
.end method


# virtual methods
.method public final onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 2

    .prologue
    .line 665
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/z;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/z;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/gm/welcome/z;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
