.class public Lcom/android/mail/utils/G;
.super Landroid/database/MatrixCursor;
.source "SourceFile"


# instance fields
.field private final aPH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 30
    array-length v1, p1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/android/mail/utils/G;->aPH:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 33
    iget-object v2, p0, Lcom/android/mail/utils/G;->aPH:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/utils/G;->aPH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
