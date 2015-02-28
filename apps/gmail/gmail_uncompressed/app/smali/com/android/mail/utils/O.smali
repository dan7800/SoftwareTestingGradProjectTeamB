.class final Lcom/android/mail/utils/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/t;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sJ()Lcom/google/android/mail/common/html/parser/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/mail/common/html/parser/s",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/android/mail/utils/R;

    invoke-direct {v0}, Lcom/android/mail/utils/R;-><init>()V

    return-object v0
.end method
