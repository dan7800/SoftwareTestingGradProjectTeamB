.class public Lcom/google/android/gm/EmlViewerActivityGmail;
.super Lcom/android/mail/browse/aq;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/mail/browse/aq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ck(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gm/EmlViewerActivityGmail;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    const v1, 0x7f0902f7

    invoke-virtual {p0, v1}, Lcom/google/android/gm/EmlViewerActivityGmail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/ay;->a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 11
    return-void
.end method
