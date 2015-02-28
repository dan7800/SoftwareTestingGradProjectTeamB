.class final Lcom/google/android/gm/provider/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdk:Lcom/google/android/gm/provider/o;

.field final synthetic bdl:Ljava/util/List;

.field final synthetic bdm:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/o;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/gm/provider/q;->bdk:Lcom/google/android/gm/provider/o;

    iput-object p2, p0, Lcom/google/android/gm/provider/q;->bdl:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gm/provider/q;->bdm:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gm/provider/q;->bdk:Lcom/google/android/gm/provider/o;

    iget-object v1, p0, Lcom/google/android/gm/provider/q;->bdl:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gm/provider/q;->bdm:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/o;->a(Lcom/google/android/gm/provider/o;Ljava/util/List;Ljava/util/Map;)V

    .line 301
    return-void
.end method
