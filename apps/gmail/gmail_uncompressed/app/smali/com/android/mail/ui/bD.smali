.class final Lcom/android/mail/ui/bD;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/mail/ui/bD;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/mail/ui/bD;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0, p1}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Account;)V

    .line 381
    return-void
.end method
