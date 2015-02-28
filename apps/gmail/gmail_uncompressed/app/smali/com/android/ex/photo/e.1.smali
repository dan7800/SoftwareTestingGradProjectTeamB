.class public final Lcom/android/ex/photo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/ex/photo/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/ex/photo/b/a;",
            ">;)",
            "Lcom/android/ex/photo/f;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/android/ex/photo/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ex/photo/f;-><init>(Landroid/content/Context;Ljava/lang/Class;B)V

    return-object v0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/ex/photo/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ex/photo/f;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-object v0
.end method
