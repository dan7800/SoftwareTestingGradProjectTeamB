.class final Lcom/android/mail/ui/ax;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mail/ui/ax;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mail/ui/ax;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0, p1}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/ui/aw;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;

    .line 155
    iget-object v0, p0, Lcom/android/mail/ui/ax;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/ui/aw;)V

    .line 156
    return-void
.end method
