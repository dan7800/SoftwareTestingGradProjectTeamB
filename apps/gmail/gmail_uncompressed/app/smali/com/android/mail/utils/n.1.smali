.class final Lcom/android/mail/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aPh:Lcom/android/mail/utils/l;


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/l;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mail/utils/n;->aPh:Lcom/android/mail/utils/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/l;B)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mail/utils/n;-><init>(Lcom/android/mail/utils/l;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/mail/utils/n;->aPh:Lcom/android/mail/utils/l;

    invoke-static {v0, v1}, Lcom/android/mail/utils/l;->b(Lcom/android/mail/utils/l;I)V

    .line 79
    iget-object v0, p0, Lcom/android/mail/utils/n;->aPh:Lcom/android/mail/utils/l;

    invoke-static {v0}, Lcom/android/mail/utils/l;->a(Lcom/android/mail/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/android/mail/utils/n;->aPh:Lcom/android/mail/utils/l;

    invoke-static {v0}, Lcom/android/mail/utils/l;->a(Lcom/android/mail/utils/l;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return v1
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/utils/n;->aPh:Lcom/android/mail/utils/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/utils/l;->b(Lcom/android/mail/utils/l;I)V

    .line 74
    return-void
.end method
