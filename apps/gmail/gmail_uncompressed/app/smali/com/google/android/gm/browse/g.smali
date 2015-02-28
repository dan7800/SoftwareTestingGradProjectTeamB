.class final Lcom/google/android/gm/browse/g;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic bac:Lcom/google/android/gm/browse/f;


# direct methods
.method constructor <init>(Lcom/google/android/gm/browse/f;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/gm/browse/g;->bac:Lcom/google/android/gm/browse/f;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gm/browse/g;->bac:Lcom/google/android/gm/browse/f;

    invoke-virtual {v0}, Lcom/google/android/gm/browse/f;->dismiss()V

    .line 130
    return-void
.end method
