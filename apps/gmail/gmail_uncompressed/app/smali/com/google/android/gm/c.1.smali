.class final Lcom/google/android/gm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b",
        "<",
        "Landroid/accounts/Account;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aWE:Lcom/google/android/gm/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/a;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/gm/c;->aWE:Lcom/google/android/gm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/c;->apply(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method
