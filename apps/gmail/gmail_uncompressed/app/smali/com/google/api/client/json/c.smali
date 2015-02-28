.class public final Lcom/google/api/client/json/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/client/http/s;

    const-string v1, "application/json"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/api/client/util/j;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/s;->a(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xn()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/json/c;->MEDIA_TYPE:Ljava/lang/String;

    return-void
.end method
