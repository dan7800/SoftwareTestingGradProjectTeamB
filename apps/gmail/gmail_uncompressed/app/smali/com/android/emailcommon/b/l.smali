.class public final Lcom/android/emailcommon/b/l;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final aK:Ljava/lang/String;

.field private abu:Ljava/lang/StringBuilder;

.field private abv:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 38
    const-string v0, "RAW"

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/b/l;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/b/l;->aK:Ljava/lang/String;

    .line 44
    iput-boolean v3, p0, Lcom/android/emailcommon/b/l;->abv:Z

    .line 45
    invoke-direct {p0}, Lcom/android/emailcommon/b/l;->jR()V

    .line 46
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/emailcommon/b/l;->aK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dump start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    return-void
.end method

.method private bm(I)V
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 85
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/emailcommon/b/l;->mg()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/16 v0, 0x20

    if-gt v0, p1, :cond_2

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/b/l;->abu:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/b/l;->abu:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/emailcommon/b/s;->bn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private jR()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/emailcommon/b/l;->aK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/b/l;->abu:Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private mg()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/emailcommon/b/l;->abv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/b/l;->abu:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/emailcommon/b/l;->aK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 98
    :cond_0
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/b/l;->abu:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    invoke-direct {p0}, Lcom/android/emailcommon/b/l;->jR()V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 106
    invoke-direct {p0}, Lcom/android/emailcommon/b/l;->mg()V

    .line 107
    return-void
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 59
    invoke-direct {p0, v0}, Lcom/android/emailcommon/b/l;->bm(I)V

    .line 60
    return v0
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    move v0, v1

    .line 70
    :goto_0
    if-lez v0, :cond_0

    .line 71
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lcom/android/emailcommon/b/l;->bm(I)V

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return v1
.end method
