.class public final Lcom/android/mail/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/ImageView;Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const v0, 0x7f0200c1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const v0, 0x7f0200c3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const v0, 0x7f0200c4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const v0, 0x7f0200c5

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 48
    :cond_3
    const v0, 0x7f0200c0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
