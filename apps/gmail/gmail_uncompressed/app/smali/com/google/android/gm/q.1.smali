.class final Lcom/google/android/gm/q;
.super Lcom/google/android/gm/c/h;
.source "SourceFile"


# instance fields
.field final synthetic aXl:Lcom/google/android/gm/ComposeActivityGmail;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivityGmail;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/gm/q;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    const v3, 0x10001

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/c/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final CA()Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gm/q;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v0, p0}, Lcom/google/android/gm/c/h;->a(Landroid/content/Context;Lcom/google/android/gm/c/h;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method
