.class public abstract Lcom/google/android/gm/y;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/an;
.implements Lcom/google/android/gm/n;


# static fields
.field private static aXI:Lcom/google/android/gm/y;


# instance fields
.field private aXG:Landroid/nfc/NfcAdapter;

.field private aXH:Landroid/nfc/NdefMessage;

.field private final aXJ:Lcom/google/android/gm/aw;

.field aXK:Lcom/google/android/gm/provider/aM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/gm/aw;

    invoke-direct {v0}, Lcom/google/android/gm/aw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    .line 90
    new-instance v0, Lcom/google/android/gm/z;

    invoke-direct {v0, p0}, Lcom/google/android/gm/z;-><init>(Lcom/google/android/gm/y;)V

    iput-object v0, p0, Lcom/google/android/gm/y;->aXK:Lcom/google/android/gm/provider/aM;

    return-void
.end method


# virtual methods
.method public final CK()Lcom/google/android/gm/aw;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    return-object v0
.end method

.method public Cr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0902f7

    invoke-virtual {p0, v0}, Lcom/google/android/gm/y;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    .line 36
    iget-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/b;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/android/gm/y;->aXK:Lcom/google/android/gm/provider/aM;

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/aM;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/aw;->setEnabled(Z)V

    .line 45
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/y;->aXH:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/y;->aXI:Lcom/google/android/gm/y;

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    sput-object p0, Lcom/google/android/gm/y;->aXI:Lcom/google/android/gm/y;

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/y;->aXH:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gm/y;->aXG:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gm/y;->aXH:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, p0, v1}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 85
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/aw;->setEnabled(Z)V

    .line 88
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/aw;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gm/y;->aXJ:Lcom/google/android/gm/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/aw;->setEnabled(Z)V

    .line 57
    return-void
.end method
