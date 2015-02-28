.class public final enum Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cvX:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field public static final enum cvY:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field public static final enum cvZ:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field public static final enum cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field public static final enum cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field private static final synthetic cwc:[Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvX:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 117
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v1, "INITIATION_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvY:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 120
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v1, "INITIATION_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvZ:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 123
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v1, "MEDIA_IN_PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 126
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v1, "MEDIA_COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvX:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvY:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvZ:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwc:[Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwc:[Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-virtual {v0}, [Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    return-object v0
.end method
