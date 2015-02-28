.class final Lcom/google/api/client/googleapis/media/c;
.super Lcom/google/api/client/http/f;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/api/client/http/f;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/c;->cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 44
    return-void
.end method


# virtual methods
.method public final WX()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/c;->cwe:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WW()V

    .line 59
    invoke-super {p0}, Lcom/google/api/client/http/f;->WX()J

    move-result-wide v0

    return-wide v0
.end method
