.class final Lcom/android/email/activity/setup/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic MC:Lcom/android/email/activity/setup/n;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/n;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/o;->MC:Lcom/android/email/activity/setup/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/setup/o;->MC:Lcom/android/email/activity/setup/n;

    iget-object v0, v0, Lcom/android/email/activity/setup/n;->MB:Lcom/android/email/activity/setup/m;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/m;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/email/activity/setup/o;->MC:Lcom/android/email/activity/setup/n;

    iget-object v0, v0, Lcom/android/email/activity/setup/n;->MB:Lcom/android/email/activity/setup/m;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/p;

    .line 87
    invoke-interface {v0}, Lcom/android/email/activity/setup/p;->hw()V

    .line 89
    :cond_0
    return-void
.end method
