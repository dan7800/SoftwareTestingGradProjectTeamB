.class public final Lcom/google/api/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic czN:Lcom/google/api/a/a/a;


# direct methods
.method public constructor <init>(Lcom/google/api/a/a/a;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/google/api/a/a/b;->czN:Lcom/google/api/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/a/a/a/a;)Lcom/google/api/a/a/c;
    .locals 2

    .prologue
    .line 1053
    new-instance v0, Lcom/google/api/a/a/c;

    invoke-direct {v0, p0, p1}, Lcom/google/api/a/a/c;-><init>(Lcom/google/api/a/a/b;Lcom/google/api/a/a/a/a;)V

    .line 1054
    iget-object v1, p0, Lcom/google/api/a/a/b;->czN:Lcom/google/api/a/a/a;

    invoke-virtual {v1, v0}, Lcom/google/api/a/a/a;->a(Lcom/google/api/client/googleapis/a/c;)V

    .line 1055
    return-object v0
.end method
