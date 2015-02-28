.class final Lcom/android/emailcommon/a/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field final synthetic Wa:Lcom/android/emailcommon/a/a;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/a/a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/emailcommon/a/b;->Wa:Lcom/android/emailcommon/a/a;

    .line 82
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 88
    iget-object v0, p0, Lcom/android/emailcommon/a/b;->Wa:Lcom/android/emailcommon/a/a;

    invoke-static {v0}, Lcom/android/emailcommon/a/a;->a(Lcom/android/emailcommon/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    return-void
.end method
