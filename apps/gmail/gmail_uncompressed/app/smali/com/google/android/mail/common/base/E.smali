.class final Lcom/google/android/mail/common/base/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cpq:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/mail/common/base/F;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/F;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/E;->cpq:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static VZ()[C
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/mail/common/base/E;->cpq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static b(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/j;->VY()Lcom/google/android/mail/common/base/j;

    move-result-object v0

    return-object v0
.end method
