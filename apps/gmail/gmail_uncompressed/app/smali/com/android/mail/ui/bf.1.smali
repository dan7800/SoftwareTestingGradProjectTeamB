.class final Lcom/android/mail/ui/bf;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIE:Lcom/android/mail/ui/be;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/be;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/ui/bf;->aIE:Lcom/android/mail/ui/be;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/ui/bf;->aIE:Lcom/android/mail/ui/be;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/mail/ui/be;->a(Lcom/android/mail/ui/be;J)J

    .line 59
    iget-object v0, p0, Lcom/android/mail/ui/bf;->aIE:Lcom/android/mail/ui/be;

    invoke-static {v0}, Lcom/android/mail/ui/be;->a(Lcom/android/mail/ui/be;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method
