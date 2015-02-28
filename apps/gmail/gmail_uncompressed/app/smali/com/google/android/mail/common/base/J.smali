.class final Lcom/google/android/mail/common/base/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cpM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/base/J;->cpM:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 3142
    invoke-direct {p0}, Lcom/google/android/mail/common/base/J;-><init>()V

    return-void
.end method


# virtual methods
.method final ae(II)Lcom/google/android/mail/common/base/J;
    .locals 2

    .prologue
    .line 3151
    :goto_0
    if-gt p1, p2, :cond_0

    .line 3152
    iget-object v0, p0, Lcom/google/android/mail/common/base/J;->cpM:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3151
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3154
    :cond_0
    return-object p0
.end method

.method final eW(I)Lcom/google/android/mail/common/base/J;
    .locals 2

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/google/android/mail/common/base/J;->cpM:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3147
    return-object p0
.end method
