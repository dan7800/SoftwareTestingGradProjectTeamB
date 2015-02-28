.class public Lcom/google/api/client/http/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cwH:Lcom/google/api/client/util/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/google/api/client/http/g;

    invoke-direct {v0}, Lcom/google/api/client/http/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/f;-><init>(Lcom/google/api/client/http/g;)V

    .line 131
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/http/g;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lcom/google/api/client/http/g;->cwI:Lcom/google/api/client/util/s;

    invoke-virtual {v0}, Lcom/google/api/client/util/s;->Yu()Lcom/google/api/client/util/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/f;->cwH:Lcom/google/api/client/util/r;

    .line 140
    return-void
.end method


# virtual methods
.method public WX()J
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/client/http/f;->cwH:Lcom/google/api/client/util/r;

    invoke-virtual {v0}, Lcom/google/api/client/util/r;->Yt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final eY(I)Z
    .locals 1

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 161
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/client/http/f;->cwH:Lcom/google/api/client/util/r;

    invoke-virtual {v0}, Lcom/google/api/client/util/r;->reset()V

    .line 170
    return-void
.end method
