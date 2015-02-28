.class final Lcom/android/mail/ui/aQ;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aIi:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/mail/ui/aQ;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/aQ;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/aR;

    const-string v2, "delayedConversationLoad"

    iget-object v3, p0, Lcom/android/mail/ui/aQ;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mail/ui/aR;-><init>(Lcom/android/mail/ui/aQ;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method
