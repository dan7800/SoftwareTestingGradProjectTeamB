.class final Lcom/android/mail/utils/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/utils/M;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final s(Lcom/android/mail/providers/Folder;)Z
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
