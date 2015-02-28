.class final Lcom/android/mail/ui/ah;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aGd:Lcom/android/mail/ui/ae;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/mail/ui/ah;->aGd:Lcom/android/mail/ui/ae;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mail/ui/ah;->aGd:Lcom/android/mail/ui/ae;

    invoke-static {v0, p1}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/ae;Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/mail/ui/ah;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 190
    :cond_0
    return-void
.end method
