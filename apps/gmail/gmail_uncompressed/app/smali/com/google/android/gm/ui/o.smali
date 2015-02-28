.class final Lcom/google/android/gm/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/u",
        "<",
        "Lcom/google/android/gms/people/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bql:Lcom/google/android/gm/ui/GmailDrawerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/gm/ui/o;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/t;)V
    .locals 2

    .prologue
    .line 269
    check-cast p1, Lcom/google/android/gms/people/h;

    iget-object v0, p0, Lcom/google/android/gm/ui/o;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-interface {p1}, Lcom/google/android/gms/people/h;->Sa()Lcom/google/android/gms/people/model/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/model/e;)V

    return-void
.end method
