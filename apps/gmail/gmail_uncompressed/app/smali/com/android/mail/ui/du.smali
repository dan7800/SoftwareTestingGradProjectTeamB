.class final Lcom/android/mail/ui/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aOa:Lcom/android/mail/ui/dt;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/dt;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mail/ui/du;->aOa:Lcom/android/mail/ui/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mail/ui/du;->aOa:Lcom/android/mail/ui/dt;

    iget-object v0, v0, Lcom/android/mail/ui/dt;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/du;->aOa:Lcom/android/mail/ui/dt;

    invoke-static {v0}, Lcom/android/mail/ui/dt;->a(Lcom/android/mail/ui/dt;)V

    .line 105
    :cond_0
    return-void
.end method
