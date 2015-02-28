.class final Lcom/android/ex/chips/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final acn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field public final aco:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field public final acp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field public final acq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final acr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/ex/chips/c;->acn:Ljava/util/List;

    .line 193
    iput-object p2, p0, Lcom/android/ex/chips/c;->aco:Ljava/util/LinkedHashMap;

    .line 194
    iput-object p3, p0, Lcom/android/ex/chips/c;->acp:Ljava/util/List;

    .line 195
    iput-object p4, p0, Lcom/android/ex/chips/c;->acq:Ljava/util/Set;

    .line 196
    iput-object p5, p0, Lcom/android/ex/chips/c;->acr:Ljava/util/List;

    .line 197
    return-void
.end method
