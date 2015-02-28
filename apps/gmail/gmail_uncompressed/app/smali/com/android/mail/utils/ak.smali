.class final Lcom/android/mail/utils/ak;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aQY:Lcom/android/mail/utils/aj;


# direct methods
.method constructor <init>(Lcom/android/mail/utils/aj;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mail/utils/ak;->aQY:Lcom/android/mail/utils/aj;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mail/utils/ak;->aQY:Lcom/android/mail/utils/aj;

    iget-object v1, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mail/utils/aj;->a(Lcom/android/mail/utils/aj;Ljava/lang/String;)V

    .line 85
    return-void
.end method
