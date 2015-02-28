.class final Lcom/android/mail/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/ab;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 4043
    iput-object p1, p0, Lcom/android/mail/ui/g;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ar(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 4046
    iget-object v0, p0, Lcom/android/mail/ui/g;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, p0, Lcom/android/mail/ui/g;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Account;)V

    .line 4047
    return-void
.end method
