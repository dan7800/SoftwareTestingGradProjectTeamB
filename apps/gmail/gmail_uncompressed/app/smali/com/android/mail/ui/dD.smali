.class public Lcom/android/mail/ui/dD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aOL:[Ljava/lang/String;

.field static final synthetic vb:Z


# instance fields
.field private Mf:I

.field private final aOK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/dE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/mail/ui/dD;->vb:Z

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, v0, v2

    const-string v2, "Conversation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Conversation list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Search results list"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Search results conversation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Waiting for sync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Ad"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Warm welcome"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/ui/dD;->aOL:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/dD;->aOK:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    .line 100
    return-void
.end method

.method private AB()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mail/ui/dD;->aOK:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dE;

    .line 126
    sget-boolean v2, Lcom/android/mail/ui/dD;->vb:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    iget v2, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-interface {v0, v2}, Lcom/android/mail/ui/dE;->cI(I)V

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public static dk(I)Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dl(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dm(I)Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dn(I)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static do(I)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dp(I)Z
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    iget v2, p0, Lcom/android/mail/ui/dD;->Mf:I

    if-ne v2, p1, :cond_1

    .line 271
    const-string v2, "ViewMode"

    invoke-static {v2, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "ViewMode"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "ViewMode: debouncing change attempt mode=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v2, v3, v4, v1}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    :goto_0
    return v0

    .line 275
    :cond_0
    const-string v2, "ViewMode"

    const-string v3, "ViewMode: debouncing change attempt mode=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 280
    :cond_1
    const-string v2, "ViewMode"

    invoke-static {v2, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    const-string v2, "ViewMode"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "ViewMode: executing change old=%s new=%s"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 287
    :goto_1
    iput p1, p0, Lcom/android/mail/ui/dD;->Mf:I

    .line 288
    invoke-direct {p0}, Lcom/android/mail/ui/dD;->AB()V

    .line 289
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewMode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/dD;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/mail/a/d;->ba(Ljava/lang/String;)V

    move v0, v1

    .line 290
    goto :goto_0

    .line 284
    :cond_2
    const-string v2, "ViewMode"

    const-string v3, "ViewMode: executing change old=%s new=%s"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public final AA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/android/mail/ui/dD;->aOL:[Ljava/lang/String;

    iget v1, p0, Lcom/android/mail/ui/dD;->Mf:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final AC()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 137
    return-void
.end method

.method public final AD()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 145
    return-void
.end method

.method public final AE()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 154
    return-void
.end method

.method public final AF()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 163
    return-void
.end method

.method public final AG()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 171
    return-void
.end method

.method public final AH()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    .line 178
    return-void
.end method

.method public final AI()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    return v0
.end method

.method public final AJ()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    return v0
.end method

.method public final AK()Z
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    return v0
.end method

.method public final AL()Z
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dn(I)Z

    move-result v0

    return v0
.end method

.method public final AM()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->do(I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/mail/ui/dE;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mail/ui/dD;->aOK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final b(Lcom/android/mail/ui/dE;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mail/ui/dD;->aOK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/mail/ui/dD;->Mf:I

    return v0
.end method

.method public final o(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 236
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v0, "view-mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, v0}, Lcom/android/mail/ui/dD;->dp(I)Z

    goto :goto_0
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "view-mode"

    iget v1, p0, Lcom/android/mail/ui/dD;->Mf:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/mail/ui/dD;->aOL:[Ljava/lang/String;

    iget v2, p0, Lcom/android/mail/ui/dD;->Mf:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
