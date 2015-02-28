.class public final Lcom/google/android/gms/appdatasearch/f;
.super Ljava/lang/Object;


# instance fields
.field private bvk:Z

.field private bvl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Section;",
            ">;"
        }
    .end annotation
.end field

.field private bvn:Z

.field private bvo:I

.field private bvp:I

.field private bvq:Z

.field private bvr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvr:I

    return-void
.end method


# virtual methods
.method public final Jl()Lcom/google/android/gms/appdatasearch/QuerySpecification;
    .locals 10

    new-instance v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/f;->bvk:Z

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/f;->bvl:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    iget-boolean v5, p0, Lcom/google/android/gms/appdatasearch/f;->bvn:Z

    iget v6, p0, Lcom/google/android/gms/appdatasearch/f;->bvo:I

    iget v7, p0, Lcom/google/android/gms/appdatasearch/f;->bvp:I

    iget-boolean v8, p0, Lcom/google/android/gms/appdatasearch/f;->bvq:Z

    iget v9, p0, Lcom/google/android/gms/appdatasearch/f;->bvr:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/appdatasearch/QuerySpecification;-><init>(IZLjava/util/List;Ljava/util/List;ZIIZI)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/appdatasearch/Section;)Lcom/google/android/gms/appdatasearch/f;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/appdatasearch/Section;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/Section;->fI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvq:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvq:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mix literal and semantic sections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvq:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvq:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mix literal and semantic sections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fB(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvl:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvl:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/f;->bvl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
