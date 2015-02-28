.class final Lcom/android/emailcommon/b/h;
.super Lcom/android/emailcommon/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/b/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abr:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/emailcommon/b/h;->abr:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/b/g;-><init>(Lcom/android/emailcommon/b/j;)V

    return-void
.end method


# virtual methods
.method protected final synthetic au()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/emailcommon/b/h;->abr:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
