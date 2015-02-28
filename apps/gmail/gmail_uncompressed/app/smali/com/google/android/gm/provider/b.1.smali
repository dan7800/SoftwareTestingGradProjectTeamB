.class final Lcom/google/android/gm/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/c/a",
        "<",
        "Lcom/google/android/gm/provider/Advertisement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic g(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/google/android/gm/provider/Advertisement;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/Advertisement;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "Ad CursorCreator"

    return-object v0
.end method
