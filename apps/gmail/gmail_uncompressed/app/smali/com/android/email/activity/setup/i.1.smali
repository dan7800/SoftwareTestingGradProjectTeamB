.class final Lcom/android/email/activity/setup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic My:Lcom/android/email/activity/setup/g;

.field final synthetic Mz:Lcom/android/email/activity/setup/j;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/g;Lcom/android/email/activity/setup/j;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/email/activity/setup/i;->My:Lcom/android/email/activity/setup/g;

    iput-object p2, p0, Lcom/android/email/activity/setup/i;->Mz:Lcom/android/email/activity/setup/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/email/activity/setup/i;->My:Lcom/android/email/activity/setup/g;

    iget-object v0, v0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/i;->Mz:Lcom/android/email/activity/setup/j;

    invoke-interface {v0}, Lcom/android/email/activity/setup/j;->ht()V

    .line 237
    iget-object v0, p0, Lcom/android/email/activity/setup/i;->Mz:Lcom/android/email/activity/setup/j;

    invoke-interface {v0}, Lcom/android/email/activity/setup/j;->hu()V

    goto :goto_0
.end method
