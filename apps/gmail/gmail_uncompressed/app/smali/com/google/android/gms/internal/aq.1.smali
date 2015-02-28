.class public final Lcom/google/android/gms/internal/aq;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/ar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final La()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method

.method protected final Lb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.feedback.internal.IFeedbackService"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5e3530

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/B;->m(Lcom/google/android/gms/common/internal/y;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/feedback/e;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aq;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/feedback/ErrorReport;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mj()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mj()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mj()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->bKa:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mh()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mh()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->bJT:[B

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->blK:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->description:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwMethodName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    iput v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwLineNumber:I

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->stackTrace:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Ml()Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->throwFileName:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mk()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->bKg:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/feedback/e;->Mm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->bKf:Ljava/lang/String;

    :cond_6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/feedback/ErrorReport;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "FeedbackClientImpl"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v0, "FeedbackClientImpl"

    const-string v1, "Remote Exception: null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final synthetic g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/as;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ar;

    move-result-object v0

    return-object v0
.end method
