.class public final Lcom/android/emailcommon/b/f;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field abm:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 43
    iget v0, p0, Lcom/android/emailcommon/b/f;->abm:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 44
    invoke-super {p0, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 45
    iput v2, p0, Lcom/android/emailcommon/b/f;->abm:I

    .line 47
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 48
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 32
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 33
    iget v0, p0, Lcom/android/emailcommon/b/f;->abm:I

    if-eq v0, v1, :cond_0

    .line 34
    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 38
    iput p1, p0, Lcom/android/emailcommon/b/f;->abm:I

    .line 39
    return-void
.end method
