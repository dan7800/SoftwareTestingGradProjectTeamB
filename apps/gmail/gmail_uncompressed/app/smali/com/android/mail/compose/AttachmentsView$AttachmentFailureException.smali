.class Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errorRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 391
    const v0, 0x7f090092

    iput v0, p0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 392
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 396
    iput p2, p0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 397
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    const v0, 0x7f090092

    iput v0, p0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    .line 402
    return-void
.end method


# virtual methods
.method public final si()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/android/mail/compose/AttachmentsView$AttachmentFailureException;->errorRes:I

    return v0
.end method
