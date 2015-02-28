.class public Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/google/android/gm/provider/CompressedMessageCursor;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/CompressedMessageCursor;JLjava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->this$0:Lcom/google/android/gm/provider/CompressedMessageCursor;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to decompress message"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iput-wide p2, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->mMessageId:J

    .line 141
    return-void

    .line 139
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final sM()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->mMessageId:J

    return-wide v0
.end method
