.class final Lcom/google/android/gm/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gm/provider/T;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYN:Lcom/google/android/gm/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ah;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/gm/ai;->aYN:Lcom/google/android/gm/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/gm/provider/T;

    check-cast p2, Lcom/google/android/gm/provider/T;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
