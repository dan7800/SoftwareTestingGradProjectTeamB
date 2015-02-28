.class final Lcom/android/mail/ui/T;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aFj:Lcom/android/mail/ui/S;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/S;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mail/ui/T;->aFj:Lcom/android/mail/ui/S;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mail/ui/T;->aFj:Lcom/android/mail/ui/S;

    invoke-static {v0, p1}, Lcom/android/mail/ui/S;->a(Lcom/android/mail/ui/S;Lcom/android/mail/providers/Account;)V

    .line 100
    return-void
.end method
