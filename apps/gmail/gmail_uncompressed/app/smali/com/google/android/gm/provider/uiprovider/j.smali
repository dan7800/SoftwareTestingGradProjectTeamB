.class public final Lcom/google/android/gm/provider/uiprovider/j;
.super Lcom/google/android/gm/provider/uiprovider/i;
.source "SourceFile"


# static fields
.field private static final boG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final boM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aAw:Landroid/net/Uri;

.field private final bdz:Lcom/google/android/gm/provider/MailEngine;

.field private bgH:Ljava/lang/String;

.field private bhV:J

.field private final bhj:I

.field private final bhl:I

.field private final bhm:I

.field private final bhn:I

.field private final boN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final boO:I

.field private final boP:I

.field private final boQ:I

.field private final boR:I

.field private boS:Ljava/lang/String;

.field private final boT:Ljava/lang/String;

.field private final mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 23
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^iim"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boG:Ljava/util/Set;

    .line 29
    const-string v0, "^k"

    const-string v1, "^r"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boH:Ljava/util/Set;

    .line 32
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^iim"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boI:Ljava/util/Set;

    .line 38
    const-string v0, "^k"

    const-string v1, "^b"

    const-string v2, "^^out"

    const-string v3, "^r"

    const-string v4, "^all"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boJ:Ljava/util/Set;

    .line 42
    const-string v0, "^s"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boK:Ljava/util/Set;

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boL:Ljava/util/Set;

    .line 48
    const-string v0, "^s"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/j;->boM:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p4}, Lcom/google/android/gm/provider/uiprovider/i;-><init>(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 82
    iput-object p3, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gx()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boN:Ljava/util/Set;

    .line 87
    iput-object p5, p0, Lcom/google/android/gm/provider/uiprovider/j;->boT:Ljava/lang/String;

    .line 89
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boO:I

    .line 91
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boP:I

    .line 92
    const-string v0, "canonicalName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhj:I

    .line 93
    const-string v0, "numConversations"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhl:I

    .line 94
    const-string v0, "numUnreadConversations"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhm:I

    .line 96
    const-string v0, "numUnseenConversations"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhn:I

    .line 98
    const-string v0, "color"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boQ:I

    .line 99
    const-string v0, "lastMessageTimestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boR:I

    .line 101
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private If()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhj:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    .line 279
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boO:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhV:J

    .line 280
    iget-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhV:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhV:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->i(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->aAw:Landroid/net/Uri;

    .line 290
    :goto_0
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boQ:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boS:Ljava/lang/String;

    .line 292
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->Q(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->aAw:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method protected final Ig()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/google/android/gm/provider/uiprovider/i;->Ig()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public final getInt(I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/j;->If()V

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 200
    :pswitch_0
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "UILabelCursor.getInt(%d): Unexpected column"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_3
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhn:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 114
    :pswitch_4
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhm:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_5
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhl:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 122
    :pswitch_6
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boG:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/16 v0, 0x10

    .line 125
    :cond_1
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boJ:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    or-int/lit16 v0, v0, 0x200

    .line 128
    :cond_2
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boH:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    or-int/lit8 v0, v0, 0x20

    .line 131
    :cond_3
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boK:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    or-int/lit8 v0, v0, 0x40

    .line 134
    :cond_4
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boL:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    or-int/lit16 v0, v0, 0x80

    .line 137
    :cond_5
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boM:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 138
    or-int/lit16 v0, v0, 0x2000

    .line 140
    :cond_6
    sget-object v1, Lcom/google/android/gm/provider/uiprovider/j;->boI:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    or-int/lit16 v0, v0, 0x100

    .line 143
    :cond_7
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    or-int/lit8 v0, v0, 0x8

    .line 146
    :cond_8
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->eg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    or-int/lit16 v0, v0, 0x4000

    .line 149
    :cond_9
    const-string v1, "^io_im"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "^iim"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 151
    :cond_a
    or-int/lit16 v0, v0, 0x400

    .line 153
    :cond_b
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 154
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 156
    :cond_c
    const-string v1, "^all"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 161
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 163
    :cond_d
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->ee(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 164
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 166
    :cond_e
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->ea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "^sq_ig_i_personal"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 172
    :pswitch_7
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->boN:Ljava/util/Set;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->boN:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    .line 174
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v2, v0

    .line 172
    goto :goto_1

    .line 178
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 180
    const/4 v0, 0x4

    .line 182
    :cond_10
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 183
    or-int/lit8 v0, v0, 0x2

    .line 185
    :cond_11
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 193
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gl()I

    move-result v0

    goto/16 :goto_0

    .line 196
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->ey(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 198
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/T;->eA(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final getLong(I)J
    .locals 6

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/j;->If()V

    .line 210
    sparse-switch p1, :sswitch_data_0

    .line 217
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "UILabelCursor.getLong(%d): Unexpected column"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 213
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 215
    :sswitch_1
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boR:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Lcom/google/android/gm/provider/uiprovider/j;->If()V

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 264
    :pswitch_0
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "UILabelCursor.getString(%d): Unexpected column"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->boT:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "defaultParent"

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->boT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_4
    iget v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boP:I

    invoke-super {p0, v0}, Lcom/google/android/gm/provider/uiprovider/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->aAw:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bhV:J

    iget-object v4, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gm/provider/GmailProvider;->c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/j;->boS:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/T;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/j;->bgH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/j;->boS:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/T;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/j;->boT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/j;->boT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
