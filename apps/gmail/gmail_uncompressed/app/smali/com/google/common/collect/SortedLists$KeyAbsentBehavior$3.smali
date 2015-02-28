.class final enum Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$3;
.super Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final ft(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation

    .prologue
    .line 175
    xor-int/lit8 v0, p1, -0x1

    return v0
.end method
