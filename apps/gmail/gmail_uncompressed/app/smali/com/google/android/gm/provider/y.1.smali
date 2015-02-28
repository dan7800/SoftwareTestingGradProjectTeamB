.class public final Lcom/google/android/gm/provider/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bdB:Ljava/io/ByteArrayOutputStream;

.field private final bdC:Ljava/util/zip/Adler32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/y;->bdB:Ljava/io/ByteArrayOutputStream;

    .line 16
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/y;->bdC:Ljava/util/zip/Adler32;

    return-void
.end method


# virtual methods
.method public final DV()J
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/provider/y;->bdC:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBytes()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/provider/y;->bdB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final h([B)V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gm/provider/y;->bdB:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gm/provider/y;->bdC:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 21
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/provider/y;->bdB:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method
