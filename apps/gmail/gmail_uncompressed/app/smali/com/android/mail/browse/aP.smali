.class final Lcom/android/mail/browse/aP;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic atN:Lcom/android/mail/browse/aO;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/aO;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mail/browse/aP;->atN:Lcom/android/mail/browse/aO;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mail/browse/aP;->atN:Lcom/android/mail/browse/aO;

    invoke-static {v0, p1}, Lcom/android/mail/browse/aO;->a(Lcom/android/mail/browse/aO;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;

    .line 106
    return-void
.end method
