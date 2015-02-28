.class public final Lcom/google/common/base/Equivalences;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static YJ()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/base/Equivalences$Equals;->czQ:Lcom/google/common/base/Equivalences$Equals;

    return-object v0
.end method

.method public static YK()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/common/base/Equivalences$Identity;->czR:Lcom/google/common/base/Equivalences$Identity;

    return-object v0
.end method
