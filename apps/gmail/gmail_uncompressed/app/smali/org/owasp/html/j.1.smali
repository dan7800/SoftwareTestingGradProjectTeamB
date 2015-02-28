.class final Lorg/owasp/html/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cGM:I

.field final cGN:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final cGO:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lorg/owasp/html/j;->cGM:I

    .line 60
    iput-object p2, p0, Lorg/owasp/html/j;->cGN:Lcom/google/common/collect/ImmutableSet;

    .line 61
    iput-object p3, p0, Lorg/owasp/html/j;->cGO:Lcom/google/common/collect/ImmutableMap;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableMap;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/owasp/html/j;-><init>(ILcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method
