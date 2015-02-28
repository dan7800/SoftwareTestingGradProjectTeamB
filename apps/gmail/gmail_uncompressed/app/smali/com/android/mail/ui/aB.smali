.class final Lcom/android/mail/ui/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/mail/ui/aB;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/mail/ui/aB;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->h(Lcom/android/mail/ui/aw;)Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->invalidateViews()V

    .line 470
    iget-object v0, p0, Lcom/android/mail/ui/aB;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->e(Lcom/android/mail/ui/aw;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/aB;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v1}, Lcom/android/mail/ui/aw;->i(Lcom/android/mail/ui/aw;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/android/mail/ui/aw;->yD()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    return-void
.end method
