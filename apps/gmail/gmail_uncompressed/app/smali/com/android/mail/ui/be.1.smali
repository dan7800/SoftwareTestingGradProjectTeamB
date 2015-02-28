.class public final Lcom/android/mail/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aIx:I

.field private static aIy:I


# instance fields
.field private aIA:J

.field private aIB:Landroid/view/View;

.field private aIC:Landroid/view/View;

.field private final aID:Ljava/lang/Runnable;

.field private final aIz:Landroid/app/Fragment;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    sput v0, Lcom/android/mail/ui/be;->aIx:I

    .line 39
    sput v0, Lcom/android/mail/ui/be;->aIy:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/be;->aIA:J

    .line 52
    iput-object p1, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    .line 53
    iput-object p2, p0, Lcom/android/mail/ui/be;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/mail/ui/bf;

    const-string v1, "mDelayedShow"

    iget-object v2, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mail/ui/bf;-><init>(Lcom/android/mail/ui/be;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/be;->aID:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/be;J)J
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/mail/ui/be;->aIA:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/mail/ui/be;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIB:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/be;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mail/ui/be;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/be;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    return-object v0
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/be;->aIA:J

    .line 118
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIB:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050009

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/mail/ui/bh;

    invoke-direct {v1, p0, p1}, Lcom/android/mail/ui/bh;-><init>(Lcom/android/mail/ui/be;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 122
    :cond_2
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public final az(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0d0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    .line 66
    const v0, 0x7f0d0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/be;->aIB:Landroid/view/View;

    .line 67
    return-void
.end method

.method public final bu(Z)V
    .locals 4

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    sget v0, Lcom/android/mail/ui/be;->aIx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/be;->aIx:I

    .line 76
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/mail/ui/be;->aIy:I

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/be;->aIC:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/be;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/be;->aID:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/be;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/be;->aID:Ljava/lang/Runnable;

    sget v2, Lcom/android/mail/ui/be;->aIx:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/mail/ui/be;->aIA:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mail/ui/be;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/be;->aID:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/mail/ui/be;->d(Ljava/lang/Runnable;)V

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mail/ui/be;->aIA:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 103
    sget v2, Lcom/android/mail/ui/be;->aIy:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/mail/ui/be;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/mail/ui/be;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mail/ui/bg;

    const-string v4, "dismissLoadingStatus"

    iget-object v5, p0, Lcom/android/mail/ui/be;->aIz:Landroid/app/Fragment;

    invoke-direct {v3, p0, v4, v5, p1}, Lcom/android/mail/ui/bg;-><init>(Lcom/android/mail/ui/be;Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/Runnable;)V

    sget v4, Lcom/android/mail/ui/be;->aIy:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final zb()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/be;->c(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
