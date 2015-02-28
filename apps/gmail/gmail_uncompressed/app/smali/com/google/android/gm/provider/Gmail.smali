.class public final Lcom/google/android/gm/provider/Gmail;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static aCx:[Ljava/lang/String;

.field public static aCy:[Ljava/lang/String;

.field public static bai:[Ljava/lang/String;

.field public static final bdE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bdF:Ljava/util/regex/Pattern;

.field static bdG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final bdH:Ljava/util/regex/Pattern;

.field public static final bdI:Ljava/util/regex/Pattern;

.field private static final bdJ:Ljava/util/regex/Pattern;

.field private static final bdK:Ljava/util/regex/Pattern;

.field private static final bdL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bdM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bdN:Lcom/google/common/collect/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bdO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bdP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bdQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bdR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bdS:[Ljava/lang/String;

.field public static final bdT:[Ljava/lang/String;

.field public static final bdU:[Ljava/lang/String;

.field public static final bdV:[Ljava/lang/String;

.field static final bdW:[Ljava/lang/String;

.field public static bdX:[Ljava/lang/String;

.field static final bdY:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 123
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    const-string v1, "^sq_ig_i_personal"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^sq_ig_i_social"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^sq_ig_i_promo"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^sq_ig_i_notification"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "^sq_ig_i_group"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdE:Ljava/util/Set;

    .line 229
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdF:Ljava/util/regex/Pattern;

    .line 441
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdG:Ljava/util/Map;

    .line 447
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdH:Ljava/util/regex/Pattern;

    .line 468
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdI:Ljava/util/regex/Pattern;

    .line 493
    const-string v0, "\"(.*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdJ:Ljava/util/regex/Pattern;

    .line 494
    const-string v0, "([^<]+)@"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdK:Ljava/util/regex/Pattern;

    .line 610
    const-string v0, "^all"

    const-string v1, "^b"

    const-string v2, "^r"

    const-string v3, "^g"

    const-string v4, "^i"

    const-string v5, "^f"

    const/16 v6, 0x18

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "^s"

    aput-object v7, v6, v9

    const-string v7, "^t"

    aput-object v7, v6, v10

    const-string v7, "^k"

    aput-object v7, v6, v11

    const-string v7, "^u"

    aput-object v7, v6, v12

    const-string v7, "^io_im"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "^iim"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "^^cached"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "^^out"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "^sq_ig_i_personal"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "^sq_ig_i_social"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "^sq_ig_i_promo"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "^sq_ig_i_notification"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "^sq_ig_i_group"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "^smartlabel_personal"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "^smartlabel_social"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "^smartlabel_promo"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "^smartlabel_notification"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "^smartlabel_group"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "^^important"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "^^unimportant"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "^imi"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "^imn"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "^io_ns"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "^im"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdL:Ljava/util/Set;

    .line 647
    const-string v0, "^g"

    const-string v1, "^i"

    const-string v2, "^s"

    const-string v3, "^k"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdM:Ljava/util/Set;

    .line 655
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->Zi()Lcom/google/common/collect/v;

    move-result-object v0

    const-wide/16 v2, -0x1f4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^imi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    const-wide/16 v2, -0x1f5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^imn"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    const-wide/16 v2, -0x1f3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^im"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    const-wide/16 v2, -0x1f6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "^io_ns"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v;->Zn()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdN:Lcom/google/common/collect/k;

    .line 663
    const-string v0, "^imi"

    const-string v1, "^imn"

    const-string v2, "^im"

    const-string v3, "^io_ns"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdO:Ljava/util/Set;

    .line 952
    const-string v0, "^i"

    const-string v1, "^u"

    const-string v2, "^k"

    const-string v3, "^s"

    const-string v4, "^t"

    const-string v5, "^g"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "^^important"

    aput-object v7, v6, v9

    const-string v7, "^^unimportant"

    aput-object v7, v6, v10

    const-string v7, "^imi"

    aput-object v7, v6, v11

    const-string v7, "^imn"

    aput-object v7, v6, v12

    const-string v7, "^io_ns"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "^o"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdP:Ljava/util/Set;

    .line 983
    const-string v0, "^i"

    const-string v1, "^iim"

    const-string v2, "^k"

    const-string v3, "^s"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdQ:Ljava/util/Set;

    .line 1008
    const-string v0, "^im"

    const-string v1, "^io_im"

    const-string v2, "^iim"

    const-string v3, "^p"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdR:Ljava/util/Set;

    .line 1369
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "event_id"

    aput-object v1, v0, v10

    const-string v1, "advertiser_name"

    aput-object v1, v0, v11

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "line1"

    aput-object v1, v0, v13

    const/4 v1, 0x5

    const-string v2, "visible_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "redirect_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "advertiser_image_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "expiration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "apm_extra_targeting_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "view_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "view"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "slot"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "apm_xsrf_token"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "delete_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "wta_data"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "view_url"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "click_url"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "interaction_url"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "obfuscated_data"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "report_ad_server"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "report_bow"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "send_body"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "click_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdS:[Ljava/lang/String;

    .line 1398
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "event_id"

    aput-object v1, v0, v10

    const-string v1, "advertiser_name"

    aput-object v1, v0, v11

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "line1"

    aput-object v1, v0, v13

    const/4 v1, 0x5

    const-string v2, "visible_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "redirect_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "advertiser_image_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "expiration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "apm_extra_targeting_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "view_status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "view"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "slot"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "apm_xsrf_token"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "delete_status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wta_data"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "view_url"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "click_url"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "interaction_url"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "obfuscated_data"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "report_ad_server"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "report_bow"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "send_body"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "click_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdT:[Ljava/lang/String;

    .line 1426
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdU:[Ljava/lang/String;

    .line 1463
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "domainTitle"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdV:[Ljava/lang/String;

    .line 1486
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdW:[Ljava/lang/String;

    .line 1490
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "subject"

    aput-object v1, v0, v10

    const-string v1, "snippet"

    aput-object v1, v0, v11

    const-string v1, "fromAddress"

    aput-object v1, v0, v12

    const-string v1, "personalLevel"

    aput-object v1, v0, v13

    const/4 v1, 0x5

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numMessages"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasMessagesWithErrors"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "forceAllUnread"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fromProtoBuf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fromCompact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->aCx:[Ljava/lang/String;

    .line 1507
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "messageId"

    aput-object v1, v0, v10

    const-string v1, "conversation"

    aput-object v1, v0, v11

    const-string v1, "subject"

    aput-object v1, v0, v12

    const-string v1, "snippet"

    aput-object v1, v0, v13

    const/4 v1, 0x5

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "customFromAddress"

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

    const-string v2, "replyToAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateSentMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "listInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "joinedAttachmentInfos"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "refAdEventId"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "forward"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "includeQuotedText"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "quoteStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "spamDisplayedReasonType"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "permalink"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "clipped"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "labelCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "messageLabels"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "isStarred"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "isDraft"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "isInOutbox"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "isInRetry"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "isInFailed"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "isUnread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->aCy:[Ljava/lang/String;

    .line 1546
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "canonicalName"

    aput-object v1, v0, v10

    const-string v1, "name"

    aput-object v1, v0, v11

    const-string v1, "numConversations"

    aput-object v1, v0, v12

    const-string v1, "numUnreadConversations"

    aput-object v1, v0, v13

    const/4 v1, 0x5

    const-string v2, "numUnseenConversations"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "systemLabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "labelCountDisplayBehavior"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "labelSyncPolicy"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lastTouched"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lastMessageTimestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sortOrder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    .line 1561
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "labelsIncluded"

    aput-object v1, v0, v9

    const-string v1, "labelsPartial"

    aput-object v1, v0, v10

    const-string v1, "conversationAgeDays"

    aput-object v1, v0, v11

    const-string v1, "maxAttachmentSize"

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    .line 1568
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v9

    const-string v1, "account"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/gm/provider/Gmail;->bdY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    .line 1577
    return-void
.end method

.method public static DY()Landroid/text/TextUtils$StringSplitter;
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    return-object v0
.end method

.method public static DZ()Landroid/text/TextUtils$StringSplitter;
    .locals 1

    .prologue
    .line 1056
    new-instance v0, Lcom/google/android/gm/provider/A;

    invoke-direct {v0}, Lcom/google/android/gm/provider/A;-><init>()V

    return-object v0
.end method

.method private static M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 710
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->dT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 711
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 712
    if-nez v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content://gmail-ls/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 714
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_0
    return-object v0
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2048
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/settings/"

    invoke-static {p1, v1}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2054
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->c(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2056
    if-eqz v0, :cond_1

    .line 2057
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    .line 2056
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 2057
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static Q(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 2

    .prologue
    .line 2063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 2067
    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->C([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2069
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->c(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2071
    if-eqz v0, :cond_1

    .line 2072
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    .line 2071
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 2072
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static a(Lcom/google/android/gm/provider/Gmail$Settings;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 2118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2119
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->b(Lcom/google/android/gm/provider/Gmail$Settings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2120
    const-string v1, "labelsIncluded"

    const-string v2, " "

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->c(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->d(Lcom/google/android/gm/provider/Gmail$Settings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    const-string v1, "labelsPartial"

    const-string v2, " "

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->e(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_1
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->f(Lcom/google/android/gm/provider/Gmail$Settings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2132
    const-string v1, "conversationAgeDays"

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->g(Lcom/google/android/gm/provider/Gmail$Settings;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2136
    :cond_2
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->h(Lcom/google/android/gm/provider/Gmail$Settings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2137
    const-string v1, "maxAttachmentSize"

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->i(Lcom/google/android/gm/provider/Gmail$Settings;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2141
    :cond_3
    return-object v0
.end method

.method public static a(Ljava/lang/String;JLcom/google/android/gm/provider/uiprovider/GmailAttachment;I)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 2918
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2929
    :cond_0
    iget v0, p3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bla:I

    if-ne v0, v1, :cond_1

    .line 2931
    invoke-virtual {p3}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->Ib()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2933
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p3, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 765
    const-string v0, "/conversation/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->dY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2943
    const-string v0, "/messages/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextUtils$StringSplitter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1031
    invoke-interface {p0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1032
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1034
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V
    .locals 4

    .prologue
    .line 2148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2151
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-direct {v0}, Lcom/google/android/gm/provider/Gmail$Settings;-><init>()V

    .line 2152
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    .line 2153
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    .line 2154
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$Settings;->Ey()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/Gmail$Settings;->ai(J)V

    .line 2155
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$Settings;->Ez()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/Gmail$Settings;->aj(J)V

    .line 2156
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 2157
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->a(Lcom/google/android/gm/provider/Gmail$Settings;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2159
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->f(Landroid/content/ContentValues;)Z

    .line 2161
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2107
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->a(Lcom/google/android/gm/provider/Gmail$Settings;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2109
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2111
    const-string v1, "/settings/"

    invoke-static {p0, v1}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2113
    const-string v0, "Sync settings "

    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 2115
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 3772
    const-string v0, "gmail-ads-number-to-display"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 814
    const-string v0, "/messages/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/gm/provider/Gmail;->dY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static bY(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 2167
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    const-string v2, "gmail_default_label_sync_days_large_data_partition"

    .line 2169
    const-wide/16 v0, 0x1e

    .line 2175
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gsf/c;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 2171
    :cond_0
    const-string v2, "gmail_default_label_sync_days"

    .line 2172
    const-wide/16 v0, 0x4

    goto :goto_0
.end method

.method public static bZ(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 2179
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2181
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 2183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_large_data_partition_min_threshold_bytes"

    const-wide/32 v4, 0x3b9aca00

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/c;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2187
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 3

    .prologue
    .line 2078
    new-instance v2, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-direct {v2}, Lcom/google/android/gm/provider/Gmail$Settings;-><init>()V

    .line 2079
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2084
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdH:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/Gmail$Settings;->a(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;

    .line 2086
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->bdH:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/Gmail$Settings;->b(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;

    .line 2088
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2089
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->a(Lcom/google/android/gm/provider/Gmail$Settings;J)J

    .line 2092
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2094
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->b(Lcom/google/android/gm/provider/Gmail$Settings;J)J

    .line 2096
    return-object v2

    .line 2089
    :cond_0
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->bY(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2094
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static c(Landroid/content/ContentResolver;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3780
    const-string v1, "gmail-ads-number-to-display"

    invoke-static {p0, v1, v0}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized dT(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    const-class v1, Lcom/google/android/gm/provider/Gmail;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdG:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 702
    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 704
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->bdG:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :cond_0
    monitor-exit v1

    return-object v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dU(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 728
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->dT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 729
    const-string v0, "baseUri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 730
    if-nez v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "content://gmail-ls/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 732
    const-string v2, "baseUri"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_0
    return-object v0
.end method

.method static dV(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 785
    const-string v0, "/labels/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static dW(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 792
    const-string v0, "/label/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static dX(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 858
    const-string v0, "/status/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static dY(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static dZ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdL:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ea(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 880
    const-string v0, "^sq_ig_i_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static eb(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 897
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdM:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 907
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdJ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 908
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object p0, v0

    .line 920
    :cond_0
    :goto_0
    return-object p0

    .line 911
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 915
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdK:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static ed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 929
    .line 930
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 935
    :cond_0
    return-object p0
.end method

.method public static ee(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 945
    if-eqz p0, :cond_0

    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ef(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdP:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->ee(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^sq_ig_i_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eg(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 999
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdQ:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->ee(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^sq_ig_i_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eh(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1019
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdR:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->ef(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ei(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^^unseen-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 776
    const-string v0, "/conversations/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 824
    const-string v0, "/messages/"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 889
    const-string v0, "^io_im"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1082
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/util/Map;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/T;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1090
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    .line 1091
    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Landroid/content/ContentValues;Z)V
    .locals 3

    .prologue
    .line 1701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_0
    const-string v0, "/conversations/labels"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1705
    if-eqz p3, :cond_1

    .line 1706
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "suppressUINotifications"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1710
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1711
    return-void
.end method

.method final b(Ljava/lang/String;[Landroid/content/ContentValues;Z)V
    .locals 3

    .prologue
    .line 1740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    :cond_0
    const-string v0, "/messages/"

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/Gmail;->M(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1745
    if-eqz p3, :cond_1

    .line 1746
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "suppressUINotifications"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1749
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1750
    return-void
.end method
