.class final Lcom/android/emailcommon/b/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params2:",
        "Ljava/lang/Object;",
        "Progress2:",
        "Ljava/lang/Object;",
        "Result2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams2;TProgress2;TResult2;>;"
    }
.end annotation


# instance fields
.field private final abs:Lcom/android/emailcommon/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/g",
            "<TParams2;TProgress2;TResult2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/b/g",
            "<TParams2;TProgress2;TResult2;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    .line 117
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams2;)TResult2;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-virtual {v0}, Lcom/android/emailcommon/b/g;->au()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-virtual {v0}, Lcom/android/emailcommon/b/g;->mc()V

    .line 127
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-static {}, Lcom/android/emailcommon/b/g;->md()V

    .line 128
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-virtual {v0}, Lcom/android/emailcommon/b/g;->mc()V

    .line 133
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-static {v0}, Lcom/android/emailcommon/b/g;->a(Lcom/android/emailcommon/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-static {}, Lcom/android/emailcommon/b/g;->md()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/b/i;->abs:Lcom/android/emailcommon/b/g;

    invoke-static {}, Lcom/android/emailcommon/b/g;->me()V

    goto :goto_0
.end method
