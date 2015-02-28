.class final Lcom/google/android/gm/preference/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bbY:Lcom/google/android/gm/preference/q;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/q;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/gm/preference/s;->bbY:Lcom/google/android/gm/preference/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/preference/s;->bbY:Lcom/google/android/gm/preference/q;

    invoke-static {v0}, Lcom/google/android/gm/preference/q;->b(Lcom/google/android/gm/preference/q;)V

    .line 278
    return-void
.end method
