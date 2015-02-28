.class public Lcom/google/android/gm/provider/GmailProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/gm/provider/aM;


# static fields
.field private static final ajR:Landroid/content/UriMatcher;

.field private static final bdG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final bfC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/uiprovider/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final bfD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static bfE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bfg:Ljava/lang/Integer;

.field private static final bfh:[Ljava/lang/String;

.field private static final bfi:Landroid/net/Uri;

.field private static final bfj:Landroid/net/Uri;

.field private static final bfk:Landroid/net/Uri;

.field private static final bfl:Landroid/net/Uri;

.field private static final bfm:[Ljava/lang/String;

.field private static final bfn:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bfo:I

.field private static final bfp:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bfu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static bfw:I

.field private static bfx:Lcom/google/android/gm/provider/GmailProvider;

.field private static bfy:Ljava/lang/String;

.field private static bfz:Ljava/lang/String;


# instance fields
.field private Sp:I

.field private final bfA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/L;",
            ">;"
        }
    .end annotation
.end field

.field private bfB:[Landroid/accounts/Account;

.field private bfq:Lcom/google/android/gm/provider/Gmail;

.field private bfr:Z

.field private volatile bfs:Z

.field private final bft:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bfv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/J;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x402

    .line 117
    const v0, 0x77ffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfg:Ljava/lang/Integer;

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "^^out"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfh:[Ljava/lang/String;

    .line 156
    const-string v0, "content://com.android.gmail.ui/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfi:Landroid/net/Uri;

    .line 158
    const-string v0, "setting://gmail/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfj:Landroid/net/Uri;

    .line 159
    const-string v0, "auth://gmail/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfk:Landroid/net/Uri;

    .line 161
    const-string v0, "gview://preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfl:Landroid/net/Uri;

    .line 167
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfm:[Ljava/lang/String;

    .line 171
    const-string v0, "null"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfn:Lcom/google/common/collect/ImmutableSet;

    .line 178
    const-string v0, "search"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/gm/provider/GmailProvider;->bfo:I

    .line 212
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    .line 220
    const-string v0, "^u"

    const-string v1, "^t"

    const-string v2, "^o"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfp:Lcom/google/common/collect/ImmutableSet;

    .line 224
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/account"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/labels"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/label/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/conversations/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/conversationsForLabel/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/conversationMessages/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/messageAttachments/#/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/messageAttachment/#/#/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/messages"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/sendNewMessage"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/saveNewMessage"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/expungeMessage"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/message/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/message/save"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/message/send"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/undo"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/refresh"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/refresh/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/conversation/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/conversationInlineResource/#/*"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/search"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/searchConversations"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/recentFolders"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/defaultRecentFolders"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/cookie"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/settings"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/messageserverid/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/ads"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    const-string v1, "com.android.gmail.ui"

    const-string v2, "*/ad/*"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bdG:Ljava/util/Map;

    .line 355
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    .line 3380
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "^t"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^i"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^iim"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^r"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^^out"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^f"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^k"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^s"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^all"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^im"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_personal"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_social"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_promo"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_notification"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^sq_ig_i_group"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfD:Ljava/util/Map;

    .line 3915
    const-string v0, "application/pdf"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "image/tiff"

    const-string v3, "application/msword"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 294
    iput-boolean v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfr:Z

    .line 296
    iput-boolean v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfs:Z

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bft:Ljava/util/Set;

    .line 304
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfv:Ljava/util/Map;

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/provider/GmailProvider;->Sp:I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    .line 3890
    return-void
.end method

.method public static EH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfz:Ljava/lang/String;

    return-object v0
.end method

.method private EI()V
    .locals 1

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bft:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfs:Z

    .line 3800
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    .line 3802
    :cond_0
    return-void
.end method

.method static synthetic EJ()Ljava/util/Map;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    return-object v0
.end method

.method private static N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->dT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 337
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content://com.android.gmail.ui/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    return-object v0
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/label/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static Q(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversationsForLabel"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3573
    sget-object v0, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v1, "notifyAccountChanged"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3574
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3575
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3577
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    .line 3578
    return-void
.end method

.method static S(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3592
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfx:Lcom/google/android/gm/provider/GmailProvider;

    .line 3594
    if-eqz v1, :cond_1

    .line 3595
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, v1, Lcom/google/android/gm/provider/GmailProvider;->bfv:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gm/provider/GmailProvider;->bfv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/J;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gm/provider/J;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/google/android/gm/provider/J;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gm/provider/GmailProvider;->bfv:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/J;->AP()V

    .line 3597
    :cond_1
    return-void

    .line 3595
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static T(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3743
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3744
    const/4 v0, 0x0

    .line 3751
    :goto_0
    return-object v0

    .line 3747
    :cond_0
    const-class v1, Lcom/google/android/gm/provider/GmailProvider;

    monitor-enter v1

    .line 3748
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfu:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3749
    invoke-static {p0}, Lcom/google/android/gm/provider/T;->cc(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfu:Ljava/util/Map;

    .line 3751
    :cond_1
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3752
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1213
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1214
    new-instance v1, Landroid/content/ContentValues;

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1217
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1218
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1225
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1226
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1227
    const-string v2, "Gmail"

    const-string v3, "Updating last touched for labels: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gm/provider/ad;->l(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1231
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/gm/provider/MailEngine;->e(Landroid/content/ContentValues;)I

    move-result v0

    .line 1232
    iget-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1233
    return v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/U;Lcom/google/android/gm/provider/L;)I
    .locals 30

    .prologue
    .line 1383
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CW()I

    move-result v4

    if-nez v4, :cond_0

    .line 1384
    const/4 v4, 0x0

    .line 1811
    :goto_0
    return v4

    .line 1386
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    .line 1390
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    move-object/from16 v0, p1

    array-length v6, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, p1, v4

    .line 1398
    sget-object v8, Lcom/google/android/gm/provider/Gmail;->aCx:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v5, v8, v7, v0}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    .line 1400
    if-eqz v7, :cond_1

    .line 1401
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1406
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/google/android/gm/ConversationInfo;

    .line 1407
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->CD()J

    move-result-wide v18

    .line 1408
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->CE()J

    move-result-wide v20

    .line 1409
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->CF()J

    move-result-wide v8

    .line 1410
    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->zC()J

    move-result-wide v6

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Lcom/google/android/gm/provider/MailEngine;->X(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    .line 1421
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v12

    .line 1424
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_6

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-boolean v10, v4, Lcom/google/android/gm/V;->aKh:Z

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eq v10, v4, :cond_6

    const/4 v4, 0x1

    move v11, v4

    .line 1427
    :goto_2
    if-eqz v11, :cond_8

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    move-object v10, v4

    .line 1431
    :goto_3
    if-eqz v11, :cond_a

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    .line 1441
    :goto_4
    if-eqz p4, :cond_4

    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    .line 1446
    iget-object v12, v10, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v12}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    .line 1448
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1449
    const-string v23, "Gmail"

    const-string v24, "Move operation to a label we already have. Removing it from the undo operation."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1451
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/google/android/gm/provider/L;->remove(Ljava/lang/String;)V

    .line 1455
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->Fw()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 1458
    if-eqz v11, :cond_b

    if-eqz v10, :cond_b

    if-eqz v4, :cond_b

    .line 1460
    sget-object v11, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    iget-object v4, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    iget-object v10, v10, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v10}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1465
    const-string v4, "Gmail"

    const-string v10, "Moving from section to non-inbox label. Remove ^i/^iim."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1468
    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "^i"

    aput-object v11, v10, v4

    const/4 v4, 0x1

    const-string v11, "^iim"

    aput-object v11, v10, v4

    .line 1470
    array-length v11, v10

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_b

    aget-object v12, v10, v4

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v12

    .line 1476
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gm/U;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1477
    if-eqz p4, :cond_5

    .line 1478
    const/16 v23, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1472
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1424
    :cond_6
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_2

    .line 1427
    :cond_7
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    move-object v10, v4

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x0

    move-object v10, v4

    goto/16 :goto_3

    .line 1431
    :cond_9
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1487
    :cond_b
    const-string v4, "^i"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->dA(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1488
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1490
    sget-object v11, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->dA(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1492
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/T;

    .line 1494
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v11}, Lcom/google/android/gm/U;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1495
    if-eqz p4, :cond_c

    .line 1496
    const/4 v11, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v11}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_6

    .line 1503
    :cond_d
    const-string v4, "^i"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->dA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1504
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1505
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1506
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1507
    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1511
    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1512
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v4

    .line 1515
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    .line 1516
    iget-object v12, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v12}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    .line 1518
    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    iget-boolean v0, v4, Lcom/google/android/gm/V;->aKh:Z

    move/from16 v23, v0

    if-nez v23, :cond_11

    .line 1520
    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1521
    :cond_11
    sget-object v23, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_10

    .line 1524
    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1528
    :cond_12
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1530
    const-string v4, "Gmail"

    const-string v10, "Removing all sections, so also remove ^i/^iim"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1532
    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "^i"

    aput-object v11, v10, v4

    const/4 v4, 0x1

    const-string v11, "^iim"

    aput-object v11, v10, v4

    .line 1534
    array-length v11, v10

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v11, :cond_14

    aget-object v12, v10, v4

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v12

    .line 1540
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gm/U;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1541
    if-eqz p4, :cond_13

    .line 1542
    const/16 v23, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1536
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1554
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v4

    .line 1557
    const/4 v11, 0x0

    .line 1559
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    .line 1560
    iget-object v10, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v10}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 1562
    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_15

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1568
    :goto_a
    if-eqz v10, :cond_17

    .line 1569
    const-string v4, "Gmail"

    const-string v11, "Moving to an inbox section, removing other sections"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v11, v12}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1571
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_16
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1572
    sget-object v12, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v0, v4}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v4

    .line 1579
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v12}, Lcom/google/android/gm/U;->a(Lcom/google/android/gm/provider/T;Z)V

    .line 1580
    if-eqz p4, :cond_16

    .line 1581
    const/4 v12, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v12}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_b

    .line 1592
    :cond_17
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->Fv()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "^t"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "^t"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->dA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1595
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1596
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1597
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1598
    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1602
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v10

    .line 1605
    const/4 v4, 0x0

    .line 1606
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v10, v4

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    .line 1607
    iget-object v0, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v23

    .line 1608
    sget-object v24, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3c

    .line 1609
    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_1a

    .line 1610
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1612
    :cond_1a
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1613
    const-string v4, "^sq_ig_i_personal"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1614
    const/4 v10, 0x1

    move v4, v10

    :goto_e
    move v10, v4

    .line 1618
    goto :goto_d

    .line 1621
    :cond_1b
    if-eqz v10, :cond_20

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1622
    const-string v4, "Gmail"

    const-string v10, "Trying to remove Primary from starred message that still has other sections. Keeping Primary."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1625
    const-string v4, "^sq_ig_i_personal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->remove(Ljava/lang/String;)V

    .line 1626
    if-eqz p4, :cond_1c

    .line 1627
    const-string v4, "^sq_ig_i_personal"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/L;->remove(Ljava/lang/String;)V

    .line 1630
    :cond_1c
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1631
    :cond_1d
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1632
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1633
    const-string v11, "^sq_ig_i_personal"

    const-string v12, "canonicalName"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v12, "add_label_action"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1637
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 1641
    :cond_1e
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1643
    :cond_1f
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1644
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1645
    const-string v11, "^sq_ig_i_personal"

    const-string v12, "canonicalName"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v12, "add_label_action"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1649
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1659
    :cond_20
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->Fv()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "^t"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/gm/U;->dz(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1661
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1662
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_21
    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1663
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1664
    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1668
    :cond_22
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v4

    .line 1671
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_23
    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    .line 1672
    iget-object v12, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v12}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    .line 1674
    sget-object v23, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 1675
    iget-boolean v4, v4, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v4, :cond_24

    .line 1676
    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1678
    :cond_24
    invoke-interface {v10, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1683
    :cond_25
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1686
    const-string v4, "^sq_ig_i_personal"

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1688
    const-string v4, "Gmail"

    const-string v10, "Adding star, so also adding primary"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1690
    const-string v10, "^sq_ig_i_personal"

    const/4 v11, 0x1

    sget-object v12, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gm/provider/MailEngine;->a(JJLjava/lang/String;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 1760
    :cond_26
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->CZ()Ljava/util/List;

    move-result-object v11

    .line 1762
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 1763
    const/4 v4, 0x0

    move v10, v4

    :goto_13
    if-ge v10, v12, :cond_3

    .line 1764
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-object v8, v4, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    .line 1766
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/V;

    iget-boolean v9, v4, Lcom/google/android/gm/V;->aKh:Z

    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual {v8}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^k"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "^g"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_27
    if-nez v9, :cond_31

    const/4 v4, 0x1

    :goto_14
    const-string v24, "^i"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-string v4, "^p"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v9, :cond_29

    const-string v4, "^i"

    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^s"

    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    const-string v4, "^i"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v9, :cond_2a

    const-string v4, "^s"

    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^k"

    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string v4, "^^important"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-nez v9, :cond_2c

    :cond_2b
    const-string v4, "^^unimportant"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    if-nez v9, :cond_32

    :cond_2c
    const/4 v4, 0x1

    :goto_15
    const-string v24, "^^unimportant"

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d

    if-nez v9, :cond_2e

    :cond_2d
    const-string v24, "^^important"

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    if-nez v9, :cond_33

    :cond_2e
    const/4 v8, 0x1

    :goto_16
    if-eqz v4, :cond_34

    const-string v4, "^im"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^io_im"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^imi"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^imn"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^^unimportant"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^io_ns"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^i"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "^iim"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    :goto_17
    const-string v4, "^i"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->uE()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "^i"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v8, "^iim"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :cond_30
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v24

    .line 1769
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, v24

    new-array v8, v0, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1771
    const/4 v8, 0x0

    move v9, v8

    :goto_18
    move/from16 v0, v24

    if-ge v9, v0, :cond_36

    .line 1772
    aget-object v25, v4, v9

    .line 1773
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1775
    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_35

    .line 1776
    new-instance v26, Landroid/content/ContentValues;

    const/16 v27, 0x5

    invoke-direct/range {v26 .. v27}, Landroid/content/ContentValues;-><init>(I)V

    .line 1777
    const-string v27, "canonicalName"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string v25, "_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1779
    const-string v25, "messageId"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1780
    const-string v25, "conversation"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1781
    const-string v25, "add_label_action"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1782
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :goto_19
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_18

    .line 1766
    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_14

    :cond_32
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_33
    const/4 v8, 0x0

    goto/16 :goto_16

    :cond_34
    if-eqz v8, :cond_2f

    const-string v4, "^imn"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^im"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^io_im"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^iim"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^imi"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^^important"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "^io_ns"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 1784
    :cond_35
    new-instance v26, Landroid/content/ContentValues;

    const/16 v27, 0x4

    invoke-direct/range {v26 .. v27}, Landroid/content/ContentValues;-><init>(I)V

    .line 1785
    const-string v27, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1786
    const-string v27, "canonicalName"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v25, "maxMessageId"

    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->CF()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1788
    const-string v25, "add_label_action"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1789
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1763
    :cond_36
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_13

    .line 1796
    :cond_37
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/U;->Da()Z

    move-result v6

    .line 1800
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_38

    .line 1801
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/GmailProvider;->bfq:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    if-nez v6, :cond_3a

    const/4 v5, 0x1

    :goto_1a
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v4, v5}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;[Landroid/content/ContentValues;Z)V

    .line 1805
    :cond_38
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_39

    .line 1806
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/GmailProvider;->bfq:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    if-nez v6, :cond_3b

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v4, v5}, Lcom/google/android/gm/provider/Gmail;->b(Ljava/lang/String;[Landroid/content/ContentValues;Z)V

    .line 1811
    :cond_39
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto/16 :goto_0

    .line 1801
    :cond_3a
    const/4 v5, 0x0

    goto :goto_1a

    .line 1806
    :cond_3b
    const/4 v5, 0x0

    goto :goto_1b

    :cond_3c
    move v4, v10

    goto/16 :goto_e

    :cond_3d
    move-object v10, v11

    goto/16 :goto_a
.end method

.method private a(Lcom/google/android/gm/provider/MailEngine;JZLandroid/content/ContentValues;Landroid/os/Bundle;)J
    .locals 8

    .prologue
    .line 1947
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1948
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1950
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v0, p1

    move-wide v1, p2

    move v3, p4

    move-object v7, p6

    .line 1952
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/MailEngine;->a(JZJLandroid/content/ContentValues;Landroid/os/Bundle;)J

    move-result-wide v0

    .line 1956
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->ax(J)Lcom/google/android/gm/provider/bm;

    move-result-object v2

    .line 1958
    if-eqz v2, :cond_0

    .line 1959
    iget-object v3, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, v2, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v4, v6, v7}, Lcom/google/android/gm/provider/GmailProvider;->k(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1965
    :cond_0
    return-wide v0
.end method

.method public static a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 2552
    if-nez p3, :cond_0

    .line 2553
    const/4 v0, 0x0

    .line 2556
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/uiprovider/j;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/uiprovider/j;-><init>(Landroid/database/Cursor;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JJJ[Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 2710
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v11

    new-instance v5, Lcom/google/android/gm/provider/K;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gm/provider/K;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;J[Ljava/lang/String;I)V

    invoke-static/range {p1 .. p3}, Lcom/google/android/gm/provider/GmailProvider;->m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/uiprovider/b;->r(Landroid/database/Cursor;)V

    .line 2713
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 2714
    const-string v6, "Gmail"

    const-string v7, "adding attachment to cursor %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2715
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v18

    .line 2716
    iget-object v14, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 2717
    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v15

    .line 2719
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v19, v0

    const/4 v6, 0x0

    move/from16 v16, v6

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v6, p8, v16

    .line 2720
    const-string v7, "uri"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 2721
    invoke-static/range {v7 .. v15}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2719
    :cond_1
    :goto_1
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    goto :goto_0

    .line 2724
    :cond_2
    const-string v7, "_display_name"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2725
    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2726
    :cond_3
    const-string v7, "_size"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2727
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2728
    :cond_4
    const-string v7, "contentType"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2729
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2730
    :cond_5
    const-string v7, "state"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2731
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 2732
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2734
    :cond_6
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->state:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2736
    :cond_7
    const-string v7, "destination"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2737
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2738
    :cond_8
    const-string v7, "downloadedSize"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2739
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayO:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2740
    :cond_9
    const-string v7, "contentUri"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2742
    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uv()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2746
    iget-object v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2753
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2746
    :cond_a
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_2

    .line 2750
    :cond_b
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v8, p6

    move-object v10, v14

    invoke-static/range {v7 .. v12}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    .line 2754
    :cond_c
    const-string v7, "thumbnailUri"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2755
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2, v4, v6}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLcom/google/android/gm/provider/uiprovider/GmailAttachment;I)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2757
    :cond_d
    const-string v7, "previewIntentUri"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2759
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gmail_gview_supported_types"

    invoke-static {v6, v7}, Lcom/google/android/gsf/c;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string v7, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    sput-object v6, Lcom/google/android/gm/provider/GmailProvider;->bfE:Ljava/util/Set;

    :cond_e
    sget-object v6, Lcom/google/android/gm/provider/GmailProvider;->bfE:Ljava/util/Set;

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 2760
    if-eqz v6, :cond_f

    .line 2761
    sget-object v6, Lcom/google/android/gm/provider/GmailProvider;->bfl:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "account"

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "serverMessageId"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "attId"

    invoke-virtual {v6, v7, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "mimeType"

    invoke-virtual {v6, v7, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 2770
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2772
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2774
    :cond_10
    const-string v7, "providerData"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2775
    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->HY()V

    .line 2776
    iget-object v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayS:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2777
    :cond_11
    const-string v7, "supportsDownloadAgain"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2779
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2780
    :cond_12
    const-string v7, "type"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2781
    iget v6, v4, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 2788
    :cond_13
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_14

    .line 2790
    invoke-static/range {p1 .. p3}, Lcom/google/android/gm/provider/GmailProvider;->m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v4

    .line 2792
    invoke-virtual {v4}, Lcom/google/android/gm/provider/uiprovider/b;->HV()V

    .line 2795
    :cond_14
    return-object v5
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 3057
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 3198
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 3200
    invoke-static {p8}, Lcom/android/mail/providers/H;->q([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3203
    if-eqz p10, :cond_1

    const/4 v2, 0x0

    .line 3207
    :goto_0
    if-eqz p11, :cond_2

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3208
    invoke-static {p7}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3213
    :goto_1
    invoke-static {p3, v1}, Lcom/google/android/gm/ay;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3214
    const/4 v4, 0x0

    move-object/from16 v3, p9

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3217
    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_2
    return-object v0

    .line 3203
    :cond_1
    sget-object v2, Lcom/google/android/gm/provider/GmailProvider;->bfm:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, p7

    .line 3210
    goto :goto_1

    .line 3217
    :cond_3
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/gm/provider/uiprovider/g;

    invoke-direct {v0, v1, p1, v2, v6}, Lcom/google/android/gm/provider/uiprovider/g;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p10, :cond_0

    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v1

    invoke-static {p5, p6, p7, p3}, Lcom/google/android/gm/provider/GmailProvider;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/provider/uiprovider/a;->a(Ljava/lang/String;Lcom/google/android/gm/provider/uiprovider/g;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2562
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 2564
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->d([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJJ)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageAttachments"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "serverMessageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageAttachment"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p7

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 444
    const-string v1, "serverMessageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 446
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 450
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 452
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    const-string v1, "Gmail"

    const-string v2, "Constructed message attachment uri %s with empty partId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 455
    :cond_1
    return-object v0

    .line 438
    :cond_2
    const-string v0, "empty"

    goto :goto_0
.end method

.method private static final a(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/provider/D;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2468
    const/4 v0, 0x0

    .line 2470
    if-eqz p4, :cond_0

    .line 2471
    invoke-static {p0, p3}, Lcom/google/android/gm/provider/GmailProvider;->T(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2474
    :cond_0
    if-eqz p1, :cond_2

    .line 2476
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/google/android/gm/provider/D;->ej(Ljava/lang/String;)J

    move-result-wide v2

    .line 2477
    if-nez v0, :cond_1

    .line 2478
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gm/provider/D;->ag(J)Ljava/lang/String;

    move-result-object v0

    .line 2480
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2499
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 2488
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v1

    .line 2489
    if-eqz v1, :cond_4

    .line 2490
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v2

    .line 2491
    if-nez v0, :cond_3

    .line 2492
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2494
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 2497
    :cond_4
    const-string v1, "Gmail"

    const-string v2, "Couldn\'t find label: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Lcom/google/android/gm/provider/ad;->eD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2498
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2499
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Z)Lcom/google/android/gm/provider/L;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/gm/provider/L;"
        }
    .end annotation

    .prologue
    .line 1280
    new-instance v1, Lcom/google/android/gm/provider/L;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V

    .line 1284
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1285
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1286
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1289
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1290
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v3, v0

    .line 1291
    :goto_1
    if-nez p4, :cond_1

    .line 1292
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1295
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    .line 1300
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1301
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1302
    if-nez v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 1303
    :goto_3
    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->et(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1304
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v2

    .line 1305
    if-eqz v2, :cond_6

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_2

    .line 1290
    :cond_4
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 1302
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 1308
    :cond_6
    const-string v2, "Gmail"

    const-string v7, "Couldn\'t create label for canonical name: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v2, v7, v8}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1311
    :cond_7
    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->et(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1312
    const-string v2, "Gmail"

    const-string v7, "Couldn\'t create label operation for canonical name: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v2, v7, v8}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1317
    :cond_8
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    move v2, v0

    .line 1318
    :goto_4
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1319
    if-nez v2, :cond_a

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    const/4 v3, 0x1

    .line 1320
    :goto_6
    if-eqz v3, :cond_e

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->et(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v0}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v3

    .line 1322
    if-eqz v3, :cond_d

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_5

    .line 1317
    :cond_b
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    .line 1319
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 1325
    :cond_d
    const-string v3, "Gmail"

    const-string v6, "Couldn\'t create label for canonical name: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v3, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 1328
    :cond_e
    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->et(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1329
    const-string v3, "Gmail"

    const-string v6, "Couldn\'t create label operation for canonical name: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v3, v6, v7}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 1333
    :cond_f
    return-object v1
.end method

.method public static a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
    .locals 1

    .prologue
    .line 2669
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    .line 2670
    if-eqz v0, :cond_0

    .line 2671
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gm/provider/uiprovider/b;->aV(J)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    .line 2672
    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {v0, p5}, Lcom/google/android/gm/provider/uiprovider/f;->fq(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v0

    .line 2676
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 482
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 487
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no canonicalName or query specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2644
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    .line 2645
    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gm/provider/uiprovider/b;->aV(J)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    .line 2647
    if-eqz v0, :cond_0

    .line 2648
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/f;->Ic()Ljava/util/List;

    move-result-object v0

    .line 2651
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JJLjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2656
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    .line 2657
    if-eqz v0, :cond_0

    .line 2658
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gm/provider/uiprovider/b;->aV(J)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    .line 2659
    if-eqz v0, :cond_0

    .line 2660
    invoke-virtual {v0, p5}, Lcom/google/android/gm/provider/uiprovider/f;->L(Ljava/util/List;)V

    .line 2661
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/f;->Ic()Ljava/util/List;

    move-result-object v0

    .line 2664
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Landroid/support/v4/f/f;Ljava/util/Map;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;",
            "Landroid/support/v4/f/f",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3318
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3319
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    .line 3320
    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v6

    .line 3321
    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 3322
    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail;->eb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    .line 3324
    :cond_1
    const/4 v1, 0x0

    .line 3327
    if-eqz p2, :cond_2

    .line 3328
    invoke-virtual {p2, v6, v7}, Landroid/support/v4/f/f;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 3330
    :cond_2
    if-nez v1, :cond_8

    .line 3335
    if-eqz p3, :cond_6

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3336
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3337
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 3338
    const/4 v5, 0x1

    aget-object v1, v1, v5

    .line 3348
    :cond_3
    :goto_2
    long-to-int v5, v6

    .line 3350
    new-instance v8, Lcom/android/mail/providers/m;

    invoke-direct {v8}, Lcom/android/mail/providers/m;-><init>()V

    .line 3351
    invoke-virtual {v8, v5}, Lcom/android/mail/providers/m;->cC(I)Lcom/android/mail/providers/m;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mail/providers/m;->bP(Ljava/lang/String;)Lcom/android/mail/providers/m;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mail/providers/m;->s(Landroid/net/Uri;)Lcom/android/mail/providers/m;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mail/providers/m;->bQ(Ljava/lang/String;)Lcom/android/mail/providers/m;

    move-result-object v8

    int-to-long v10, v5

    invoke-static {p0, v10, v11}, Lcom/google/android/gm/provider/GmailProvider;->i(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/mail/providers/m;->t(Landroid/net/Uri;)Lcom/android/mail/providers/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/providers/m;->ve()Lcom/android/mail/providers/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/providers/m;->vf()Lcom/android/mail/providers/m;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->ey(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/mail/providers/m;->cD(I)Lcom/android/mail/providers/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/m;->bR(Ljava/lang/String;)Lcom/android/mail/providers/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/m;->bS(Ljava/lang/String;)Lcom/android/mail/providers/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/m;->vd()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 3363
    if-eqz p2, :cond_4

    .line 3364
    invoke-virtual {p2, v6, v7, v0}, Landroid/support/v4/f/f;->put(JLjava/lang/Object;)V

    .line 3367
    :cond_4
    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3322
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 3340
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->EV()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3342
    if-eqz p3, :cond_3

    .line 3343
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-interface {p3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3369
    :cond_7
    return-object v3

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;Lcom/android/mail/i/g;Lcom/google/android/gm/persistence/b;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailEngine;",
            "Lcom/android/mail/i/g;",
            "Lcom/google/android/gm/persistence/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2218
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2220
    const-string v0, "_id"

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    const-string v0, "name"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    const-string v0, "senderName"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    const-string v0, "accountManagerName"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    invoke-static {p0}, Lcom/google/android/gm/i;->aT(Landroid/content/Context;)Lcom/google/android/gm/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/i;->dr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2225
    const-string v0, "accountId"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    const-string v0, "type"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    const-string v0, "providerVersion"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    const-string v0, "accountUri"

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    const-string v0, "capabilities"

    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfg:Ljava/lang/Integer;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->ep(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2232
    const-string v1, "folderListUri"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    const-string v1, "fullFolderListUri"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    const-string v1, "allFolderListUri"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    const-string v0, "searchUri"

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->eq(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/c/b;->H(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 2240
    if-eqz v0, :cond_a

    .line 2241
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 2243
    invoke-virtual {v0}, Lcom/android/mail/providers/ReplyFromAccount;->vG()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2245
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    :goto_1
    const-string v1, "accountFromAddresses"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    const-string v0, "expungeMessageUri"

    const-string v1, "expungeMessage"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    const-string v0, "undoUri"

    const-string v1, "undo"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    const-string v0, "accountSettingsIntentUri"

    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfj:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "account"

    invoke-virtual {v1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    const-string v0, "helpIntentUri"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "gmail_context_sensitive_help_url"

    const-string v5, "http://support.google.com/mail"

    invoke-static {v1, v4, v5}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    const-string v0, "sendFeedbackIntentUri"

    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfj:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "account"

    invoke-virtual {v1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "reporting_problem"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    const-string v0, "reauthenticationUri"

    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfk:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "account"

    invoke-virtual {v1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const/4 v0, 0x0

    .line 2261
    if-eqz p3, :cond_e

    .line 2262
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2263
    const/4 v0, 0x4

    .line 2265
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2266
    or-int/lit8 v0, v0, 0x2

    .line 2268
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Gk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2269
    or-int/lit8 v0, v0, 0x1

    .line 2274
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Ee()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p3}, Lcom/google/android/gm/provider/GmailProvider;->b(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_4
    const/4 v1, 0x1

    .line 2276
    :goto_2
    if-eqz v1, :cond_5

    .line 2277
    or-int/lit8 v0, v0, 0x8

    .line 2279
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Ef()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2280
    or-int/lit8 v0, v0, 0x20

    .line 2282
    :cond_6
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->FQ()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2284
    :cond_7
    sget-object v1, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v4, "master sync=%b, engine sync=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->FQ()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2287
    or-int/lit8 v0, v0, 0x10

    .line 2289
    :cond_8
    const-string v4, "importance_markers_enabled"

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Gt()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    const-string v4, "show_chevrons_enabled"

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Gu()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    const-string v1, "welcome_tour_shown_version"

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/provider/ae;->FG()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    :goto_5
    const-string v1, "syncStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    const-string v0, "composeUri"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "gmail2from://gmail-ls/account/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    const-string v0, "mimeType"

    const-string v1, "application/gmail-ls"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    const-string v0, "recentFolderListUri"

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    const-string v0, "defaultRecentFolderListUri"

    const-string v1, "defaultRecentFolders"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    const-string v0, "manualSyncUri"

    const-string v1, "refresh"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    const-string v0, "viewProxyUri"

    const-string v1, "content://com.android.gmail.ui/proxy"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const-string v0, "accountCookieUri"

    const-string v1, "cookie"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    const-string v0, "color"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    const-string v0, "updateSettingsUri"

    const-string v1, "settings"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    const-string v0, "enableMessageTransforms"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "gmail-msg-transforms-enabled"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    const-string v0, "syncAuthority"

    const-string v1, "gmail-ls"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    const-string v0, "quickResponseUri"

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    const-string v0, "settingsFragmentClass"

    const-class v1, Lcom/google/android/gm/preference/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    invoke-virtual {p5, p0, v3}, Lcom/google/android/gm/persistence/b;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2322
    const-string v1, "signature"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    :cond_9
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    const-string v0, "auto_advance"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tP()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    invoke-virtual {p4}, Lcom/android/mail/i/g;->tS()I

    move-result v0

    .line 2328
    const-string v1, "snap_headers"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    const-string v1, "reply_behavior"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tz()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    const-string v1, "conversation_list_icon"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tI()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    const-string v1, "confirm_delete"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tM()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    const-string v1, "confirm_archive"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tN()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    const-string v1, "confirm_send"

    invoke-virtual {p4}, Lcom/android/mail/i/g;->tO()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-static {p0, v3}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2342
    const-string v1, "default_inbox"

    invoke-static {p2, v0}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    invoke-static {p0, v3}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2346
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Lcom/google/android/gm/provider/MailEngine;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v0

    .line 2347
    :goto_b
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p0, v0, p2, v1, v3}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 2349
    const-string v1, "default_inbox_name"

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    const-string v1, "force_reply_from_default"

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/c/b;->I(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string v0, "max_attachment_size"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gmail_max_attachment_size_bytes"

    const/high16 v4, 0x1400000

    invoke-static {v1, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    const-string v0, "swipe"

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Lcom/android/mail/i/g;->bb(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    const-string v0, "setup_intent_uri"

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    invoke-virtual {p4}, Lcom/android/mail/i/g;->tR()Z

    move-result v0

    .line 2362
    if-eqz v0, :cond_17

    .line 2363
    invoke-virtual {p4}, Lcom/android/mail/i/g;->tQ()Z

    move-result v0

    .line 2365
    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 2370
    :goto_d
    const-string v1, "conversation_view_mode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    const-string v0, "veiled_address_pattern"

    invoke-static {p0}, Lcom/google/android/gm/persistence/b;->bA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    const-string v0, "move_to_inbox"

    const-string v1, "^i"

    invoke-static {p2, v1}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    if-eqz p3, :cond_19

    .line 2379
    const-string v1, "show_images"

    iget-object v0, p3, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->FC()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    :goto_f
    const-string v0, "securityHold"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    const-string v0, "accountSecurityUri"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    return-object v2

    .line 2247
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2274
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 2289
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2291
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 2296
    :cond_e
    const-string v1, "importance_markers_enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    const-string v1, "show_chevrons_enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    const-string v1, "welcome_tour_shown_version"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2329
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2332
    :cond_10
    const/4 v0, 0x2

    goto/16 :goto_7

    .line 2334
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 2336
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 2338
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 2346
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 2350
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 2365
    :cond_16
    const/4 v0, 0x1

    goto/16 :goto_d

    .line 2368
    :cond_17
    const/4 v0, -0x1

    goto/16 :goto_d

    .line 2379
    :cond_18
    const/4 v0, 0x1

    goto :goto_e

    .line 2383
    :cond_19
    const-string v0, "show_images"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method private a(ILcom/google/android/gm/provider/L;)V
    .locals 6

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    monitor-enter v1

    .line 1129
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/GmailProvider;->Sp:I

    if-le p1, v0, :cond_0

    .line 1130
    const-string v0, "Gmail"

    const-string v2, "About to clean %d undo operations. sequenceNum:%d mLastSequence: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/gm/provider/GmailProvider;->Sp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1134
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1135
    iput p1, p0, Lcom/google/android/gm/provider/GmailProvider;->Sp:I

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/provider/D;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3705
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3706
    if-eqz v0, :cond_0

    .line 3707
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gm/provider/D;->af(J)Ljava/lang/String;

    move-result-object v0

    .line 3711
    if-eqz v0, :cond_0

    .line 3712
    invoke-static {p2, v0}, Lcom/google/android/gm/provider/GmailProvider;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3715
    invoke-virtual {v1, v0, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 3717
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3718
    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->ep(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3722
    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3724
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 3806
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gm/provider/GmailProvider;->k(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3809
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJJLjava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3633
    invoke-static/range {p1 .. p7}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3636
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3637
    const/4 v9, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v1 .. v9}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 3640
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;[Ljava/lang/String;Landroid/database/MatrixCursor$RowBuilder;)V
    .locals 6

    .prologue
    .line 2192
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v5

    .line 2197
    invoke-static {p0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 2198
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;Lcom/android/mail/i/g;Lcom/google/android/gm/persistence/b;)Ljava/util/Map;

    move-result-object v1

    .line 2201
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    .line 2202
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2203
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2208
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3729
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3730
    invoke-static {p1, v0}, Lcom/google/android/gm/provider/GmailProvider;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3731
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 3733
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3734
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->ep(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3738
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3740
    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3621
    if-eqz p2, :cond_0

    .line 3622
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->eq(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3627
    :goto_0
    return-void

    .line 3624
    :cond_0
    invoke-static {p1, p3}, Lcom/google/android/gm/provider/GmailProvider;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3625
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1242
    const-string v0, "Gmail"

    const-string v1, "GmailProvider.populateRecentLabels()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1244
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "^t"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "^f"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "^r"

    aput-object v2, v1, v0

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1249
    new-instance v4, Landroid/content/ContentValues;

    array-length v0, v1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1250
    array-length v5, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v1, v0

    .line 1251
    const-string v7, "Gmail"

    const-string v8, "Marking %s with %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1252
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {p1, v4}, Lcom/google/android/gm/provider/MailEngine;->e(Landroid/content/ContentValues;)I

    .line 1255
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1256
    return-void
.end method

.method static a(Ljava/lang/String;JJLjava/lang/String;IILjava/lang/String;)V
    .locals 7

    .prologue
    .line 3645
    invoke-static/range {p0 .. p5}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    const-string v1, "Gmail"

    const-string v2, "couldn\'t find attachment %d %s in update AttachmentState.  attachments: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3647
    :goto_1
    return-void

    .line 3645
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x194

    if-ne p7, v1, :cond_2

    iget v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Gmail"

    const-string v1, "Attempt to make successful download a failure"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    invoke-static {p7}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ea(I)I

    move-result v1

    const-string v2, "Gmail"

    const-string v3, "Updating attachment state %d/%d/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    iput p6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->boq:J

    iput p7, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bop:I

    iget v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {p8}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v0, p8}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->aw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gm/provider/GmailProvider;)[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfB:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/GmailProvider;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfB:[Landroid/accounts/Account;

    return-object p1
.end method

.method public static b(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
    .locals 1

    .prologue
    .line 2681
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v0

    .line 2682
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/uiprovider/a;->aS(J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    .line 2684
    if-eqz v0, :cond_0

    .line 2685
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gm/provider/uiprovider/b;->aU(J)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    .line 2686
    if-eqz v0, :cond_0

    .line 2687
    invoke-virtual {v0, p5}, Lcom/google/android/gm/provider/uiprovider/f;->fq(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v0

    .line 2690
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/GmailProvider;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bft:Ljava/util/Set;

    return-object v0
.end method

.method private static b(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2403
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v2

    .line 2405
    sget-object v3, Lcom/google/android/gm/provider/GmailProvider;->bfh:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 2406
    invoke-virtual {v2, v5}, Lcom/google/android/gm/provider/D;->ek(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2410
    :goto_1
    return v0

    .line 2405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2410
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3526
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 3527
    invoke-static {p2}, Lcom/android/mail/providers/H;->p([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3533
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Cm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3543
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/bG;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3546
    :goto_1
    new-instance v4, Lcom/android/mail/utils/G;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 3547
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 3548
    array-length v6, v3

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v3, v2

    .line 3549
    const-string v8, "cookie"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3550
    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3548
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    const-string v4, "Gmail"

    const-string v5, "IOException retrieving auth token"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 3540
    goto :goto_0

    .line 3537
    :catch_1
    move-exception v0

    .line 3538
    const-string v4, "Gmail"

    const-string v5, "AuthenticationException retrieving auth token"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3543
    goto :goto_1

    .line 3552
    :cond_1
    invoke-virtual {v5, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 3555
    :cond_2
    return-object v4
.end method

.method private c([Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailEngine;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2148
    invoke-static {p1}, Lcom/android/mail/providers/H;->n([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2150
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2151
    const-string v5, "accounts_loaded"

    iget-boolean v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfs:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2153
    new-instance v5, Lcom/android/mail/utils/H;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v3, v0, v4}, Lcom/android/mail/utils/H;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine;

    .line 2156
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 2157
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v7

    .line 2158
    invoke-static {v7}, Lcom/google/android/gm/provider/GmailProvider;->ew(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2159
    const-string v8, "Gmail"

    const-string v9, "populateAccountCursorRow %s"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2160
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7, v0, v3, v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;[Ljava/lang/String;Landroid/database/MatrixCursor$RowBuilder;)V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 2151
    goto :goto_0

    .line 2163
    :cond_1
    const-string v0, "Gmail"

    const-string v6, "Invalid MailEngine account name: %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v0, v6, v8}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2166
    :cond_2
    return-object v5
.end method

.method public static c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 465
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gm/provider/GmailProvider;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh"

    invoke-static {p0, v2}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/GmailProvider;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/gm/provider/GmailProvider;->EI()V

    return-void
.end method

.method public static ca(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 3563
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3564
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfi:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3565
    return-void
.end method

.method private static dT(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bdG:Ljava/util/Map;

    monitor-enter v1

    .line 326
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bdG:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 327
    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 329
    sget-object v2, Lcom/google/android/gm/provider/GmailProvider;->bdG:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static em(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.android.gmail.uiinternal/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static en(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 370
    const-string v0, "account"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static eo(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/android/gm/provider/bG;->fh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static ep(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 378
    const-string v0, "labels"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static eq(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 399
    const-string v0, "search"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static er(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 537
    const-string v0, "recentFolders"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static es(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 545
    const-string v0, "ads"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final et(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1264
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfp:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2

    .prologue
    .line 1917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    return-object v0
.end method

.method private static ev(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2065
    if-nez p0, :cond_0

    .line 2066
    const/4 v0, 0x0

    .line 2069
    :goto_0
    return-object v0

    .line 2068
    :cond_0
    invoke-static {p0}, Lcom/android/mail/providers/Message;->cb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2069
    const-string v1, "\n"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static ew(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfn:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;
    .locals 3

    .prologue
    .line 2695
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    monitor-enter v1

    .line 2696
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/a;

    .line 2703
    :goto_0
    monitor-exit v1

    .line 2704
    return-object v0

    .line 2699
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfx:Lcom/google/android/gm/provider/GmailProvider;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    .line 2700
    new-instance v0, Lcom/google/android/gm/provider/uiprovider/a;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/provider/uiprovider/a;-><init>(Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;)V

    .line 2701
    sget-object v2, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2703
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static ey(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 3405
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3406
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3411
    :goto_0
    return v0

    .line 3407
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->ee(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3409
    const/16 v0, 0x100

    goto :goto_0

    .line 3411
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic ez(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->em(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 4

    .prologue
    .line 2176
    new-instance v0, Lcom/android/mail/utils/G;

    sget-object v1, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 2179
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 2182
    const/4 v2, 0x0

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v3, v1}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;[Ljava/lang/String;Landroid/database/MatrixCursor$RowBuilder;)V

    .line 2184
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 2186
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v0}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversations"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversation"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversationMessages"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageserverid"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;J)Lcom/google/android/gm/provider/uiprovider/b;
    .locals 3

    .prologue
    .line 2638
    invoke-static {p0}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v0

    .line 2639
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfx:Lcom/google/android/gm/provider/GmailProvider;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gm/provider/uiprovider/a;->F(Landroid/content/Context;J)Lcom/google/android/gm/provider/uiprovider/b;

    move-result-object v0

    return-object v0
.end method

.method static n(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 3582
    sget-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    monitor-enter v1

    .line 3583
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/a;

    .line 3584
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3586
    if-eqz v0, :cond_0

    .line 3587
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/uiprovider/a;->aT(J)V

    .line 3589
    :cond_0
    return-void

    .line 3584
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static s(Landroid/os/Bundle;)Landroid/content/ContentValues;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 1970
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 1973
    :goto_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1975
    const-string v0, "toAddresses"

    const-string v1, "toAddresses"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v0, "ccAddresses"

    const-string v1, "ccAddresses"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v0, "bccAddresses"

    const-string v1, "bccAddresses"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v0, "subject"

    const-string v1, "subject"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v0, "snippet"

    const-string v1, "snippet"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v0, "replyToAddresses"

    const-string v1, "replyToAddress"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string v0, "fromAddress"

    const-string v1, "fromAddress"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v0, "customFrom"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1991
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->am(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1992
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1994
    :goto_1
    const-string v1, "customFromAddress"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v0, "attachments"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1997
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2002
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2005
    invoke-static {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bK(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v6

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 2011
    iget-object v11, v0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2012
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "local"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/mail/providers/Attachment;->partId:Ljava/lang/String;

    .line 2014
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uC()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2015
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2016
    goto :goto_2

    :cond_1
    move-wide v2, v4

    .line 1970
    goto/16 :goto_0

    .line 1992
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2018
    :cond_3
    const-string v0, "joinedAttachmentInfos"

    const-string v1, "\n"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    :cond_4
    const-string v0, "bodyHtml"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2023
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2024
    const-string v1, "bodyText"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2025
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2026
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    :cond_5
    const-string v1, "body"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v0, "appendRefMessageContent"

    invoke-virtual {p0, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2032
    const-string v1, "includeQuotedText"

    if-eqz v0, :cond_9

    move v0, v7

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2033
    const-string v0, "quotedTextStartPos"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2034
    const-string v0, "quoteStartPos"

    const-string v1, "quotedTextStartPos"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2041
    :cond_6
    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const-string v0, "refMessageId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2053
    :cond_7
    :goto_4
    const-string v0, "refMessageId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2056
    const-string v0, "refAdEventId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2057
    const-string v0, "refAdEventId"

    const-string v1, "refAdEventId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_8
    return-object v8

    :cond_9
    move v0, v6

    .line 2032
    goto :goto_3

    .line 2044
    :cond_a
    const-string v0, "refMessageId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2047
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2050
    const-string v0, "draftType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2051
    const-string v1, "forward"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_b
    move v7, v6

    goto :goto_5
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2507
    new-instance v5, Lcom/android/mail/utils/G;

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 2508
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->dZ(Ljava/lang/String;)Z

    move-result v6

    .line 2511
    invoke-static {p0, v3, p1, p2, v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v7

    .line 2514
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 2515
    sget-object v9, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    array-length v10, v9

    move v4, v2

    :goto_0
    if-ge v4, v10, :cond_6

    aget-object v0, v9, v4

    .line 2516
    const-string v11, "_id"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2517
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2515
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 2518
    :cond_0
    const-string v11, "canonicalName"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2519
    invoke-virtual {v8, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2520
    :cond_1
    const-string v11, "systemLabel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2521
    if-eqz v6, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 2522
    :cond_3
    const-string v11, "name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2523
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2524
    :cond_4
    const-string v11, "color"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2525
    const-string v0, "2147483647"

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2527
    :cond_5
    invoke-virtual {v8, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 2533
    :cond_6
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v5, v2}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2536
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2538
    new-instance v0, Lcom/android/mail/providers/Folder;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2540
    if-eqz v1, :cond_7

    .line 2541
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    .line 2540
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_8

    .line 2541
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2540
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static u(Lcom/android/mail/providers/Folder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3908
    iget-object v0, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1144
    iget-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1147
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1152
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/L;

    .line 1154
    iget-object v4, v0, Lcom/google/android/gm/provider/L;->mAccount:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-object v4, v0, Lcom/google/android/gm/provider/L;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    new-array v5, v9, [Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gm/provider/L;->aPP:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, v0, Lcom/google/android/gm/provider/L;->mAccount:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0, v10}, Lcom/google/android/gm/provider/GmailProvider;->a([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/U;Lcom/google/android/gm/provider/L;)I

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1158
    :cond_0
    const-string v0, "Gmail"

    const-string v3, "Performed undo on %d operations"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1163
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1164
    iget-object v2, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v10, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .line 1167
    :cond_1
    const-string v0, "Gmail"

    const-string v1, "Requested to perform an undo when with no saved undo operations"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1171
    :cond_2
    new-instance v0, Lcom/android/mail/utils/G;

    invoke-direct {v0, p1, v8}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method private y([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 2097
    sget-object v0, Lcom/google/android/gm/provider/ad;->TAG:Ljava/lang/String;

    const-string v1, "getAccountsCursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2099
    new-instance v0, Lcom/google/android/gm/provider/H;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/H;-><init>(Lcom/google/android/gm/provider/GmailProvider;)V

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    sget-object v3, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2126
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bfB:[Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 2128
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfB:[Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/content/Context;[Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/GmailProvider;->c([Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 2131
    monitor-enter p0

    .line 2134
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfr:Z

    if-nez v1, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/a;

    invoke-direct {v2, v1}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gm/provider/I;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gm/provider/I;-><init>(Lcom/google/android/gm/provider/GmailProvider;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gm/a;->a(Lcom/google/android/gm/f;)V

    .line 2137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfr:Z

    .line 2139
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    :goto_0
    return-object v0

    .line 2139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2143
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/GmailProvider;->c([Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic yC()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/google/android/gm/provider/GmailProvider;->bfw:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 2

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailProvider;->bft:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3791
    invoke-direct {p0}, Lcom/google/android/gm/provider/GmailProvider;->EI()V

    .line 3792
    return-void
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 954
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 955
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 956
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 959
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 963
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 964
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 965
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 971
    :cond_1
    if-eqz v1, :cond_2

    .line 972
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gz()V

    .line 975
    :cond_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 976
    if-eqz v1, :cond_3

    .line 977
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :cond_3
    if-eqz v1, :cond_4

    .line 982
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    :cond_4
    return-object v0

    :cond_5
    move-object v0, v1

    .line 965
    goto :goto_1

    .line 981
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 982
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    :cond_6
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 989
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 992
    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 995
    invoke-static {v7}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 998
    const-string v0, "send_message"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    const-string v0, "opened_fds"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {p3}, Lcom/google/android/gm/provider/GmailProvider;->s(Landroid/os/Bundle;)Landroid/content/ContentValues;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;JZLandroid/content/ContentValues;Landroid/os/Bundle;)J

    move-result-wide v0

    move-wide v2, v0

    .line 1009
    :goto_0
    cmp-long v0, v2, v8

    if-eqz v0, :cond_5

    .line 1010
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1011
    const-string v1, "messageUri"

    invoke-static {v7, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->h(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1017
    :goto_1
    return-object v0

    .line 1000
    :cond_1
    const-string v0, "save_message"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    const-string v0, "opened_fds"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {p3}, Lcom/google/android/gm/provider/GmailProvider;->s(Landroid/os/Bundle;)Landroid/content/ContentValues;

    move-result-object v5

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;JZLandroid/content/ContentValues;Landroid/os/Bundle;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    .line 1002
    :cond_3
    const-string v0, "set_current_account"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1003
    sput-object v7, Lcom/google/android/gm/provider/GmailProvider;->bfz:Ljava/lang/String;

    move-wide v2, v8

    goto :goto_0

    .line 1005
    :cond_4
    const-string v0, "Gmail"

    const-string v1, "Unexpected Content provider method: %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v2, v8

    goto :goto_0

    .line 1014
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 919
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "Gmail"

    const-string v1, "GmailProvider.delete: %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 922
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 923
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 925
    packed-switch v0, :pswitch_data_0

    .line 941
    :goto_0
    return v7

    .line 929
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 930
    const/4 v1, -0x1

    .line 931
    const-string v2, "seq"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_2

    .line 934
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v8, v1

    .line 936
    :goto_1
    const-string v1, "forceUiNotifications"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v9

    .line 940
    :goto_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v1, Lcom/google/android/gm/provider/L;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V

    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "^k"

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    invoke-virtual {v1}, Lcom/google/android/gm/provider/L;->CX()Lcom/google/android/gm/U;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/L;

    invoke-direct {p0, v8, v2}, Lcom/google/android/gm/provider/GmailProvider;->a(ILcom/google/android/gm/provider/L;)V

    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/google/android/gm/provider/GmailProvider;->a([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/U;Lcom/google/android/gm/provider/L;)I

    move-result v7

    goto :goto_0

    :cond_1
    move v6, v7

    .line 938
    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_1

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1901
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    const-string v0, "Gmail"

    const-string v1, "GmailProvider.getType: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1905
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1907
    packed-switch v0, :pswitch_data_0

    .line 1911
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1909
    :pswitch_0
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1907
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 844
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "Gmail"

    const-string v1, "GmailProvider.insert: %s(%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 849
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "Unexpected GmailProvider.insert: %s(%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 852
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 560
    new-instance v1, Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v2}, Lcom/google/android/gm/provider/Gmail;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/GmailProvider;->bfq:Lcom/google/android/gm/provider/Gmail;

    .line 562
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/provider/GmailProvider;->bfw:I

    .line 564
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/provider/GmailProvider;->bfy:Ljava/lang/String;

    .line 565
    sput-object p0, Lcom/google/android/gm/provider/GmailProvider;->bfx:Lcom/google/android/gm/provider/GmailProvider;

    .line 567
    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/i/g;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 569
    const/4 v0, 0x1

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3934
    const-string v0, "removal-action"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-list-swipe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-list-sender-image"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "default-reply-all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversation-overview-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto-advance-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "snap-header-mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-delete"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-archive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirm-send"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3944
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V

    .line 3946
    :cond_1
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    .prologue
    .line 588
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    const-string v2, "Gmail"

    const-string v3, "GmailProvider.query: %s(%s, %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 593
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 595
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->y([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/gm/provider/GmailProvider;->bfi:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 831
    :cond_1
    :goto_0
    return-object v2

    .line 601
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 602
    const/4 v2, 0x0

    .line 603
    const/4 v15, 0x1

    .line 604
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v15

    .line 823
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->em(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 606
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/provider/GmailProvider;->ew(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/GmailProvider;->c([Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "^iim"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "priority_inbox"

    :goto_2
    invoke-interface {v5, v6, v2}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    move-object v2, v3

    .line 607
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 608
    const/4 v3, 0x0

    .line 609
    goto :goto_1

    .line 606
    :cond_3
    const-string v2, "inbox"

    goto :goto_2

    :cond_4
    const-string v5, "Gmail"

    const-string v6, "Invalid mailEngine. %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez v2, :cond_5

    const-string v2, "null MailEngine"

    :goto_4
    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v2, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 613
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/mail/providers/H;->o([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v5, v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->ep(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 615
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 616
    goto/16 :goto_1

    .line 620
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 621
    const-string v2, "inboxFallback"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    const-string v3, "allowHiddenFolders"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 627
    const-string v2, "allowHiddenFolders"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 634
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    const-string v7, "defaultParent"

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 636
    const-string v3, "defaultParent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lcom/android/mail/providers/H;->o([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v9

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gm/provider/aa;->F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_6

    if-eqz v5, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gm/provider/aa;->F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v2

    :cond_6
    invoke-static {v7, v4, v8, v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v6}, Lcom/google/android/gm/provider/GmailProvider;->P(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 646
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 647
    goto/16 :goto_1

    .line 630
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 639
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 652
    :pswitch_4
    const-string v2, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    const/4 v10, 0x0

    .line 656
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 661
    :goto_7
    const/4 v11, 0x1

    .line 662
    const-string v2, "use_network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_9

    .line 665
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 671
    :cond_9
    const/4 v2, 0x0

    .line 672
    const-string v5, "all_notifications"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 674
    if-eqz v5, :cond_21

    .line 675
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v13, v2

    .line 678
    :goto_8
    const-string v2, "seen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 680
    if-eqz v2, :cond_b

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 681
    const/4 v12, 0x1

    .line 686
    :goto_9
    const/4 v2, 0x4

    if-ne v3, v2, :cond_d

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 690
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 697
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gm/provider/D;->af(J)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v2, "Gmail"

    const-string v3, "Unknown canonical name: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    :goto_a
    move-object v5, v2

    .line 705
    :goto_b
    if-nez v5, :cond_a

    .line 707
    const-string v2, "Gmail"

    const-string v3, "Returning an empty cursor instead of a null cursor"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 708
    new-instance v5, Lcom/android/mail/utils/G;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 711
    :cond_a
    if-eqz v13, :cond_20

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 713
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    goto/16 :goto_1

    .line 683
    :cond_b
    const/4 v12, 0x0

    goto :goto_9

    .line 691
    :catch_0
    move-exception v3

    .line 692
    const-string v4, "Gmail"

    const-string v5, "Unable to parse label id %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v3, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 694
    new-instance v2, Lcom/android/mail/utils/G;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    .line 697
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_a

    .line 700
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 701
    const-wide/16 v6, -0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_b

    .line 719
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 722
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v8

    .line 729
    const/4 v2, 0x1

    .line 730
    const-string v3, "listParams"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    if-eqz v3, :cond_e

    .line 733
    invoke-static {v3}, Lcom/android/mail/providers/ListParams;->bT(Ljava/lang/String;)Lcom/android/mail/providers/ListParams;

    move-result-object v3

    .line 734
    if-eqz v3, :cond_e

    .line 735
    iget-boolean v2, v3, Lcom/android/mail/providers/ListParams;->aAT:Z

    .line 739
    :cond_e
    const-string v3, "label"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 741
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v6

    if-nez v2, :cond_f

    const/4 v10, 0x1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/android/mail/providers/H;->r([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    sget-object v7, Lcom/google/android/gm/provider/Gmail;->aCy:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gm/provider/MailEngine;->a([Ljava/lang/String;JZZ)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_10

    const/4 v10, 0x0

    .line 743
    :goto_d
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v10

    .line 744
    goto/16 :goto_1

    .line 725
    :catch_1
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 741
    :cond_f
    const/4 v10, 0x0

    goto :goto_c

    :cond_10
    new-instance v10, Lcom/google/android/gm/provider/uiprovider/k;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v16, Lcom/google/android/gm/provider/GmailProvider;->bfy:Ljava/lang/String;

    move-object v13, v4

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gm/provider/uiprovider/k;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/i/g;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v8, v9}, Lcom/google/android/gm/provider/GmailProvider;->k(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_d

    .line 748
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 749
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v10

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->aCy:[Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->b([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_11

    const/4 v5, 0x0

    :goto_e
    move v3, v15

    move-object v2, v5

    .line 750
    goto/16 :goto_1

    .line 749
    :cond_11
    new-instance v5, Lcom/google/android/gm/provider/uiprovider/k;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    sget-object v11, Lcom/google/android/gm/provider/GmailProvider;->bfy:Ljava/lang/String;

    sget-object v12, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    move-object v8, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gm/provider/uiprovider/k;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/i/g;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_e

    .line 753
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 754
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v10

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->aCy:[Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_12

    const/4 v5, 0x0

    :goto_f
    move v3, v15

    move-object v2, v5

    .line 755
    goto/16 :goto_1

    .line 754
    :cond_12
    new-instance v5, Lcom/google/android/gm/provider/uiprovider/k;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x0

    sget-object v11, Lcom/google/android/gm/provider/GmailProvider;->bfy:Ljava/lang/String;

    sget-object v12, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    move-object v8, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gm/provider/uiprovider/k;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/i/g;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_f

    .line 758
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->x([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v3, v15

    .line 759
    goto/16 :goto_1

    .line 763
    :pswitch_9
    const/16 v2, 0x10

    if-ne v3, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 768
    :goto_10
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    if-eqz v2, :cond_15

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gm/provider/uiprovider/a;->fl(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/g;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gm/provider/uiprovider/g;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v2

    :goto_11
    invoke-virtual {v3, v2}, Lcom/google/android/gm/provider/MailEngine;->p(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    move v3, v15

    .line 770
    goto/16 :goto_1

    .line 763
    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 769
    :cond_14
    const/4 v2, 0x0

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    goto :goto_11

    .line 773
    :pswitch_a
    const-string v2, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    const-string v3, "query_identifier"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v6

    const-string v5, "searchConversations"

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/GmailProvider;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "query"

    invoke-virtual {v5, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v7, "query_identifier"

    invoke-virtual {v5, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/android/mail/utils/G;

    sget-object v7, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    sget v8, Lcom/google/android/gm/provider/GmailProvider;->bfo:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v8, "search"

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const v8, 0x10260

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v6, v2}, Lcom/google/android/gm/provider/uiprovider/a;->fk(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    invoke-static {v4, v8, v9, v3, v2}, Lcom/google/android/gm/provider/GmailProvider;->c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/16 v2, 0x1001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v2, "search"

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/16 v2, 0x18

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_16

    const-string v2, "Gmail"

    const-string v3, "unexpected number of columns. Projection specifies %d items, while only %d columns added"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v6}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 780
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 781
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 782
    goto/16 :goto_1

    .line 784
    :pswitch_b
    const-string v2, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 786
    const-string v2, "query_identifier"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 789
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;ZZ)Landroid/database/Cursor;

    move-result-object v2

    .line 792
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->ex(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/a;

    move-result-object v5

    invoke-virtual {v5, v6, v3}, Lcom/google/android/gm/provider/uiprovider/a;->h(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->eq(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    move v3, v15

    .line 793
    goto/16 :goto_1

    .line 795
    :pswitch_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/mail/providers/H;->o([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0xa

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gm/provider/aa;->g(JI)Lcom/google/android/gm/provider/aa;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v5, v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->er(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 797
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 798
    goto/16 :goto_1

    .line 801
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/uiprovider/e;->G(Landroid/net/Uri;)Lcom/google/android/gm/provider/uiprovider/e;

    move-result-object v2

    .line 804
    iget-wide v8, v2, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-object v7, v2, Lcom/google/android/gm/provider/uiprovider/e;->blK:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gm/provider/uiprovider/e;->partId:Ljava/lang/String;

    iget-wide v10, v2, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    iget-wide v12, v2, Lcom/google/android/gm/provider/uiprovider/e;->blL:J

    iget-object v6, v2, Lcom/google/android/gm/provider/uiprovider/e;->bos:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Lcom/android/mail/providers/H;->s([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const-string v2, "Gmail"

    const-string v3, "getAttachments failed with account: %s, conversationId: %d, serverMessageId: %d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v3, v15}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_19

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "Gmail"

    const-string v15, "Looking for attachment partId: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_18
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iget-object v0, v2, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_18

    const-string v3, "Gmail"

    const-string v5, "Found attachment"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v5, v15}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_12
    if-eqz v2, :cond_1c

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_19
    :goto_13
    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_13

    :cond_1d
    move-object v15, v2

    :cond_1e
    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJ[Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v5

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-interface {v5, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 806
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 807
    goto/16 :goto_1

    .line 809
    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/google/android/gm/provider/GmailProvider;->c(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v3, v15

    .line 810
    goto/16 :goto_1

    .line 812
    :pswitch_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->es(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 814
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    .line 815
    goto/16 :goto_1

    .line 818
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 820
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v2}, Lcom/google/android/gm/provider/GmailProvider;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 822
    const/4 v2, 0x0

    move v3, v2

    move-object v2, v5

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_7

    :cond_1f
    move-object v2, v3

    goto/16 :goto_12

    :cond_20
    move v3, v15

    move-object v2, v5

    goto/16 :goto_1

    :cond_21
    move v13, v2

    goto/16 :goto_8

    .line 604
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/i/g;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 576
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfx:Lcom/google/android/gm/provider/GmailProvider;

    .line 577
    sget-object v0, Lcom/google/android/gm/provider/GmailProvider;->bfC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 578
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21

    .prologue
    .line 858
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    const-string v2, "Gmail"

    const-string v3, "GmailProvider.update: %s(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 863
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/GmailProvider;->ajR:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    .line 868
    invoke-static {v5}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 870
    packed-switch v2, :pswitch_data_0

    .line 909
    :pswitch_0
    const-string v2, "Gmail"

    const-string v3, "Unexpected GmailProvider.update: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ad;->A(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and values are : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 914
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    .line 872
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 873
    const/4 v3, -0x1

    .line 874
    const-string v4, "seq"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    if-eqz v4, :cond_33

    .line 877
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 879
    :goto_2
    const-string v3, "forceUiNotifications"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    if-eqz v3, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    .line 883
    :goto_3
    const-string v3, "Gmail"

    const-string v4, "GmailProvider.updateConversation for conversation %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v20

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "discard_drafts"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move/from16 v10, v18

    move v11, v3

    move-object v3, v4

    :goto_4
    if-nez v3, :cond_31

    new-instance v3, Lcom/google/android/gm/provider/L;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V

    move-object v4, v3

    :goto_5
    const-string v3, "starred"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "^t"

    invoke-static {v3, v5, v8}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v3

    const-string v8, "starred"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v3, v8}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_2
    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "^u"

    invoke-static {v3, v5, v8}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v8

    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v8, v3}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_3
    const-string v3, "viewed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "^o"

    invoke-static {v3, v5, v8}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_4
    const-string v3, "priority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "priority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_14

    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_15

    const-string v3, "^^important"

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5, v3}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_5
    const/4 v3, 0x0

    if-eqz v11, :cond_16

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gm/provider/MailEngine;->aB(J)I

    move-result v3

    move v6, v3

    :goto_9
    const-string v3, "suppress_undo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_17

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gm/provider/L;->CX()Lcom/google/android/gm/U;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/L;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/GmailProvider;->a(ILcom/google/android/gm/provider/L;)V

    :goto_a
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5, v4, v3}, Lcom/google/android/gm/provider/GmailProvider;->a([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/U;Lcom/google/android/gm/provider/L;)I

    move-result v2

    add-int/2addr v2, v6

    goto/16 :goto_1

    .line 881
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 883
    :cond_8
    const-string v3, "move_failed_to_drafts"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move v10, v3

    move/from16 v11, v19

    move-object v3, v4

    goto/16 :goto_4

    :cond_9
    const-string v3, "Gmail"

    const-string v4, "Received operation %s for conversation %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v3, v4, v9}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/gm/provider/L;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V

    const-string v4, "archive"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "^i"

    invoke-static {v4, v5, v9}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_a
    :goto_b
    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_4

    :cond_b
    const-string v4, "mute"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "^g"

    invoke-static {v4, v5, v9}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_b

    :cond_c
    const-string v4, "report_spam"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "report_not_spam"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "^s"

    invoke-static {v4, v5, v9}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v4

    const-string v9, "report_spam"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_b

    :cond_e
    const-string v4, "report_phishing"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "^p"

    invoke-static {v4, v5, v9}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_b

    :cond_f
    const-string v3, "folders_updated"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/google/android/gm/provider/L;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/L;-><init>(Lcom/google/android/gm/provider/GmailProvider;Ljava/lang/String;JZB)V

    const-string v4, "folders_updated"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, ","

    invoke-static {v4, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v4, 0x0

    move v9, v4

    :goto_c
    if-ge v9, v11, :cond_11

    aget-object v4, v10, v9

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v13, 0x2

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->et(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5, v4}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v12, 0x3

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v13, v4}, Lcom/google/android/gm/provider/L;->a(Lcom/google/android/gm/provider/T;Z)V

    :cond_10
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_c

    :cond_11
    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_4

    :cond_12
    const-string v3, "rawFolders"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gm/provider/MailEngine;->X(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "rawFolders"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/providers/FolderList;->d([B)Lcom/android/mail/providers/FolderList;

    move-result-object v3

    iget-object v14, v3, Lcom/android/mail/providers/FolderList;->aAL:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v10, p0

    move-object v11, v5

    move-wide v12, v6

    move/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Z)Lcom/google/android/gm/provider/L;

    move-result-object v3

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_4

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_15
    const-string v3, "^^unimportant"

    goto/16 :goto_8

    :cond_16
    if-eqz v10, :cond_30

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gm/provider/MailEngine;->aC(J)I

    move-result v3

    move v6, v3

    goto/16 :goto_9

    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 886
    :pswitch_2
    const-string v2, "Gmail"

    const-string v4, "update: running populateRecentLabels."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 887
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 891
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v5, v1}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    goto/16 :goto_1

    .line 893
    :pswitch_4
    const-string v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v3, "rendition"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v3, "additionalPriority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string v3, "delayDownload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    if-nez v2, :cond_18

    if-eqz v10, :cond_19

    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/uiprovider/e;->G(Landroid/net/Uri;)Lcom/google/android/gm/provider/uiprovider/e;

    move-result-object v15

    iget-object v3, v15, Lcom/google/android/gm/provider/uiprovider/e;->blK:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v16

    if-eqz v2, :cond_19

    iget-object v3, v15, Lcom/google/android/gm/provider/uiprovider/e;->blK:Ljava/lang/String;

    iget-wide v4, v15, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-wide v6, v15, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    iget-object v8, v15, Lcom/google/android/gm/provider/uiprovider/e;->partId:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v17

    if-nez v17, :cond_1a

    const-string v2, "Gmail"

    const-string v3, "couldn\'t find attachment in updateAttachmentState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_19
    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1a
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_5
    goto :goto_d

    :pswitch_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v3

    iget-wide v4, v15, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-wide v6, v15, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    iget-object v8, v15, Lcom/google/android/gm/provider/uiprovider/e;->partId:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/g;->c(JJLjava/lang/String;IZ)I

    move-result v2

    goto/16 :goto_1

    :cond_1b
    const/4 v9, 0x1

    goto :goto_e

    :pswitch_7
    if-eqz v10, :cond_1d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v11, v2

    :goto_f
    const/4 v2, 0x1

    if-ne v11, v2, :cond_1e

    const/4 v2, 0x1

    move v13, v2

    :goto_10
    if-eqz v12, :cond_1f

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    :goto_11
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_12
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_21

    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    iget-wide v4, v15, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-wide v6, v15, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    iget-object v8, v15, Lcom/google/android/gm/provider/uiprovider/e;->partId:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/g;->c(JJLjava/lang/String;IZ)I

    :cond_1c
    :goto_13
    move-object/from16 v0, v17

    iput v11, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    if-eqz v2, :cond_22

    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    iget-wide v4, v15, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-wide v6, v15, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    const/4 v11, 0x0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v17

    move v10, v13

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZZI)V

    goto :goto_d

    :cond_1d
    const/4 v2, 0x0

    move v11, v2

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    move v13, v2

    goto :goto_10

    :cond_1f
    const/4 v2, 0x0

    move v12, v2

    goto :goto_11

    :cond_20
    const/4 v2, 0x0

    goto :goto_12

    :cond_21
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    if-ne v4, v11, :cond_1c

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    if-eq v4, v9, :cond_19

    goto :goto_13

    :cond_22
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    iget-wide v4, v15, Lcom/google/android/gm/provider/uiprovider/e;->bku:J

    iget-wide v6, v15, Lcom/google/android/gm/provider/uiprovider/e;->bol:J

    add-int/lit8 v11, v12, 0x1

    move-object/from16 v8, v17

    move v10, v13

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZI)V

    goto/16 :goto_d

    .line 897
    :pswitch_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 899
    :pswitch_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "starred"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "alwaysShowImages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_23

    if-nez v3, :cond_23

    if-eqz v4, :cond_24

    :cond_23
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gm/provider/MailEngine;->ax(J)Lcom/google/android/gm/provider/bm;

    move-result-object v9

    if-nez v9, :cond_25

    const-string v2, "Gmail"

    const-string v3, "Error finding message for localMessageId: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_25
    const/4 v2, 0x0

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    :goto_14
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "canonicalName"

    const-string v11, "^u"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "messageId"

    iget-wide v12, v9, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "conversation"

    iget-wide v12, v9, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "add_label_action"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->bfq:Lcom/google/android/gm/provider/Gmail;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/ContentValues;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v10, v3}, Lcom/google/android/gm/provider/Gmail;->b(Ljava/lang/String;[Landroid/content/ContentValues;Z)V

    const/4 v2, 0x1

    :cond_26
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_15
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "canonicalName"

    const-string v10, "^t"

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "messageId"

    iget-wide v6, v9, Lcom/google/android/gm/provider/bm;->bkt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "conversation"

    iget-wide v6, v9, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "add_label_action"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->bfq:Lcom/google/android/gm/provider/Gmail;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gm/provider/Gmail;->b(Ljava/lang/String;[Landroid/content/ContentValues;Z)V

    const/4 v2, 0x1

    :cond_27
    if-eqz v8, :cond_28

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    iget-object v2, v9, Lcom/google/android/gm/provider/bm;->blC:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mail/d;->aY(Ljava/lang/String;)Lcom/android/mail/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/d;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/persistence/b;->bz(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/mail/i/g;->a(Ljava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x1

    :cond_28
    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_2a
    const/4 v2, 0x0

    goto :goto_15

    .line 901
    :pswitch_a
    const-string v2, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gm/provider/GmailProvider;->eu(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    const-string v2, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->ax(J)Lcom/google/android/gm/provider/bm;

    move-result-object v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->aA(J)I

    move-result v2

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, v6, Lcom/google/android/gm/provider/bm;->bku:J

    invoke-static {v3, v6, v7}, Lcom/google/android/gm/provider/GmailProvider;->k(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_1

    .line 903
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v3

    const-string v2, "auto_advance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "auto_advance"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/mail/i/g;->cu(I)V

    :cond_2c
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/GmailProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "content://com.android.gmail.ui/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_2d
    const-string v2, "conversation_view_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "conversation_view_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    :goto_17
    invoke-virtual {v3, v2}, Lcom/android/mail/i/g;->bg(Z)V

    goto :goto_16

    :cond_2e
    const/4 v2, 0x0

    goto :goto_17

    .line 905
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 906
    const-string v3, "seen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v3, "seen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/MailEngine;->A([Ljava/lang/String;)[Lcom/google/android/gm/provider/af;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->ei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v5}, Lcom/google/android/gm/provider/MailEngine;->A([Ljava/lang/String;)[Lcom/google/android/gm/provider/af;

    move-result-object v2

    array-length v5, v4

    if-lez v5, :cond_2f

    array-length v5, v2

    if-lez v5, :cond_2f

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v2, :cond_2f

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/af;Lcom/google/android/gm/provider/af;)I

    :cond_2f
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_30
    move v6, v3

    goto/16 :goto_9

    :cond_31
    move-object v4, v3

    goto/16 :goto_5

    :cond_32
    move/from16 v10, v18

    move/from16 v11, v19

    move-object v3, v4

    goto/16 :goto_4

    :cond_33
    move/from16 v17, v3

    goto/16 :goto_2

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 893
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
