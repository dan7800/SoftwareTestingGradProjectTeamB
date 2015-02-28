.class final Lcom/android/mail/ui/G;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aEV:Lcom/android/mail/ui/F;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/F;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    iget-object v0, v0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    .line 120
    iget-object v1, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    iput-object p1, v1, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    .line 121
    iget-object v1, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    iget-object v1, v1, Lcom/android/mail/ui/F;->aEH:Lcom/android/mail/ui/L;

    iget-object v2, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    iget-object v2, v2, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/L;->d(Lcom/android/mail/providers/Account;)V

    .line 122
    iget-object v1, p0, Lcom/android/mail/ui/G;->aEV:Lcom/android/mail/ui/F;

    invoke-virtual {v1, p1, v0}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V

    .line 123
    return-void
.end method
