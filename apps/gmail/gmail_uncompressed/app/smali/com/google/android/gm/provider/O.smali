.class final Lcom/google/android/gm/provider/O;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field final beb:I

.field final bgw:I

.field final synthetic bgx:Lcom/google/android/gm/provider/N;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/N;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/gm/provider/O;->bgx:Lcom/google/android/gm/provider/N;

    .line 82
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 83
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/O;->bgw:I

    .line 84
    const-string v0, "snippet"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/O;->beb:I

    .line 85
    return-void
.end method


# virtual methods
.method public final getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/gm/provider/O;->beb:I

    if-ne p1, v0, :cond_0

    .line 91
    iget v0, p0, Lcom/google/android/gm/provider/O;->bgw:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/O;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/gm/provider/O;->bgx:Lcom/google/android/gm/provider/N;

    invoke-static {v1}, Lcom/google/android/gm/provider/N;->a(Lcom/google/android/gm/provider/N;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
