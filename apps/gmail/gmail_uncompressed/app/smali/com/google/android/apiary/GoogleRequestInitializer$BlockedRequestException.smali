.class public Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/common/http/j;)V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocked by rule: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/common/http/j;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/common/http/j;B)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;-><init>(Lcom/google/android/common/http/j;)V

    return-void
.end method
