.class public Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final mRule:Lcom/google/android/common/http/j;


# direct methods
.method constructor <init>(Lcom/google/android/common/http/j;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocked by rule: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/common/http/j;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;->mRule:Lcom/google/android/common/http/j;

    .line 73
    return-void
.end method
