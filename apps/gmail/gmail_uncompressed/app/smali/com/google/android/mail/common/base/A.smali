.class public abstract Lcom/google/android/mail/common/base/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cpk:Lcom/google/android/mail/common/base/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/mail/common/base/C",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/mail/common/base/B;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/B;-><init>(Lcom/google/android/mail/common/base/A;)V

    iput-object v0, p0, Lcom/google/android/mail/common/base/A;->cpk:Lcom/google/android/mail/common/base/C;

    return-void
.end method


# virtual methods
.method public abstract gF(Ljava/lang/String;)Ljava/lang/String;
.end method
