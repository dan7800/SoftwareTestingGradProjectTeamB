.class final Lcom/android/ex/photo/a/c;
.super Landroid/support/v4/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/f/g",
        "<",
        "Ljava/lang/String;",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aie:Lcom/android/ex/photo/a/b;


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/a/b;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/ex/photo/a/c;->aie:Lcom/android/ex/photo/a/b;

    .line 179
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/f/g;-><init>(I)V

    .line 180
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 177
    check-cast p2, Landroid/support/v4/app/Fragment;

    check-cast p3, Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    if-eq p2, p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/a/c;->aie:Lcom/android/ex/photo/a/b;

    invoke-static {v0}, Lcom/android/ex/photo/a/b;->a(Lcom/android/ex/photo/a/b;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    :cond_1
    return-void
.end method
