.class final Lcom/google/android/gm/preference/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bbu:Lcom/google/android/gm/preference/c;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/c;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/gm/preference/d;->bbu:Lcom/google/android/gm/preference/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/gm/preference/d;->bbu:Lcom/google/android/gm/preference/c;

    iget-object v0, p0, Lcom/google/android/gm/preference/d;->bbu:Lcom/google/android/gm/preference/c;

    invoke-static {v0}, Lcom/google/android/gm/preference/c;->a(Lcom/google/android/gm/preference/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gm/preference/c;->a(Lcom/google/android/gm/preference/c;Ljava/lang/String;Z)V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
