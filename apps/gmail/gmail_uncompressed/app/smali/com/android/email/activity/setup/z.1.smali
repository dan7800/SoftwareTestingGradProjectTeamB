.class final Lcom/android/email/activity/setup/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic MY:Lcom/android/email/activity/setup/y;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/y;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/email/activity/setup/z;->MY:Lcom/android/email/activity/setup/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/email/activity/setup/z;->MY:Lcom/android/email/activity/setup/y;

    iget-object v0, v0, Lcom/android/email/activity/setup/y;->MX:Lcom/android/email/activity/setup/x;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/email/activity/setup/z;->MY:Lcom/android/email/activity/setup/y;

    iget-object v0, v0, Lcom/android/email/activity/setup/y;->MX:Lcom/android/email/activity/setup/x;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/A;

    .line 275
    invoke-interface {v0}, Lcom/android/email/activity/setup/A;->hE()V

    .line 277
    :cond_0
    return-void
.end method
