.class public final Lcom/android/mail/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aPe:Landroid/view/View;

.field private aPf:Lcom/android/mail/utils/m;

.field private final aPg:Lcom/android/mail/utils/n;

.field private ao:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/android/mail/utils/l;->ao:I

    .line 25
    new-instance v0, Lcom/android/mail/utils/n;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/utils/n;-><init>(Lcom/android/mail/utils/l;B)V

    iput-object v0, p0, Lcom/android/mail/utils/l;->aPg:Lcom/android/mail/utils/n;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/l;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/android/mail/utils/l;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mail/utils/l;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/utils/l;I)V
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/android/mail/utils/l;->ao:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/mail/utils/l;->ao:I

    iget-object v0, p0, Lcom/android/mail/utils/l;->aPf:Lcom/android/mail/utils/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/utils/l;->aPf:Lcom/android/mail/utils/m;

    invoke-interface {v0, p0, p1}, Lcom/android/mail/utils/m;->a(Lcom/android/mail/utils/l;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/utils/m;)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mail/utils/l;->aPf:Lcom/android/mail/utils/m;

    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPf:Lcom/android/mail/utils/m;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPf:Lcom/android/mail/utils/m;

    iget v1, p0, Lcom/android/mail/utils/l;->ao:I

    invoke-interface {v0, p0, v1}, Lcom/android/mail/utils/m;->a(Lcom/android/mail/utils/l;I)V

    .line 37
    :cond_0
    return-void
.end method

.method public final aF(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/l;->aPg:Lcom/android/mail/utils/n;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/mail/utils/l;->aPe:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/l;->aPg:Lcom/android/mail/utils/n;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
