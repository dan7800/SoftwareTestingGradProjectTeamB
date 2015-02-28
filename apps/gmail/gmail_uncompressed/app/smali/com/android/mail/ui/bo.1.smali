.class final Lcom/android/mail/ui/bo;
.super Lcom/android/mail/providers/d;
.source "SourceFile"


# instance fields
.field final synthetic aIU:Lcom/android/mail/ui/CustomViewToolbar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/CustomViewToolbar;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/mail/ui/bo;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-direct {p0}, Lcom/android/mail/providers/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/ui/bo;->aIU:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-static {v0, p1}, Lcom/android/mail/ui/CustomViewToolbar;->a(Lcom/android/mail/ui/CustomViewToolbar;Lcom/android/mail/providers/Account;)V

    .line 49
    return-void
.end method
