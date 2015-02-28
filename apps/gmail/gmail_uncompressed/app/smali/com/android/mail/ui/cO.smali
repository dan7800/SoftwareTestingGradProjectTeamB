.class final Lcom/android/mail/ui/cO;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aMM:Lcom/android/mail/ui/cN;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/cN;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mail/ui/cO;->aMM:Lcom/android/mail/ui/cN;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/cO;->aMM:Lcom/android/mail/ui/cN;

    invoke-static {v0, p1}, Lcom/android/mail/ui/cN;->a(Lcom/android/mail/ui/cN;Lcom/android/mail/providers/Account;)V

    .line 75
    return-void
.end method
