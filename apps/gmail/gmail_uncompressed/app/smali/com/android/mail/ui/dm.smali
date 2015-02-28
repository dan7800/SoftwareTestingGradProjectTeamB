.class public final Lcom/android/mail/ui/dm;
.super Lcom/android/mail/ui/bW;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0400b5

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/mail/ui/bW;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mail/providers/Folder;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final b(Lcom/android/mail/providers/Folder;)Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    return v0
.end method
