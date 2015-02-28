.class public final Lcom/android/mail/browse/f;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field private Qg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 46
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/f;->Qg:Ljava/util/Map;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/mail/browse/f;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final oI()Lcom/android/mail/providers/Attachment;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/mail/browse/f;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/android/mail/browse/f;->Qg:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/mail/providers/Attachment;

    invoke-direct {v0, p0}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    .line 57
    iget-object v2, p0, Lcom/android/mail/browse/f;->Qg:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-object v0
.end method
