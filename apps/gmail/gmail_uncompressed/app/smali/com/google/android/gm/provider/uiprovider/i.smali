.class public Lcom/google/android/gm/provider/uiprovider/i;
.super Landroid/database/CursorWrapper;
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

.field protected final boF:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/i;->boF:[Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/i;->boF:[Ljava/lang/String;

    array-length v1, v0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/i;->aPH:Ljava/util/Map;

    .line 24
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 25
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/i;->aPH:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/i;->boF:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method protected Ig()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected final eb(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/i;->aPH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 42
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/i;->boF:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/i;->boF:[Ljava/lang/String;

    return-object v0
.end method

.method public move(I)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getPosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->Ig()V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/i;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
