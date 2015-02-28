.class public Lcom/android/mail/c/d;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final awY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/c/d;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/android/mail/c/e;

    invoke-direct {v0, p0}, Lcom/android/mail/c/e;-><init>(Lcom/android/mail/c/d;)V

    iput-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    .line 42
    return-void
.end method

.method private sZ()V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v1

    .line 135
    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    .line 136
    sget-object v1, Lcom/android/mail/c/d;->mW:Ljava/lang/String;

    const-string v2, "Unexpected failure to move to current position, pos=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/database/CursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 96
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDouble(I)D
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 88
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getDouble(I)D

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFloat(I)F
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 80
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getFloat(I)F

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 64
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLong(I)J
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 72
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 56
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getShort(I)S

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 48
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNull(I)Z
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 125
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public move(I)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/mail/c/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/mail/c/d;->getCount()I

    move-result v2

    .line 166
    if-lt p1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 185
    :goto_0
    return v0

    .line 172
    :cond_0
    if-gez p1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    if-ne p1, v0, :cond_2

    move v0, v1

    .line 180
    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mail/c/d;->awY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 102
    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/mail/c/d;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/c/d;->sZ()V

    .line 106
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
