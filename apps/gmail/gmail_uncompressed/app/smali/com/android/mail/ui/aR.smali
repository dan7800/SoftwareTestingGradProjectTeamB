.class final Lcom/android/mail/ui/aR;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIj:Lcom/android/mail/ui/aQ;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aQ;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mail/ui/aR;->aIj:Lcom/android/mail/ui/aQ;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 5

    .prologue
    .line 214
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CVF load observer fired, this=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/aR;->aIj:Lcom/android/mail/ui/aQ;

    iget-object v4, v4, Lcom/android/mail/ui/aQ;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    iget-object v0, p0, Lcom/android/mail/ui/aR;->aIj:Lcom/android/mail/ui/aQ;

    iget-object v0, v0, Lcom/android/mail/ui/aQ;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 217
    return-void
.end method
