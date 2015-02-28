.class public final Lcom/android/emailcommon/provider/g;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SourceFile"


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;

.field public static DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final XO:[Ljava/lang/String;

.field public static Xx:Landroid/net/Uri;

.field public static YC:Landroid/net/Uri;

.field public static YD:Landroid/net/Uri;

.field public static YE:Landroid/net/Uri;

.field public static YF:Landroid/net/Uri;

.field public static final YG:[Ljava/lang/String;

.field public static final YH:[Ljava/lang/String;

.field public static final YI:[Ljava/lang/String;

.field public static final YJ:[Ljava/lang/String;


# instance fields
.field public Lq:J

.field public Vs:Z

.field public Vt:Z

.field public Vu:I

.field public Vv:Ljava/lang/String;

.field public Xy:Ljava/lang/String;

.field public transient YA:I

.field public transient YB:J

.field public YK:J

.field public YL:Ljava/lang/String;

.field public YM:Z

.field public YN:Z

.field public YO:J

.field public YP:I

.field public YQ:Ljava/lang/String;

.field public YR:J

.field public YS:J

.field public YT:Ljava/lang/String;

.field public YU:Ljava/lang/String;

.field public YV:Ljava/lang/String;

.field public YW:Ljava/lang/String;

.field public YX:Ljava/lang/String;

.field public YY:Ljava/lang/String;

.field public YZ:Ljava/lang/String;

.field public Za:Ljava/lang/String;

.field public Zb:Ljava/lang/String;

.field public Zc:Ljava/lang/String;

.field public transient Zd:Ljava/lang/String;

.field public transient Ze:Ljava/lang/String;

.field public transient Zf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public dM:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 765
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolSearchInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "threadTopic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "syncData"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagSeen"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mainMailboxKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    .line 797
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/g;->YG:[Ljava/lang/String;

    .line 809
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/g;->YH:[Ljava/lang/String;

    .line 813
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/g;->YI:[Ljava/lang/String;

    .line 818
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/g;->YJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 993
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 885
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->Vs:Z

    .line 886
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->YM:Z

    .line 887
    iput v0, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    .line 888
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->Vt:Z

    .line 889
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->YN:Z

    .line 890
    iput v0, p0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    .line 994
    sget-object v0, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->XU:Landroid/net/Uri;

    .line 995
    return-void
.end method

.method public static lN()V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 724
    sput-object v0, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/g;->c(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->YC:Landroid/net/Uri;

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->YD:Landroid/net/Uri;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/messageBySelection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->YE:Landroid/net/Uri;

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->XZ:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/g;->Xx:Landroid/net/Uri;

    .line 735
    return-void
.end method

.method public static t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;
    .locals 7

    .prologue
    .line 1032
    const-class v1, Lcom/android/emailcommon/provider/g;

    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/g;->XO:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1145
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/g;->lF()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v0

    .line 1148
    :goto_0
    if-eqz v1, :cond_b

    .line 1149
    iget-object v0, p0, Lcom/android/emailcommon/provider/g;->XU:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1156
    :goto_1
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1157
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/b/r;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    .line 1161
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/g;->lB()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1166
    const-string v2, "textContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_1
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1169
    const-string v2, "htmlContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_2
    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->YB:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1172
    const-string v2, "sourceMessageKey"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/g;->YB:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    :cond_3
    iget v2, p0, Lcom/android/emailcommon/provider/g;->YA:I

    if-eqz v2, :cond_4

    .line 1175
    const-string v2, "quotedTextStartPos"

    iget v3, p0, Lcom/android/emailcommon/provider/g;->YA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1180
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1181
    sget-object v3, Lcom/android/emailcommon/provider/e;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1183
    if-nez v1, :cond_5

    .line 1184
    const-string v4, "messageKey"

    iget-wide v6, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1186
    :cond_5
    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    if-eqz v1, :cond_6

    .line 1189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1190
    const-string v4, "messageKey"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1194
    :cond_6
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    :cond_7
    iget-object v0, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1199
    iget-object v0, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1200
    if-nez v1, :cond_8

    .line 1201
    iget-wide v4, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    .line 1203
    :cond_8
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lB()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1205
    if-eqz v1, :cond_9

    .line 1206
    const-string v4, "messageKey"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1208
    :cond_9
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move v1, v2

    .line 1145
    goto/16 :goto_0

    .line 1151
    :cond_b
    iget-object v3, p0, Lcom/android/emailcommon/provider/g;->XU:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_1

    .line 1158
    :cond_c
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/b/r;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    goto/16 :goto_2

    .line 1211
    :cond_d
    return-void
.end method

.method public final ac(Landroid/content/Context;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1077
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/g;->lF()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1082
    :goto_0
    iget-object v4, p0, Lcom/android/emailcommon/provider/g;->Zd:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/emailcommon/provider/g;->Ze:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1084
    :cond_0
    if-eqz v0, :cond_3

    .line 1085
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->ac(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 1137
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    .line 1077
    goto :goto_0

    .line 1090
    :cond_3
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/g;->lB()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/g;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1091
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/g;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 1093
    goto :goto_1

    .line 1097
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/g;->a(Ljava/util/ArrayList;)V

    .line 1101
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/g;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1104
    if-eqz v0, :cond_8

    .line 1105
    const/4 v0, 0x0

    aget-object v0, v5, v0

    iget-object v1, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1106
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    .line 1107
    iget-object v0, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    move v4, v2

    move-object v0, v1

    .line 1109
    :goto_2
    iget-object v1, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/android/emailcommon/provider/g;->Zf:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1112
    add-int/lit8 v1, v4, 0x2

    .line 1114
    array-length v2, v5

    if-ge v1, v2, :cond_7

    .line 1115
    aget-object v1, v5, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object v2, v1

    .line 1122
    :goto_3
    if-eqz v2, :cond_6

    .line 1123
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    .line 1125
    :cond_6
    iget-wide v6, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    .line 1109
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v2

    goto :goto_2

    .line 1118
    :cond_7
    const-string v2, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid index into ContentProviderResults: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1120
    goto :goto_3

    :cond_8
    move-object v0, v3

    .line 1130
    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_4
    move-object v0, v3

    .line 1137
    goto/16 :goto_1

    .line 1136
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final b(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1038
    sget-object v0, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->XU:Landroid/net/Uri;

    .line 1039
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/g;->Ln:J

    .line 1040
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    .line 1041
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/g;->YK:J

    .line 1042
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    .line 1043
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->Vs:Z

    .line 1044
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->YM:Z

    .line 1045
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    .line 1046
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/g;->Vt:Z

    .line 1047
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/g;->YN:Z

    .line 1048
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 1049
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    .line 1050
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/g;->YO:J

    .line 1051
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/g;->YP:I

    .line 1052
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    .line 1053
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/g;->YR:J

    .line 1054
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/g;->YS:J

    .line 1055
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/g;->Lq:J

    .line 1056
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    .line 1057
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    .line 1058
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    .line 1059
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    .line 1060
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    .line 1061
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YY:Ljava/lang/String;

    .line 1062
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    .line 1063
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    .line 1064
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Zb:Ljava/lang/String;

    .line 1065
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/g;->Zc:Ljava/lang/String;

    .line 1066
    return-void

    :cond_0
    move v0, v2

    .line 1043
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1044
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1046
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 1047
    goto/16 :goto_3
.end method

.method public final c(ZZ)V
    .locals 2

    .prologue
    .line 1284
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1285
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/g;->dM:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 1286
    iget v1, p0, Lcom/android/emailcommon/provider/g;->dM:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/g;->dM:I

    .line 1290
    :cond_1
    return-void

    .line 1286
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final lB()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 999
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1002
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Xy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->YK:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1004
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/g;->Vs:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1006
    const-string v1, "flagSeen"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/g;->YM:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1007
    const-string v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/g;->Vu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1008
    const-string v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/g;->Vt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1009
    const-string v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/g;->YN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1010
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/g;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    const-string v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->YO:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1013
    const-string v1, "clientId"

    iget v2, p0, Lcom/android/emailcommon/provider/g;->YP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const-string v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->YR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1016
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->Lq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    const-string v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->YZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v1, "protocolSearchInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Za:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v1, "threadTopic"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Zb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v1, "syncData"

    iget-object v2, p0, Lcom/android/emailcommon/provider/g;->Zc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v1, "mainMailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/g;->YS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    return-object v0
.end method
