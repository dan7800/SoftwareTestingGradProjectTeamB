.class public final Lcom/android/mail/browse/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ER:I

.field private GN:I

.field private aof:I

.field private apr:Z

.field private aps:Z

.field private apt:Z

.field private apu:Z

.field private apv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/mail/browse/P;->aof:I

    .line 63
    iput v0, p0, Lcom/android/mail/browse/P;->ER:I

    .line 64
    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apr:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/mail/browse/P;->aps:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apt:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apu:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apv:Z

    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/P;)I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mail/browse/P;->GN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mail/browse/P;->aof:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/mail/browse/P;->apr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/mail/browse/P;->aps:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/mail/browse/P;->apu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/mail/browse/P;->ER:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/mail/browse/P;->apv:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final aw(Z)Lcom/android/mail/browse/P;
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/mail/browse/P;->apv:Z

    .line 141
    return-object p0
.end method

.method public final bW(I)Lcom/android/mail/browse/P;
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/android/mail/browse/P;->aof:I

    .line 72
    return-object p0
.end method

.method public final bX(I)Lcom/android/mail/browse/P;
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/android/mail/browse/P;->GN:I

    .line 97
    return-object p0
.end method

.method public final bY(I)Lcom/android/mail/browse/P;
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/android/mail/browse/P;->ER:I

    .line 132
    return-object p0
.end method

.method public final getLayoutDirection()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/mail/browse/P;->ER:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mail/browse/P;->GN:I

    return v0
.end method

.method public final pU()Lcom/android/mail/browse/P;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apr:Z

    .line 77
    return-object p0
.end method

.method public final pV()Lcom/android/mail/browse/P;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/P;->aps:Z

    .line 82
    return-object p0
.end method

.method public final pW()Lcom/android/mail/browse/P;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apt:Z

    .line 87
    return-object p0
.end method

.method public final pX()Lcom/android/mail/browse/P;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/P;->apu:Z

    .line 92
    return-object p0
.end method

.method public final pY()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/mail/browse/P;->aof:I

    return v0
.end method

.method public final pZ()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/mail/browse/P;->apr:Z

    return v0
.end method

.method public final qa()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/mail/browse/P;->aps:Z

    return v0
.end method

.method public final qb()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/mail/browse/P;->apt:Z

    return v0
.end method

.method public final qc()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/mail/browse/P;->apu:Z

    return v0
.end method

.method public final qd()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mail/browse/P;->apv:Z

    return v0
.end method
