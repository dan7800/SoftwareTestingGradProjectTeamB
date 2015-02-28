.class final Lcom/android/mail/ui/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/aK;


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/android/mail/ui/aD;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/mail/ui/aD;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->j(Lcom/android/mail/ui/aw;)Lcom/android/mail/ui/MailSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->setEnabled(Z)V

    .line 1205
    return-void
.end method

.method public final b(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public final pC()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/mail/ui/aD;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->j(Lcom/android/mail/ui/aw;)Lcom/android/mail/ui/MailSwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->setEnabled(Z)V

    .line 1210
    return-void
.end method
