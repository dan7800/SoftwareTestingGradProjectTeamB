.class public final Lcom/android/mail/providers/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aCA:Ljava/util/regex/Pattern;

.field public static final aCB:Ljava/util/regex/Pattern;

.field public static final aCC:[Ljava/lang/String;

.field public static final aCp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final aCq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final aCr:[Ljava/lang/String;

.field public static final aCs:[Ljava/lang/String;

.field public static final aCt:[Ljava/lang/String;

.field public static final aCu:[Ljava/lang/String;

.field public static final aCv:[Ljava/lang/String;

.field public static final aCw:[Ljava/lang/String;

.field public static final aCx:[Ljava/lang/String;

.field public static final aCy:[Ljava/lang/String;

.field public static final aCz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "_id"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "senderName"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountManagerName"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountId"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "type"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "providerVersion"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "folderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "fullFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "allFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "searchUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountFromAddresses"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "expungeMessageUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "undoUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountSettingsIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "syncStatus"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "helpIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "sendFeedbackIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "reauthenticationUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "composeUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "mimeType"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "recentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "color"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "defaultRecentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "manualSyncUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "viewProxyUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountCookieUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "signature"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "auto_advance"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "snap_headers"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "reply_behavior"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "conversation_list_icon"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "confirm_delete"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "confirm_archive"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "confirm_send"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "default_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "default_inbox_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "force_reply_from_default"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "max_attachment_size"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "swipe"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "importance_markers_enabled"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "show_chevrons_enabled"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "setup_intent_uri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "conversation_view_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "veiled_address_pattern"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "updateSettingsUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "enableMessageTransforms"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "syncAuthority"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "quickResponseUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "settingsFragmentClass"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "move_to_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "show_images"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "welcome_tour_shown_version"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "securityHold"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "accountSecurityUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/E;->aCp:Ljava/util/Map;

    .line 236
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    sget-object v1, Lcom/android/mail/providers/E;->aCp:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/y;->p(Ljava/util/Map;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "capabilities"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 243
    sput-object v0, Lcom/android/mail/providers/E;->aCq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/mail/providers/E;->aCq:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/android/mail/providers/E;->aCp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/mail/providers/E;->aCp:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/E;->aCs:[Ljava/lang/String;

    .line 688
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quickResponse"

    aput-object v1, v0, v4

    const-string v1, "uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mail/providers/E;->aCt:[Ljava/lang/String;

    .line 705
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cookie"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mail/providers/E;->aCu:[Ljava/lang/String;

    .line 765
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "persistentId"

    aput-object v1, v0, v4

    const-string v1, "folderUri"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "hasChildren"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "capabilities"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "syncWindow"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "conversationListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "childFoldersListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unseenCount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "refreshUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "iconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "notificationIconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "loadMoreUri"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hierarchicalDesc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "lastMessageTimestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "parentUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    .line 792
    new-instance v0, Lcom/google/common/collect/x;

    invoke-direct {v0}, Lcom/google/common/collect/x;-><init>()V

    sget-object v1, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/x;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/x;

    move-result-object v0

    const-string v1, "unreadSenders"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x;->Zt()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/E;->aCw:[Ljava/lang/String;

    .line 1077
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "conversationUri"

    aput-object v1, v0, v4

    const-string v1, "messageListUri"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "conversationInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numDrafts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sendingState"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rawFolders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "conversationFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "spam"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "phishing"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "accountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "senderInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "conversationBaseUri"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "remote"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "orderKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    .line 1590
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "serverMessageId"

    aput-object v1, v0, v4

    const-string v1, "messageUri"

    aput-object v1, v0, v5

    const-string v1, "conversationId"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replyToAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bodyHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bodyText"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "draftType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "appendRefMessageContent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "attachmentListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "attachmentByCidUri"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "messageFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "alwaysShowImages"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "customFrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "messageAccountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "eventIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "spamWarningString"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "spamWarningLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "spamWarningLinkType"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "viaDomain"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "sendingState"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "clipped"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "permalink"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/E;->aCy:[Ljava/lang/String;

    .line 1946
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v4

    const-string v1, "uri"

    aput-object v1, v0, v5

    const-string v1, "contentType"

    aput-object v1, v0, v6

    const-string v1, "state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "downloadedSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumbnailUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previewIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "providerData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "supportsDownloadAgain"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contentId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/E;->aCz:[Ljava/lang/String;

    .line 1980
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/E;->aCA:Ljava/util/regex/Pattern;

    .line 1984
    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/E;->aCB:Ljava/util/regex/Pattern;

    .line 2225
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messageListUri"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mail/providers/E;->aCC:[Ljava/lang/String;

    return-void
.end method

.method public static P(II)I
    .locals 1

    .prologue
    .line 133
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p1

    return v0
.end method

.method public static cE(I)I
    .locals 1

    .prologue
    .line 141
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static cF(I)I
    .locals 1

    .prologue
    .line 149
    shr-int/lit8 v0, p0, 0x4

    return v0
.end method
