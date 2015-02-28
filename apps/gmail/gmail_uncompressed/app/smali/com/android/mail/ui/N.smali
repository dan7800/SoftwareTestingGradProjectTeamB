.class public abstract Lcom/android/mail/ui/N;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/cS;


# instance fields
.field private final aEX:Lcom/android/mail/ui/dA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    .line 42
    new-instance v0, Lcom/android/mail/ui/dA;

    invoke-direct {v0}, Lcom/android/mail/ui/dA;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/N;->aEX:Lcom/android/mail/ui/dA;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/app/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/mail/ui/N;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/mail/ui/N;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/N;->aEX:Lcom/android/mail/ui/dA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dA;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v7/app/g;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/android/mail/ui/N;->aEX:Lcom/android/mail/ui/dA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dA;->setEnabled(Z)V

    .line 85
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/android/mail/ui/N;->aEX:Lcom/android/mail/ui/dA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dA;->setEnabled(Z)V

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v7/app/g;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/android/mail/ui/N;->aEX:Lcom/android/mail/ui/dA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dA;->setEnabled(Z)V

    .line 71
    return-void
.end method

.method public final xg()Landroid/content/Context;
    .locals 0

    .prologue
    .line 89
    return-object p0
.end method
