.class final Lcom/android/email/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Uf:I

.field final synthetic Ug:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;


# direct methods
.method constructor <init>(Lcom/android/email/service/AttachmentService$AttachmentWatchdog;I)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/email/service/d;->Ug:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    iput p2, p0, Lcom/android/email/service/d;->Uf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 436
    sget-object v0, Lcom/android/email/service/AttachmentService;->TS:Lcom/android/email/service/AttachmentService;

    .line 437
    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0}, Lcom/android/email/service/AttachmentService;->a(Lcom/android/email/service/AttachmentService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/email/service/d;->Ug:Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    iget v2, p0, Lcom/android/email/service/d;->Uf:I

    invoke-virtual {v1, v0, v2}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->a(Lcom/android/email/service/AttachmentService;I)V

    goto :goto_0
.end method
