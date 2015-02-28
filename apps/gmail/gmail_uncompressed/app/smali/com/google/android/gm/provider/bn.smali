.class final Lcom/google/android/gm/provider/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/common/http/i;


# instance fields
.field aiF:Ljava/io/InputStream;

.field final synthetic blx:Lcom/google/android/gm/provider/MailSync;

.field blz:J

.field private final bmi:Ljava/lang/String;

.field private final bmj:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailSync;Ljava/lang/String;J[B)V
    .locals 1

    .prologue
    .line 4140
    iput-object p1, p0, Lcom/google/android/gm/provider/bn;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4141
    iput-object p2, p0, Lcom/google/android/gm/provider/bn;->bmi:Ljava/lang/String;

    .line 4142
    iput-object p5, p0, Lcom/google/android/gm/provider/bn;->bmj:[B

    .line 4143
    iput-wide p3, p0, Lcom/google/android/gm/provider/bn;->blz:J

    .line 4144
    invoke-direct {p0}, Lcom/google/android/gm/provider/bn;->HC()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bn;->aiF:Ljava/io/InputStream;

    .line 4145
    return-void
.end method

.method private HC()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 4169
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/gm/provider/bn;->bmj:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final fW()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/google/android/gm/provider/bn;->aiF:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 4155
    iget-object v0, p0, Lcom/google/android/gm/provider/bn;->aiF:Ljava/io/InputStream;

    .line 4156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/bn;->aiF:Ljava/io/InputStream;

    .line 4159
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/bn;->HC()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4165
    iget-object v0, p0, Lcom/google/android/gm/provider/bn;->bmi:Ljava/lang/String;

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 4149
    iget-wide v0, p0, Lcom/google/android/gm/provider/bn;->blz:J

    return-wide v0
.end method
