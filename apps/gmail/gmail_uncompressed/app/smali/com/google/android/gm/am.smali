.class final Lcom/google/android/gm/am;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final aYQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/google/android/gm/am;->mContext:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcom/google/android/gm/am;->mAccount:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/google/android/gm/am;->aYQ:Ljava/util/Map;

    .line 218
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/gm/am;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/am;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/am;->aYQ:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
